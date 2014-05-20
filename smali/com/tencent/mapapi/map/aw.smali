.class final Lcom/tencent/mapapi/map/aw;
.super Lcom/tencent/mapapi/map/ad;
.source "SourceFile"


# instance fields
.field Ud:I

.field Ui:[B

.field Uk:Z

.field VX:Z

.field private WA:Ljava/util/List;

.field private WB:Ljava/util/List;

.field private WC:Ljava/util/List;

.field WD:Landroid/graphics/PaintFlagsDrawFilter;

.field private Wz:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/tencent/mapapi/map/ad;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/tencent/mapapi/map/aw;->Wz:Ljava/util/List;

    .line 29
    iput-object v1, p0, Lcom/tencent/mapapi/map/aw;->WA:Ljava/util/List;

    .line 30
    iput-object v1, p0, Lcom/tencent/mapapi/map/aw;->WB:Ljava/util/List;

    .line 31
    iput-object v1, p0, Lcom/tencent/mapapi/map/aw;->WC:Ljava/util/List;

    .line 33
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/tencent/mapapi/map/aw;->Ui:[B

    .line 34
    iput-boolean v2, p0, Lcom/tencent/mapapi/map/aw;->Uk:Z

    .line 35
    iput-object v1, p0, Lcom/tencent/mapapi/map/aw;->WD:Landroid/graphics/PaintFlagsDrawFilter;

    .line 37
    iput v2, p0, Lcom/tencent/mapapi/map/aw;->Ud:I

    .line 38
    iput-boolean v2, p0, Lcom/tencent/mapapi/map/aw;->VX:Z

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;IZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 597
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 654
    :cond_0
    return-void

    .line 601
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mapapi/map/aw;->Vw:Z

    if-eqz v0, :cond_0

    .line 604
    iget v0, p0, Lcom/tencent/mapapi/map/aw;->VL:I

    if-gt p3, v0, :cond_0

    iget v0, p0, Lcom/tencent/mapapi/map/aw;->VM:I

    if-lt p3, v0, :cond_0

    .line 608
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 609
    if-lez v3, :cond_0

    move v1, v2

    .line 618
    :goto_0
    if-ge v1, v3, :cond_0

    .line 619
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ab;

    .line 620
    if-eqz v0, :cond_3

    .line 621
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    iget v5, v0, Lcom/tencent/mapapi/map/ab;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 625
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    iget v5, v0, Lcom/tencent/mapapi/map/ab;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 627
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget v5, v0, Lcom/tencent/mapapi/map/ab;->Uc:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    iget-object v5, p0, Lcom/tencent/mapapi/map/aw;->Wd:Lcom/tencent/mapapi/map/an;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/tencent/mapapi/map/an;->ao(Ljava/lang/String;)Lcom/tencent/mapapi/map/ap;

    move-result-object v4

    .line 631
    new-instance v5, Lcom/tencent/mapapi/map/ac;

    iget v6, v0, Lcom/tencent/mapapi/map/ab;->a:I

    iget v7, v0, Lcom/tencent/mapapi/map/ab;->b:I

    iget v8, v0, Lcom/tencent/mapapi/map/ab;->Uc:I

    invoke-direct {v5, v6, v7, v8}, Lcom/tencent/mapapi/map/ac;-><init>(III)V

    .line 634
    if-eqz v4, :cond_2

    .line 636
    iget-object v4, v4, Lcom/tencent/mapapi/map/ap;->Wu:Landroid/graphics/Bitmap;

    iput-object v4, v5, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    .line 637
    :cond_2
    iget v4, v0, Lcom/tencent/mapapi/map/ab;->VZ:F

    iput v4, v5, Lcom/tencent/mapapi/map/ac;->VZ:F

    .line 640
    iget v4, v0, Lcom/tencent/mapapi/map/ab;->Wa:F

    iput v4, v5, Lcom/tencent/mapapi/map/ac;->Wa:F

    .line 641
    iget-object v4, p0, Lcom/tencent/mapapi/map/aw;->WA:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    if-nez p4, :cond_3

    iget-object v4, v5, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    .line 644
    new-instance v4, Lcom/tencent/mapapi/map/aa;

    iget v5, v0, Lcom/tencent/mapapi/map/ab;->a:I

    iget v6, v0, Lcom/tencent/mapapi/map/ab;->b:I

    iget v0, v0, Lcom/tencent/mapapi/map/ab;->Uc:I

    invoke-direct {v4, v5, v6, v0}, Lcom/tencent/mapapi/map/aa;-><init>(III)V

    .line 648
    invoke-interface {p2, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 649
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private c(Lcom/tencent/mapapi/map/aa;)Z
    .locals 2
    .parameter

    .prologue
    .line 356
    iget-object v1, p0, Lcom/tencent/mapapi/map/aw;->Ui:[B

    monitor-enter v1

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WB:Ljava/util/List;

    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x0

    monitor-exit v1

    .line 362
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d(Ljava/util/List;)V
    .locals 5
    .parameter

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/tencent/mapapi/map/aw;->Ui:[B

    monitor-enter v2

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WC:Ljava/util/List;

    if-nez v0, :cond_1

    .line 284
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 286
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 290
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 292
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 294
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/aa;

    .line 295
    if-eqz v0, :cond_2

    .line 297
    iget-object v4, p0, Lcom/tencent/mapapi/map/aw;->WB:Ljava/util/List;

    invoke-static {v4, v0}, Lcom/tencent/mapapi/map/aw;->a(Ljava/util/List;Lcom/tencent/mapapi/map/aa;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 301
    iget-object v4, p0, Lcom/tencent/mapapi/map/aw;->WC:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 304
    :cond_3
    invoke-direct {p0}, Lcom/tencent/mapapi/map/aw;->ms()V

    .line 305
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private mK()Lcom/tencent/mapapi/map/aa;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 309
    .line 311
    iget-object v1, p0, Lcom/tencent/mapapi/map/aw;->Ui:[B

    monitor-enter v1

    .line 313
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mapapi/map/aw;->WC:Ljava/util/List;

    if-nez v2, :cond_1

    .line 314
    monitor-exit v1

    .line 328
    :cond_0
    :goto_0
    return-object v0

    .line 316
    :cond_1
    iget-object v2, p0, Lcom/tencent/mapapi/map/aw;->WC:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 317
    if-gtz v2, :cond_2

    .line 318
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 320
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WC:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/aa;

    .line 321
    iget-object v2, p0, Lcom/tencent/mapapi/map/aw;->WB:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/mapapi/map/aw;->WB:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/tencent/mapapi/map/aw;->WB:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_3
    iget-object v2, p0, Lcom/tencent/mapapi/map/aw;->WC:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 323
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    if-lez v2, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/tencent/mapapi/map/aw;->ms()V

    goto :goto_0
.end method

.method private ms()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/be;->mN()V

    .line 339
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WD:Landroid/graphics/PaintFlagsDrawFilter;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/aw;->WD:Landroid/graphics/PaintFlagsDrawFilter;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WD:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 131
    invoke-super {p0, p1}, Lcom/tencent/mapapi/map/ad;->a(Landroid/graphics/Canvas;)V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 133
    return-void
.end method

.method protected final a(Ljava/util/ArrayList;Z)V
    .locals 20
    .parameter
    .parameter

    .prologue
    .line 369
    if-nez p1, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v3}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v4, v4, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v4}, Lcom/tencent/mapapi/map/bm;->mU()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v5, v5, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v5}, Lcom/tencent/mapapi/map/bm;->mE()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v6, v6, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v6}, Lcom/tencent/mapapi/map/bm;->mR()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/tencent/mapapi/map/bo;->a(IIIF)Ljava/util/ArrayList;

    move-result-object p1

    .line 380
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/aw;->Wf:Ljava/util/List;

    invoke-static {v2}, Lcom/tencent/mapapi/map/aw;->b(Ljava/util/List;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/aw;->WA:Ljava/util/List;

    invoke-static {v2}, Lcom/tencent/mapapi/map/aw;->b(Ljava/util/List;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/aw;->Wi:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 384
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/mapapi/map/aw;->Ud:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/aw;->Wz:Ljava/util/List;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/aw;->Wz:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v2}, Lcom/tencent/mapapi/map/bm;->mR()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v2}, Lcom/tencent/mapapi/map/bo;->mY()Landroid/graphics/Point;

    move-result-object v16

    const/4 v9, -0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v10, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/aw;->Wz:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mapapi/map/ac;

    if-eqz v2, :cond_1c

    iget v11, v2, Lcom/tencent/mapapi/map/ac;->Uc:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v12, v12, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget v12, v12, Lcom/tencent/mapapi/map/bo;->Um:I

    if-ne v11, v12, :cond_3

    const/4 v11, 0x0

    iput-object v11, v2, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/aw;->Wz:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v8, -0x1

    add-int/lit8 v8, v14, -0x1

    move/from16 v19, v9

    move v9, v8

    move/from16 v8, v19

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v14, v9

    move v9, v8

    move v8, v2

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/mapapi/map/aw;->Wd:Lcom/tencent/mapapi/map/an;

    invoke-virtual {v2}, Lcom/tencent/mapapi/map/ac;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/tencent/mapapi/map/an;->ao(Ljava/lang/String;)Lcom/tencent/mapapi/map/ap;

    move-result-object v11

    if-nez v11, :cond_4

    const/4 v11, 0x0

    iput-object v11, v2, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/aw;->Wz:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v8, -0x1

    add-int/lit8 v8, v14, -0x1

    move/from16 v19, v9

    move v9, v8

    move/from16 v8, v19

    goto :goto_2

    :cond_4
    iget-object v11, v11, Lcom/tencent/mapapi/map/ap;->Wu:Landroid/graphics/Bitmap;

    iput-object v11, v2, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    iget v11, v2, Lcom/tencent/mapapi/map/ac;->Uc:I

    if-eq v9, v11, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v4, v4, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v4}, Lcom/tencent/mapapi/map/bo;->mZ()Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v4

    iget v5, v2, Lcom/tencent/mapapi/map/ac;->Uc:I

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mapapi/map/bo;->a(Lcom/tencent/mapapi/map/GeoPoint;I)Landroid/graphics/PointF;

    move-result-object v12

    iget v3, v12, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x4380

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v11, v3

    iget v3, v12, Landroid/graphics/PointF;->y:F

    const/high16 v4, 0x4380

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v5, v3

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v12, Landroid/graphics/PointF;->x:F

    const/high16 v6, 0x4380

    rem-float/2addr v4, v6

    sub-float v10, v3, v4

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/high16 v4, 0x4380

    iget v6, v12, Landroid/graphics/PointF;->y:F

    const/high16 v7, 0x4380

    rem-float/2addr v6, v7

    sub-float/2addr v4, v6

    sub-float v9, v3, v4

    iget v13, v2, Lcom/tencent/mapapi/map/ac;->Uc:I

    const-wide/high16 v3, 0x4000

    iget v6, v2, Lcom/tencent/mapapi/map/ac;->Uc:I

    add-int/lit8 v6, v6, 0x1

    int-to-double v6, v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v4, v3

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    if-eqz v2, :cond_5

    if-eqz v12, :cond_5

    if-nez v11, :cond_20

    move v6, v4

    :goto_4
    if-nez v5, :cond_1f

    move v3, v4

    :goto_5
    iget v7, v2, Lcom/tencent/mapapi/map/ab;->a:I

    sub-int/2addr v7, v6

    if-gez v7, :cond_1e

    add-int v6, v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_1e

    :goto_6
    iget v7, v2, Lcom/tencent/mapapi/map/ab;->b:I

    sub-int/2addr v7, v3

    if-gez v7, :cond_1d

    add-int v3, v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    if-ge v3, v0, :cond_1d

    :goto_7
    mul-int/lit16 v6, v6, 0x100

    int-to-float v6, v6

    add-float/2addr v6, v10

    iput v6, v2, Lcom/tencent/mapapi/map/ab;->VZ:F

    mul-int/lit16 v3, v3, 0x100

    int-to-float v3, v3

    sub-float v3, v9, v3

    iput v3, v2, Lcom/tencent/mapapi/map/ab;->Wa:F

    :cond_5
    iget v3, v2, Lcom/tencent/mapapi/map/ac;->Uc:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v6, v6, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget v6, v6, Lcom/tencent/mapapi/map/bo;->Um:I

    sub-int v3, v6, v3

    const-wide/high16 v6, 0x4000

    int-to-double v0, v3

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    iget v3, v2, Lcom/tencent/mapapi/map/ac;->VZ:F

    iget v7, v2, Lcom/tencent/mapapi/map/ac;->Wa:F

    mul-float v17, v15, v6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v3, v3, v18

    mul-float v3, v3, v17

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v3, v3, v17

    mul-float v17, v15, v6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v7, v7, v18

    mul-float v7, v7, v17

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v7, v7, v17

    const/high16 v17, 0x4380

    mul-float v17, v17, v15

    mul-float v17, v17, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/tencent/mapapi/map/bm;->mU()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v3, v18

    if-gtz v18, :cond_6

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v18, v0

    cmpg-float v3, v3, v18

    if-gez v3, :cond_7

    :cond_6
    const/4 v3, 0x0

    :goto_8
    iput v6, v2, Lcom/tencent/mapapi/map/ac;->h:F

    iput-boolean v3, v2, Lcom/tencent/mapapi/map/ac;->Wc:Z

    iget-boolean v3, v2, Lcom/tencent/mapapi/map/ac;->Wc:Z

    if-nez v3, :cond_a

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    move v2, v8

    move v3, v9

    move v6, v11

    move-object v7, v12

    move v8, v13

    move v9, v14

    move/from16 v19, v10

    move v10, v5

    move/from16 v5, v19

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v3}, Lcom/tencent/mapapi/map/bm;->mE()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v7, v3

    if-gtz v3, :cond_8

    move/from16 v0, v17

    neg-float v3, v0

    cmpg-float v3, v7, v3

    if-gez v3, :cond_9

    :cond_8
    const/4 v3, 0x0

    goto :goto_8

    :cond_9
    const/4 v3, 0x1

    goto :goto_8

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/mapapi/map/aw;->Ud:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/mapapi/map/aw;->Ud:I

    move v2, v8

    move v3, v9

    move v6, v11

    move-object v7, v12

    move v8, v13

    move v9, v14

    move/from16 v19, v10

    move v10, v5

    move/from16 v5, v19

    goto/16 :goto_2

    .line 385
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iget-boolean v6, v2, Lcom/tencent/mapapi/map/bm;->c:Z

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v2}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/tencent/mapapi/map/aw;->Uk:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/tencent/mapapi/map/aw;->VX:Z

    if-nez p1, :cond_10

    const/4 v2, 0x0

    move-object v3, v2

    .line 390
    :cond_c
    :goto_9
    const/4 v2, 0x1

    if-ne v6, v2, :cond_e

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v2}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    .line 393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v4, v4, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v4}, Lcom/tencent/mapapi/map/bm;->mT()I

    move-result v4

    if-ge v2, v4, :cond_d

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v2}, Lcom/tencent/mapapi/map/bm;->mT()I

    move-result v2

    .line 397
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v4, v4, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v4}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v4

    if-eq v2, v4, :cond_e

    .line 399
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v4, v4, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v5, v5, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v5}, Lcom/tencent/mapapi/map/bm;->mU()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v6, v6, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v6}, Lcom/tencent/mapapi/map/bm;->mE()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v7, v7, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v7}, Lcom/tencent/mapapi/map/bm;->mR()F

    invoke-virtual {v4, v2, v5, v6}, Lcom/tencent/mapapi/map/bo;->h(III)Ljava/util/ArrayList;

    move-result-object v4

    .line 403
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/tencent/mapapi/map/aw;->a(Ljava/util/List;Ljava/util/List;IZ)V

    .line 407
    :cond_e
    if-eqz v3, :cond_f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 409
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mapapi/map/aw;->WI:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1a

    .line 411
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/mapapi/map/aw;->c(Ljava/util/List;)V

    .line 412
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/tencent/mapapi/map/aw;->d(Ljava/util/List;)V

    .line 419
    :cond_f
    :goto_a
    if-eqz v3, :cond_0

    .line 420
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 387
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/mapapi/map/aw;->Vw:Z

    if-nez v3, :cond_11

    const/4 v2, 0x0

    move-object v3, v2

    goto/16 :goto_9

    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/mapapi/map/aw;->VL:I

    if-gt v2, v3, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/mapapi/map/aw;->VM:I

    if-ge v2, v3, :cond_13

    :cond_12
    const/4 v2, 0x0

    move-object v3, v2

    goto/16 :goto_9

    :cond_13
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_14

    const/4 v2, 0x0

    move-object v3, v2

    goto/16 :goto_9

    :cond_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v4, v2

    :goto_b
    if-ge v4, v7, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mapapi/map/ab;

    if-eqz v2, :cond_17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v2, Lcom/tencent/mapapi/map/ab;->a:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/tencent/mapapi/map/ab;->b:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/tencent/mapapi/map/ab;->Uc:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/mapapi/map/aw;->Wd:Lcom/tencent/mapapi/map/an;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/tencent/mapapi/map/an;->ao(Ljava/lang/String;)Lcom/tencent/mapapi/map/ap;

    move-result-object v5

    new-instance v8, Lcom/tencent/mapapi/map/ac;

    iget v9, v2, Lcom/tencent/mapapi/map/ab;->a:I

    iget v10, v2, Lcom/tencent/mapapi/map/ab;->b:I

    iget v11, v2, Lcom/tencent/mapapi/map/ab;->Uc:I

    invoke-direct {v8, v9, v10, v11}, Lcom/tencent/mapapi/map/ac;-><init>(III)V

    iget v9, v2, Lcom/tencent/mapapi/map/ab;->VZ:F

    iput v9, v8, Lcom/tencent/mapapi/map/ac;->VZ:F

    iget v9, v2, Lcom/tencent/mapapi/map/ab;->Wa:F

    iput v9, v8, Lcom/tencent/mapapi/map/ac;->Wa:F

    if-eqz v5, :cond_18

    iget-object v5, v5, Lcom/tencent/mapapi/map/ap;->Wu:Landroid/graphics/Bitmap;

    iput-object v5, v8, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    :cond_15
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mapapi/map/aw;->Wf:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v8, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    if-nez v5, :cond_19

    const/4 v5, 0x1

    :goto_d
    const/4 v8, 0x1

    if-ne v5, v8, :cond_16

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/tencent/mapapi/map/aw;->Uk:Z

    :cond_16
    if-nez p2, :cond_17

    const/4 v8, 0x1

    if-ne v5, v8, :cond_17

    new-instance v5, Lcom/tencent/mapapi/map/aa;

    iget v8, v2, Lcom/tencent/mapapi/map/ab;->a:I

    iget v9, v2, Lcom/tencent/mapapi/map/ab;->b:I

    iget v2, v2, Lcom/tencent/mapapi/map/ab;->Uc:I

    invoke-direct {v5, v8, v9, v2}, Lcom/tencent/mapapi/map/aa;-><init>(III)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/tencent/mapapi/map/aw;->VX:Z

    const/4 v9, 0x1

    if-ne v5, v9, :cond_15

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/tencent/mapapi/map/aw;->VX:Z

    goto :goto_c

    :cond_19
    const/4 v5, 0x0

    goto :goto_d

    .line 416
    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tencent/mapapi/map/aw;->c(Ljava/util/List;)V

    goto/16 :goto_a

    :cond_1b
    move v11, v6

    move-object v12, v7

    move v13, v9

    move v9, v3

    move/from16 v19, v5

    move v5, v10

    move/from16 v10, v19

    goto/16 :goto_3

    :cond_1c
    move v2, v8

    move v8, v9

    move v9, v14

    goto/16 :goto_2

    :cond_1d
    move v3, v7

    goto/16 :goto_7

    :cond_1e
    move v6, v7

    goto/16 :goto_6

    :cond_1f
    move v3, v5

    goto/16 :goto_5

    :cond_20
    move v6, v11

    goto/16 :goto_4
