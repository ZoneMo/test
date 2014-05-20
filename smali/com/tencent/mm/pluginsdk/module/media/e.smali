.class final Lcom/tencent/mm/pluginsdk/module/media/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field cWZ:Z

.field final dyR:F

.field fiI:I

.field final synthetic fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

.field fjc:Landroid/graphics/Rect;

.field fjd:Landroid/graphics/Rect;

.field fje:Ljava/util/List;

.field fjf:Ljava/util/Map;

.field fjg:Landroid/graphics/Paint;

.field fjh:Landroid/graphics/Paint;

.field final fji:I

.field final fjj:I

.field final fjk:F

.field final fjl:F

.field fjm:J

.field fjn:I

.field fjo:I

.field fjp:I

.field fjq:I

.field fjr:I

.field fjs:I

.field fjt:I

.field fju:F

.field fjv:F

.field fjw:F

.field fjx:F

.field fjy:I

.field fjz:I

.field final shadowColor:I


# direct methods
.method public constructor <init>(Lcom/tencent/mm/pluginsdk/module/media/LyricView;J)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0xff

    const/16 v6, 0x12

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    .line 341
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 318
    iput-boolean v5, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->cWZ:Z

    .line 319
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjc:Landroid/graphics/Rect;

    .line 320
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjd:Landroid/graphics/Rect;

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fje:Ljava/util/List;

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjf:Ljava/util/Map;

    .line 323
    iput-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjg:Landroid/graphics/Paint;

    .line 324
    iput-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjh:Landroid/graphics/Paint;

    .line 329
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjm:J

    .line 343
    iput-wide p2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjm:J

    .line 344
    iput v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->dyR:F

    .line 345
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjk:F

    .line 346
    iput v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjl:F

    .line 347
    const/high16 v0, -0x100

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->shadowColor:I

    .line 349
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjg:Landroid/graphics/Paint;

    .line 350
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjg:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 351
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjg:Landroid/graphics/Paint;

    const v1, -0x3d3d3e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjg:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 353
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjg:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 354
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjg:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 355
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjg:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->dyR:F

    iget v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjk:F

    iget v3, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjl:F

    iget v4, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->shadowColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 357
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjh:Landroid/graphics/Paint;

    .line 358
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjh:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 359
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjh:Landroid/graphics/Paint;

    const v1, -0x989391

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjh:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 361
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjh:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 362
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjh:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 363
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjh:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->dyR:F

    iget v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjk:F

    iget v3, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjl:F

    iget v4, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->shadowColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 365
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 366
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjg:Landroid/graphics/Paint;

    const-string v2, "calculate text height"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 367
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fji:I

    .line 368
    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fji:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjj:I

    .line 369
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;IIZ)F
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x437f

    .line 524
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 525
    :cond_0
    const-string v0, "MicroMsg.LrcView"

    const-string v1, "autoDrawText: canvas or paint is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const/4 v0, 0x0

    .line 586
    :goto_0
    return v0

    .line 529
    :cond_1
    invoke-virtual {p4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjz:I

    .line 531
    if-eqz p7, :cond_5

    .line 533
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fje:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v2, p3

    move v0, p6

    :goto_1
    if-ltz v3, :cond_3

    .line 535
    iget v1, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjs:I

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_2

    .line 536
    mul-float v0, v5, v2

    iget v1, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjs:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 539
    :cond_2
    iget v1, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjt:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_9

    .line 540
    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjr:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    mul-float/2addr v0, v5

    iget v1, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjr:I

    iget v4, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjt:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v0

    .line 544
    :goto_2
    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 545
    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 546
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fje:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, p2, v2, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 549
    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjj:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    .line 550
    iget v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjq:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-lez v2, :cond_4

    .line 551
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 555
    :cond_4
    iget v1, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjj:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 585
    :goto_3
    iget v1, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjz:I

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 559
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fje:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 561
    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjs:I

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_6

    .line 562
    mul-float v0, v5, p3

    iget v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjs:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int p6, v0

    .line 565
    :cond_6
    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjt:I

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_7

    .line 566
    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjr:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    mul-float/2addr v0, v5

    iget v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjr:I

    iget v3, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjt:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int p6, v0

    .line 570
    :cond_7
    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 571
    invoke-virtual {p4, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 572
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fje:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 575
    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjj:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    .line 576
    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjr:I

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-gez v0, :cond_8

    .line 577
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 581
    :cond_8
    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjj:I

    int-to-float v0, v0

    sub-float v0, p3, v0

    goto :goto_3

    :cond_9
    move v1, v0

    goto/16 :goto_2
.end method

.method private a(ILjava/lang/String;Landroid/graphics/Paint;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 470
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 471
    :cond_0
    const-string v0, "MicroMsg.LrcView"

    const-string v1, "get auto fix text, text, canvas or paint is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_1
    :goto_0
    return-object p2

    .line 474
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    if-lez v0, :cond_5

    .line 475
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjd:Landroid/graphics/Rect;

    invoke-virtual {p3, p2, v5, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 476
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjd:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v1, p1, :cond_4

    .line 477
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 483
    invoke-virtual {p2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 484
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 485
    const/16 v1, 0x9

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 486
    if-gez v0, :cond_3

    if-gez v1, :cond_3

    .line 487
    const-string v0, "MicroMsg.LrcView"

    const-string v1, "do not contains \' \' or \'\t\'"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_3
    const-string v2, "MicroMsg.LrcView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "contains \' \', index blank space["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] tab["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 474
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 494
    :cond_5
    const-string v0, "MicroMsg.LrcView"

    const-string v1, "can not get auto fix text"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 500
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 501
    :cond_0
    const-string v0, "MicroMsg.LrcView"

    const-string v1, "get fit text list, text, canvas or paint is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :goto_0
    return-void

    .line 505
    :cond_1
    const-string v0, "%s%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 506
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjf:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 507
    if-eqz v0, :cond_2

    .line 509
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fje:Ljava/util/List;

    goto :goto_0

    .line 512
    :cond_2
    const-string v0, ""

    .line 513
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fje:Ljava/util/List;

    .line 515
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 516
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/tencent/mm/pluginsdk/module/media/e;->a(ILjava/lang/String;Landroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v0

    .line 517
    const-string v2, "MicroMsg.LrcView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "do text["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] temp text["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fje:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 520
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjf:Ljava/util/Map;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fje:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const/high16 v12, 0x437f

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 374
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->cWZ:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->e(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Lcom/tencent/mm/pluginsdk/module/media/a;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 376
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->f(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->f(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 379
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 380
    if-nez v1, :cond_2

    const-string v0, "MicroMsg.LrcView"

    const-string v2, "renderBG, but canvas is null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_1
    iget-wide v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjm:J

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->e(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Lcom/tencent/mm/pluginsdk/module/media/a;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_0
    const-string v0, "MicroMsg.LrcView"

    const-string v2, "render lrc: but canvas or lrcMgr is null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_2
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    .line 380
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->c(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->g(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->b(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->c(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjc:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_4

    const/high16 v0, -0x100

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->d(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    :try_start_3
    const-string v1, "MicroMsg.LrcView"

    const-string v2, "draw run catch exception %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->cWZ:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 381
    :cond_5
    :try_start_4
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjn:I

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjo:I

    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjn:I

    iget v4, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fji:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjp:I

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjq:I

    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjq:I

    mul-int/lit8 v0, v0, 0x7

    iget v4, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fji:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjr:I

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjs:I

    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjs:I

    mul-int/lit8 v0, v0, 0x3

    iget v4, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fji:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjt:I

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->e(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Lcom/tencent/mm/pluginsdk/module/media/a;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/pluginsdk/module/media/a;->bE(J)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fiI:I

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->e(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Lcom/tencent/mm/pluginsdk/module/media/a;

    move-result-object v0

    iget v4, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fiI:I

    invoke-virtual {v0, v4}, Lcom/tencent/mm/pluginsdk/module/media/a;->kd(I)Lcom/tencent/mm/pluginsdk/module/media/b;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/module/media/b;->content:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjg:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v0, v4}, Lcom/tencent/mm/pluginsdk/module/media/e;->a(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->e(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Lcom/tencent/mm/pluginsdk/module/media/a;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fje:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjj:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v4, v2, v3}, Lcom/tencent/mm/pluginsdk/module/media/a;->a(FJ)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fju:F

    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjp:I

    int-to-float v0, v0

    iget v4, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fju:F

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-static {v5}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->e(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Lcom/tencent/mm/pluginsdk/module/media/a;

    move-result-object v5

    iget v6, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fiI:I

    invoke-virtual {v5, v6}, Lcom/tencent/mm/pluginsdk/module/media/a;->kd(I)Lcom/tencent/mm/pluginsdk/module/media/b;

    move-result-object v5

    iget-wide v5, v5, Lcom/tencent/mm/pluginsdk/module/media/b;->timestamp:J

    sub-long/2addr v2, v5

    long-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjv:F

    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjo:I

    int-to-float v2, v0

    iget v3, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjv:F

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjg:Landroid/graphics/Paint;

    const v5, -0x3d3d3e

    const/16 v6, 0xff

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/pluginsdk/module/media/e;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;IIZ)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjw:F

    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjv:F

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjx:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjy:I

    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fiI:I

    add-int/lit8 v0, v0, -0x1

    move v10, v0

    :goto_3
    if-ltz v10, :cond_7

    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjx:F

    iget v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjj:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjx:F

    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjx:F

    iget v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjq:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjx:F

    iget v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjs:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    const/16 v0, 0xff

    iget v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjx:F

    iget v3, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjq:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v12

    iget v3, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjq:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjy:I

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->e(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Lcom/tencent/mm/pluginsdk/module/media/a;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/tencent/mm/pluginsdk/module/media/a;->kd(I)Lcom/tencent/mm/pluginsdk/module/media/b;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/module/media/b;->content:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjh:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v0, v2}, Lcom/tencent/mm/pluginsdk/module/media/e;->a(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjo:I

    int-to-float v2, v0

    iget v3, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjx:F

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjh:Landroid/graphics/Paint;

    const v5, -0x989391

    iget v6, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjy:I

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/pluginsdk/module/media/e;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;IIZ)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjx:F

    add-int/lit8 v0, v10, -0x1

    move v10, v0

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjw:F

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjx:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjy:I

    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fiI:I

    add-int/lit8 v0, v0, 0x1

    move v10, v0

    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->e(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Lcom/tencent/mm/pluginsdk/module/media/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/a;->aqy()I

    move-result v0

    if-ge v10, v0, :cond_1

    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjx:F

    iget v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjj:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjx:F

    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjx:F

    iget v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjr:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjx:F

    iget v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjt:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    const/16 v0, 0xff

    iget v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjr:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjx:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v12

    iget v3, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjq:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjy:I

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->e(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Lcom/tencent/mm/pluginsdk/module/media/a;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/tencent/mm/pluginsdk/module/media/a;->kd(I)Lcom/tencent/mm/pluginsdk/module/media/b;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/module/media/b;->content:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjh:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v0, v2}, Lcom/tencent/mm/pluginsdk/module/media/e;->a(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjo:I

    int-to-float v2, v0

    iget v3, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjx:F

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjh:Landroid/graphics/Paint;

    const v5, -0x989391

    iget v6, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjy:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/pluginsdk/module/media/e;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;IIZ)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fjx:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_4

    .line 389
    :cond_9
    const-string v1, "MicroMsg.LrcView"

    const-string v2, "quit draw lrc thread, run %B, lrcMgr is null ? %B"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->cWZ:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v9

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->fja:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->e(Lcom/tencent/mm/pluginsdk/module/media/LyricView;)Lcom/tencent/mm/pluginsdk/module/media/a;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v8

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    iput-boolean v9, p0, Lcom/tencent/mm/pluginsdk/module/media/e;->cWZ:Z

    .line 391
    return-void

    :cond_a
    move v0, v9

    .line 389
    goto :goto_5
.end method
