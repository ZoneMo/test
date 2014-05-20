.class final Lcom/tencent/mm/ui/chatting/ma;
.super Lcom/tencent/mm/ui/chatting/cf;
.source "SourceFile"


# instance fields
.field gKg:Landroid/widget/TextView;

.field gMU:Landroid/widget/TextView;

.field gRJ:Landroid/widget/TextView;

.field gRK:Landroid/widget/TextView;

.field gRL:Lcom/tencent/mm/ui/base/AnimImageView;

.field gRM:Landroid/widget/FrameLayout;

.field gRN:Lcom/tencent/mm/ui/base/AnimImageView;

.field gRO:Landroid/widget/ProgressBar;

.field gRP:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;-><init>(I)V

    .line 370
    return-void
.end method

.method private static a(Lcom/tencent/mm/ui/chatting/ma;IIZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gKj:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gMU:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRM:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 515
    if-eqz p3, :cond_0

    .line 516
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRN:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/AnimImageView;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gKg:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRO:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRP:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static a(Lcom/tencent/mm/ui/chatting/ma;Lcom/tencent/mm/storage/ak;ILcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v11, 0x7f020175

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v5, 0x0

    .line 410
    if-nez p0, :cond_0

    .line 508
    :goto_0
    return-void

    .line 414
    :cond_0
    new-instance v1, Lcom/tencent/mm/modelvoice/bf;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/mm/modelvoice/bf;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bf;->getTime()J

    move-result-wide v2

    long-to-float v0, v2

    const/high16 v2, 0x447a

    div-float/2addr v0, v2

    const/high16 v2, 0x3f80

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    const/high16 v0, 0x3f80

    :cond_1
    const/high16 v2, 0x4120

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x4120

    div-float/2addr v0, v2

    .line 416
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    iget-object v4, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v4, v4, Lcom/tencent/mm/ui/chatting/es;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/chatting/v;->aIO()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_5

    .line 417
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-virtual {v2, v5}, Lcom/tencent/mm/ui/base/AnimImageView;->setVisibility(I)V

    .line 418
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/AnimImageView;->RC()V

    .line 424
    :goto_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v2

    if-nez v2, :cond_2

    .line 425
    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bf;->getTime()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_6

    .line 426
    invoke-static {p0, v5, v8, v9}, Lcom/tencent/mm/ui/chatting/ma;->a(Lcom/tencent/mm/ui/chatting/ma;IIZ)V

    .line 427
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ma;->gRN:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/AnimImageView;->RC()V

    .line 445
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v2

    if-ne v9, v2, :cond_3

    .line 447
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getStatus()I

    move-result v2

    if-ne v2, v9, :cond_8

    .line 448
    invoke-static {p0, v5, v8, v5}, Lcom/tencent/mm/ui/chatting/ma;->a(Lcom/tencent/mm/ui/chatting/ma;IIZ)V

    .line 463
    :cond_3
    :goto_3
    iget-object v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->dYp:Lcom/tencent/mm/pluginsdk/ui/g;

    if-eqz v0, :cond_4

    .line 464
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gMU:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->dYp:Lcom/tencent/mm/pluginsdk/ui/g;

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/ui/g;->aqT()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 465
    iget-object v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->dYp:Lcom/tencent/mm/pluginsdk/ui/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/g;->aqX()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 466
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gMU:Landroid/widget/TextView;

    const/high16 v1, 0x4000

    const v2, 0x3f99999a

    const v3, 0x3f99999a

    iget-object v4, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v4, v4, Lcom/tencent/mm/ui/chatting/es;->dYp:Lcom/tencent/mm/pluginsdk/ui/g;

    invoke-virtual {v4}, Lcom/tencent/mm/pluginsdk/ui/g;->aqU()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 471
    :goto_4
    iget-object v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->dYp:Lcom/tencent/mm/pluginsdk/ui/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/g;->aqV()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 472
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gMU:Landroid/widget/TextView;

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 483
    :cond_4
    :goto_5
    iget-object v7, p0, Lcom/tencent/mm/ui/chatting/ma;->gRK:Landroid/widget/TextView;

    new-instance v0, Lcom/tencent/mm/ui/chatting/kk;

    iget-boolean v2, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    const/4 v4, 0x0

    move-object v1, p1

    move v3, p2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IC)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRK:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRK:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 486
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCp()I

    move-result v0

    if-ne v0, v9, :cond_d

    .line 487
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRJ:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-nez v0, :cond_c

    .line 489
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    const v1, 0x7f020147

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/AnimImageView;->setBackgroundResource(I)V

    .line 490
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRK:Landroid/widget/TextView;

    const v1, 0x7f020147

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 420
    :cond_5
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-virtual {v2, v8}, Lcom/tencent/mm/ui/base/AnimImageView;->setVisibility(I)V

    .line 421
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/AnimImageView;->aGC()V

    goto/16 :goto_1

    .line 428
    :cond_6
    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bf;->getTime()J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_7

    .line 429
    invoke-static {p0, v8, v5, v9}, Lcom/tencent/mm/ui/chatting/ma;->a(Lcom/tencent/mm/ui/chatting/ma;IIZ)V

    .line 430
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ma;->gRN:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/AnimImageView;->aGC()V

    .line 431
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ma;->gRN:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-virtual {v2, v8}, Lcom/tencent/mm/ui/base/AnimImageView;->setVisibility(I)V

    .line 432
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ma;->gRK:Landroid/widget/TextView;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    .line 433
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ma;->gMU:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    float-to-int v3, v0

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/ma;->gX(I)I

    move-result v3

    invoke-static {p3, v3}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/base/AnimImageView;->setWidth(I)V

    goto/16 :goto_2

    .line 436
    :cond_7
    invoke-static {p0, v8, v5, v9}, Lcom/tencent/mm/ui/chatting/ma;->a(Lcom/tencent/mm/ui/chatting/ma;IIZ)V

    .line 437
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ma;->gRN:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/AnimImageView;->aGC()V

    .line 438
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ma;->gRN:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-virtual {v2, v8}, Lcom/tencent/mm/ui/base/AnimImageView;->setVisibility(I)V

    .line 439
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ma;->gMU:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ma;->gRK:Landroid/widget/TextView;

    float-to-int v3, v0

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/ma;->gX(I)I

    move-result v3

    invoke-static {p3, v3}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    .line 441
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ma;->gMU:Landroid/widget/TextView;

    const v3, 0x7f070072

    new-array v4, v9, [Ljava/lang/Object;

    float-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p3, v3, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    float-to-int v3, v0

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/ma;->gX(I)I

    move-result v3

    invoke-static {p3, v3}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/base/AnimImageView;->setWidth(I)V

    goto/16 :goto_2

    .line 449
    :cond_8
    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bf;->getTime()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    .line 450
    invoke-static {p0, v8, v5, v5}, Lcom/tencent/mm/ui/chatting/ma;->a(Lcom/tencent/mm/ui/chatting/ma;IIZ)V

    .line 451
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ma;->gRK:Landroid/widget/TextView;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 452
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ma;->gMU:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    float-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ma;->gX(I)I

    move-result v0

    invoke-static {p3, v0}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/AnimImageView;->setWidth(I)V

    goto/16 :goto_3

    .line 455
    :cond_9
    invoke-static {p0, v8, v5, v5}, Lcom/tencent/mm/ui/chatting/ma;->a(Lcom/tencent/mm/ui/chatting/ma;IIZ)V

    .line 456
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ma;->gMU:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ma;->gRK:Landroid/widget/TextView;

    float-to-int v2, v0

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/ma;->gX(I)I

    move-result v2

    invoke-static {p3, v2}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 458
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ma;->gMU:Landroid/widget/TextView;

    const v2, 0x7f070072

    new-array v3, v9, [Ljava/lang/Object;

    float-to-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p3, v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    float-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ma;->gX(I)I

    move-result v0

    invoke-static {p3, v0}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/AnimImageView;->setWidth(I)V

    goto/16 :goto_3

    .line 468
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gMU:Landroid/widget/TextView;

    invoke-virtual {v0, v10, v10, v10, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_4

    .line 474
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gMU:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_5

    .line 492
    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRP:Landroid/widget/TextView;

    const v1, 0x7f02017b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 493
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    const v1, 0x7f02017b

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/AnimImageView;->setBackgroundResource(I)V

    .line 494
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRK:Landroid/widget/TextView;

    const v1, 0x7f02017b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 497
    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRJ:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-nez v0, :cond_e

    .line 499
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/AnimImageView;->setBackgroundResource(I)V

    .line 500
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRK:Landroid/widget/TextView;

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 502
    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRP:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 503
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-virtual {v0, v11}, Lcom/tencent/mm/ui/base/AnimImageView;->setBackgroundResource(I)V

    .line 504
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRK:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private static gX(I)I
    .locals 1
    .parameter

    .prologue
    .line 535
    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    .line 538
    const/16 v0, 0x50

    .line 547
    :goto_0
    return v0

    .line 540
    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    .line 541
    add-int/lit8 v0, p0, -0x2

    mul-int/lit8 v0, v0, 0x9

    add-int/lit8 v0, v0, 0x50

    goto :goto_0

    .line 543
    :cond_1
    const/16 v0, 0x3c

    if-ge p0, v0, :cond_2

    .line 544
    div-int/lit8 v0, p0, 0xa

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x9

    add-int/lit8 v0, v0, 0x50

    goto :goto_0

    .line 547
    :cond_2
    const/16 v0, 0xcc

    goto :goto_0
.end method


# virtual methods
.method public final d(Landroid/view/View;Z)Lcom/tencent/mm/ui/chatting/cf;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 373
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;->as(Landroid/view/View;)V

    .line 374
    const v0, 0x7f0a0031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->dkq:Landroid/widget/TextView;

    .line 375
    const v0, 0x7f0a008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gMy:Landroid/widget/TextView;

    .line 377
    const v0, 0x7f0a0213

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRK:Landroid/widget/TextView;

    .line 378
    const v0, 0x7f0a0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->daW:Landroid/widget/CheckBox;

    .line 379
    const v0, 0x7f0a0034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->eyN:Landroid/view/View;

    .line 381
    const v0, 0x7f0a0215

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gKj:Landroid/widget/ImageView;

    .line 382
    const v0, 0x7f0a008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gMU:Landroid/widget/TextView;

    .line 383
    const v0, 0x7f0a0212

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRM:Landroid/widget/FrameLayout;

    .line 385
    const v0, 0x7f0a0210

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRJ:Landroid/widget/TextView;

    .line 387
    const v0, 0x7f0a0214

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/AnimImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    .line 388
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/AnimImageView;->aGA()V

    .line 389
    if-eqz p2, :cond_0

    .line 390
    const/4 v0, 0x6

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ma;->type:I

    .line 391
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/AnimImageView;->dn(Z)V

    .line 392
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-static {}, Lcom/tencent/mm/ui/base/AnimImageView;->aGB()V

    .line 393
    const v0, 0x7f0a01d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gKg:Landroid/widget/TextView;

    .line 394
    const v0, 0x7f0a0211

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/AnimImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRN:Lcom/tencent/mm/ui/base/AnimImageView;

    .line 395
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRN:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/AnimImageView;->dn(Z)V

    .line 396
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRN:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-static {}, Lcom/tencent/mm/ui/base/AnimImageView;->aGB()V

    .line 397
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRN:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/AnimImageView;->aGA()V

    .line 406
    :goto_0
    return-object p0

    .line 399
    :cond_0
    const v0, 0x7f0a0221

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRO:Landroid/widget/ProgressBar;

    .line 400
    const v0, 0x7f0a0220

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRP:Landroid/widget/TextView;

    .line 401
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/AnimImageView;->dn(Z)V

    .line 402
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    invoke-static {}, Lcom/tencent/mm/ui/base/AnimImageView;->aGB()V

    .line 403
    const/4 v0, 0x7

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ma;->type:I

    goto :goto_0
.end method