.end method

.method protected final b(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 138
    iget-boolean v0, p0, Lcom/tencent/mapapi/map/aw;->VX:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->Wz:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->Wz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bo;->mY()Landroid/graphics/Point;

    move-result-object v4

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_3

    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->Wz:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ac;

    if-eqz v0, :cond_2

    iget-boolean v5, v0, Lcom/tencent/mapapi/map/ac;->Wc:Z

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    iget v6, v0, Lcom/tencent/mapapi/map/ac;->h:F

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iget v8, v4, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v7, v6, v6, v8, v9}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget v6, v0, Lcom/tencent/mapapi/map/ac;->VZ:F

    iget v0, v0, Lcom/tencent/mapapi/map/ac;->Wa:F

    invoke-virtual {p1, v5, v6, v0, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 143
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/mapapi/map/aw;->Uk:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 148
    if-lez v3, :cond_0

    .line 153
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 154
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WA:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ac;

    iget v0, v0, Lcom/tencent/mapapi/map/ac;->Uc:I

    .line 155
    iget-object v4, p0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v4, v4, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget v4, v4, Lcom/tencent/mapapi/map/bo;->Um:I

    sub-int v0, v4, v0

    .line 156
    const-wide/high16 v4, 0x4000

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    .line 158
    iget-object v4, p0, Lcom/tencent/mapapi/map/aw;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v4, v4, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v4}, Lcom/tencent/mapapi/map/bo;->mY()Landroid/graphics/Point;

    move-result-object v4

    .line 159
    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v0, v0, v5, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 161
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 167
    :goto_2
    if-ge v1, v3, :cond_6

    .line 168
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WA:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ac;

    .line 169
    if-eqz v0, :cond_5

    .line 170
    iget-object v2, v0, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    .line 173
    if-nez v2, :cond_4

    .line 175
    invoke-virtual {p0, v0}, Lcom/tencent/mapapi/map/aw;->a(Lcom/tencent/mapapi/map/ac;)V

    .line 176
    iget-object v2, v0, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    .line 178
    :cond_4
    if-eqz v2, :cond_5

    .line 180
    iget v4, v0, Lcom/tencent/mapapi/map/ac;->VZ:F

    iget v0, v0, Lcom/tencent/mapapi/map/ac;->Wa:F

    invoke-virtual {p1, v2, v4, v0, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 181
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 186
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 42
    if-ne p0, p1, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    .line 45
    :cond_0
    instance-of v0, p1, Lcom/tencent/mapapi/map/aw;

    if-nez v0, :cond_1

    .line 46
    const/4 v0, 0x0

    goto :goto_0

    .line 48
    :cond_1
    check-cast p1, Lcom/tencent/mapapi/map/aw;

    .line 50
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WG:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/mapapi/map/aw;->WG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/tencent/mapapi/map/aw;->p:I

    return v0
.end method

.method protected final lX()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/tencent/mapapi/map/ad;->lX()V

    .line 69
    iget-object v1, p0, Lcom/tencent/mapapi/map/aw;->Ui:[B

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final mB()V
    .locals 1

    .prologue
    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/aw;->Wf:Ljava/util/List;

    .line 661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/aw;->WA:Ljava/util/List;

    .line 662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/aw;->Wz:Ljava/util/List;

    .line 663
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/aw;->WB:Ljava/util/List;

    .line 664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/aw;->Wg:Ljava/util/List;

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/aw;->WC:Ljava/util/List;

    .line 667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/aw;->Wh:Ljava/util/List;

    .line 668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/aw;->Wi:Ljava/util/List;

    .line 670
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/mapapi/map/aw;->Ui:[B

    .line 671
    return-void
.end method

.method protected final mE()I
    .locals 1

    .prologue
    .line 676
    const/16 v0, 0x10

    return v0
.end method

.method protected final mF()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 682
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->Wz:Ljava/util/List;

    if-nez v0, :cond_0

    .line 726
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 688
    if-lez v3, :cond_2

    move v2, v1

    .line 690
    :goto_1
    if-ge v2, v3, :cond_2

    .line 691
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WA:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ac;

    .line 692
    if-eqz v0, :cond_1

    .line 693
    iget-object v4, v0, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 697
    iget-object v4, p0, Lcom/tencent/mapapi/map/aw;->Wz:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 701
    iget-object v4, p0, Lcom/tencent/mapapi/map/aw;->Wz:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 706
    :cond_2
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->Wf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 707
    if-lez v2, :cond_4

    .line 709
    :goto_2
    if-ge v1, v2, :cond_4

    .line 710
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->Wf:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ac;

    .line 711
    if-eqz v0, :cond_3

    .line 712
    iget-object v3, v0, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 716
    iget-object v3, p0, Lcom/tencent/mapapi/map/aw;->Wz:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 720
    iget-object v3, p0, Lcom/tencent/mapapi/map/aw;->Wz:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 724
    :cond_4
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->Wf:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/mapapi/map/aw;->b(Ljava/util/List;)V

    .line 725
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WA:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/mapapi/map/aw;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected final md()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-super {p0}, Lcom/tencent/mapapi/map/ad;->md()V

    .line 79
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->We:Lcom/tencent/mapapi/map/bc;

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/bc;->a(Lcom/tencent/mapapi/map/an;)V

    .line 81
    iget-object v1, p0, Lcom/tencent/mapapi/map/aw;->Ui:[B

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/aw;->WB:Ljava/util/List;

    .line 85
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/aw;->WC:Ljava/util/List;

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final me()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 191
    iget-boolean v0, p0, Lcom/tencent/mapapi/map/aw;->WF:Z

    if-ne v0, v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mapapi/map/aw;->mK()Lcom/tencent/mapapi/map/aa;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_0

    .line 198
    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 199
    :goto_1
    if-ne v0, v2, :cond_3

    .line 200
    invoke-virtual {p0, v1}, Lcom/tencent/mapapi/map/aw;->a(Lcom/tencent/mapapi/map/aa;)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->We:Lcom/tencent/mapapi/map/bc;

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/bc;->d(Lcom/tencent/mapapi/map/aa;)Z

    move-result v0

    invoke-direct {p0, v1}, Lcom/tencent/mapapi/map/aw;->c(Lcom/tencent/mapapi/map/aa;)Z

    goto :goto_1

    .line 202
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mapapi/map/aw;->a(Lcom/tencent/mapapi/map/aa;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/mapapi/map/aw;->WG:Ljava/lang/String;

    return-object v0
.end method
