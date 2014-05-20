.class public final Lcom/tencent/mm/protocal/a/ob;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public Tu:Ljava/lang/String;

.field public Tv:Ljava/lang/String;

.field public cqq:I

.field public cqr:Ljava/lang/String;

.field public cqs:I

.field public cqt:Ljava/lang/String;

.field public cqu:I

.field public cqv:I

.field public cqw:Ljava/lang/String;

.field public cqx:Ljava/lang/String;

.field public cqy:Ljava/lang/String;

.field public fAb:Ljava/lang/String;

.field public fDg:Ljava/lang/String;

.field public fDh:Ljava/lang/String;

.field public fEG:Lcom/tencent/mm/protocal/a/rw;

.field public fEH:Lcom/tencent/mm/protocal/a/rw;

.field public fEI:Lcom/tencent/mm/protocal/a/rw;

.field public fEj:I

.field public fEk:I

.field public fEp:I

.field public fEq:I

.field public fEr:Ljava/util/LinkedList;

.field public fEt:I

.field public fEu:I

.field public fEv:Ljava/lang/String;

.field public fKF:Lcom/tencent/mm/protocal/a/ce;

.field public fMl:Ljava/lang/String;

.field public fNa:Lcom/tencent/mm/protocal/a/rw;

.field public fNp:I

.field public fNq:Ljava/lang/String;

.field public fNr:Ljava/lang/String;

.field public fNs:Ljava/lang/String;

.field public fNt:I

.field public fNv:Lcom/tencent/mm/protocal/a/vp;

.field public fNw:Lcom/tencent/mm/protocal/a/dl;

.field public fOO:Lcom/tencent/mm/protocal/a/rw;

.field public fOP:Lcom/tencent/mm/protocal/a/rw;

.field public fOQ:Lcom/tencent/mm/protocal/a/rw;

.field public fOT:I

.field public fOY:Lcom/tencent/mm/protocal/a/rw;

.field public fOZ:I

.field public fPa:I

.field public fPb:Ljava/lang/String;

.field public fPc:Ljava/lang/String;

.field public fPd:Ljava/lang/String;

.field public fPe:Ljava/lang/String;

.field public fPf:Ljava/lang/String;

.field public fPg:Ljava/lang/String;

.field public fPh:Ljava/lang/String;

.field public fPi:Ljava/lang/String;

.field public fPj:Lcom/tencent/mm/protocal/a/m;

.field public fPk:I

.field public fPl:I

.field public fPm:I

.field public fPn:I

.field public fPo:Ljava/lang/String;

.field public fzV:I

.field public fzx:Lcom/tencent/mm/protocal/a/rv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEr:Ljava/util/LinkedList;

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ob;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 429
    packed-switch p2, :pswitch_data_0

    .line 859
    :goto_0
    :pswitch_0
    return v0

    .line 431
    :pswitch_1
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 432
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 433
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 434
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 435
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ob;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 438
    :goto_2
    if-eqz v0, :cond_0

    .line 439
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ob;->a(La/a/a/a/a;)I

    move-result v0

    .line 440
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_2

    .line 442
    :cond_0
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ob;->fEI:Lcom/tencent/mm/protocal/a/rw;

    .line 432
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 446
    goto :goto_0

    .line 449
    :pswitch_2
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 450
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 451
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 452
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 453
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ob;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 456
    :goto_4
    if-eqz v0, :cond_2

    .line 457
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ob;->a(La/a/a/a/a;)I

    move-result v0

    .line 458
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_4

    .line 460
    :cond_2
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ob;->fNa:Lcom/tencent/mm/protocal/a/rw;

    .line 450
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    .line 464
    goto :goto_0

    .line 467
    :pswitch_3
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 468
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_5
    if-ge v2, v4, :cond_5

    .line 469
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 470
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 471
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ob;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 474
    :goto_6
    if-eqz v0, :cond_4

    .line 475
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ob;->a(La/a/a/a/a;)I

    move-result v0

    .line 476
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_6

    .line 478
    :cond_4
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ob;->fEG:Lcom/tencent/mm/protocal/a/rw;

    .line 468
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_5
    move v0, v1

    .line 482
    goto/16 :goto_0

    .line 485
    :pswitch_4
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 486
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_7
    if-ge v2, v4, :cond_7

    .line 487
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 488
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 489
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ob;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 492
    :goto_8
    if-eqz v0, :cond_6

    .line 493
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ob;->a(La/a/a/a/a;)I

    move-result v0

    .line 494
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_8

    .line 496
    :cond_6
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ob;->fEH:Lcom/tencent/mm/protocal/a/rw;

    .line 486
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_7
    move v0, v1

    .line 500
    goto/16 :goto_0

    .line 503
    :pswitch_5
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->cqq:I

    move v0, v1

    .line 504
    goto/16 :goto_0

    .line 507
    :pswitch_6
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 508
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_9
    if-ge v2, v4, :cond_9

    .line 509
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 510
    new-instance v5, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    .line 511
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ob;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 514
    :goto_a
    if-eqz v0, :cond_8

    .line 515
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ob;->a(La/a/a/a/a;)I

    move-result v0

    .line 516
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rv;I)Z

    move-result v0

    goto :goto_a

    .line 518
    :cond_8
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ob;->fzx:Lcom/tencent/mm/protocal/a/rv;

    .line 508
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_9
    move v0, v1

    .line 522
    goto/16 :goto_0

    .line 525
    :pswitch_7
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->fEj:I

    move v0, v1

    .line 526
    goto/16 :goto_0

    .line 529
    :pswitch_8
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->fEk:I

    move v0, v1

    .line 530
    goto/16 :goto_0

    .line 533
    :pswitch_9
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->fOT:I

    move v0, v1

    .line 534
    goto/16 :goto_0

    .line 537
    :pswitch_a
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 538
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_b
    if-ge v2, v4, :cond_b

    .line 539
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 540
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 541
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ob;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 544
    :goto_c
    if-eqz v0, :cond_a

    .line 545
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ob;->a(La/a/a/a/a;)I

    move-result v0

    .line 546
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_c

    .line 548
    :cond_a
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ob;->fOO:Lcom/tencent/mm/protocal/a/rw;

    .line 538
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_b
    move v0, v1

    .line 552
    goto/16 :goto_0

    .line 555
    :pswitch_b
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 556
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_d
    if-ge v2, v4, :cond_d

    .line 557
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 558
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 559
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ob;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 562
    :goto_e
    if-eqz v0, :cond_c

    .line 563
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ob;->a(La/a/a/a/a;)I

    move-result v0

    .line 564
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_e

    .line 566
    :cond_c
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ob;->fOP:Lcom/tencent/mm/protocal/a/rw;

    .line 556
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    :cond_d
    move v0, v1

    .line 570
    goto/16 :goto_0

    .line 573
    :pswitch_c
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 574
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_f
    if-ge v2, v4, :cond_f

    .line 575
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 576
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 577
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ob;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 580
    :goto_10
    if-eqz v0, :cond_e

    .line 581
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ob;->a(La/a/a/a/a;)I

    move-result v0

    .line 582
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_10

    .line 584
    :cond_e
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ob;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    .line 574
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f

    :cond_f
    move v0, v1

    .line 588
    goto/16 :goto_0

    .line 591
    :pswitch_d
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->fEp:I

    move v0, v1

    .line 592
    goto/16 :goto_0

    .line 595
    :pswitch_e
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->fEq:I

    move v0, v1

    .line 596
    goto/16 :goto_0

    .line 599
    :pswitch_f
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 600
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_11
    if-ge v2, v4, :cond_11

    .line 601
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 602
    new-instance v5, Lcom/tencent/mm/protocal/a/ru;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/ru;-><init>()V

    .line 603
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ob;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 606
    :goto_12
    if-eqz v0, :cond_10

    .line 607
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ob;->a(La/a/a/a/a;)I

    move-result v0

    .line 608
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/ru;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ru;I)Z

    move-result v0

    goto :goto_12

    .line 610
    :cond_10
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fEr:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 600
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    :cond_11
    move v0, v1

    .line 614
    goto/16 :goto_0

    .line 617
    :pswitch_10
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 618
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_13
    if-ge v2, v4, :cond_13

    .line 619
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 620
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 621
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ob;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 624
    :goto_14
    if-eqz v0, :cond_12

    .line 625
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ob;->a(La/a/a/a/a;)I

    move-result v0

    .line 626
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_14

    .line 628
    :cond_12
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ob;->fOY:Lcom/tencent/mm/protocal/a/rw;

    .line 618
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    :cond_13
    move v0, v1

    .line 632
    goto/16 :goto_0

    .line 635
    :pswitch_11
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->fEt:I

    move v0, v1

    .line 636
    goto/16 :goto_0

    .line 639
    :pswitch_12
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->fEu:I

    move v0, v1

    .line 640
    goto/16 :goto_0

    .line 643
    :pswitch_13
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->Tu:Ljava/lang/String;

    move v0, v1

    .line 644
    goto/16 :goto_0

    .line 647
    :pswitch_14
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->Tv:Ljava/lang/String;

    move v0, v1

    .line 648
    goto/16 :goto_0

    .line 651
    :pswitch_15
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->cqr:Ljava/lang/String;

    move v0, v1

    .line 652
    goto/16 :goto_0

    .line 655
    :pswitch_16
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->cqs:I

    move v0, v1

    .line 656
    goto/16 :goto_0

    .line 659
    :pswitch_17
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->fOZ:I

    move v0, v1

    .line 660
    goto/16 :goto_0

    .line 663
    :pswitch_18
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->fNp:I

    move v0, v1

    .line 664
    goto/16 :goto_0

    .line 667
    :pswitch_19
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fNq:Ljava/lang/String;

    move v0, v1

    .line 668
    goto/16 :goto_0

    .line 671
    :pswitch_1a
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->fPa:I

    move v0, v1

    .line 672
    goto/16 :goto_0

    .line 675
    :pswitch_1b
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->fzV:I

    move v0, v1

    .line 676
    goto/16 :goto_0

    .line 679
    :pswitch_1c
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fNr:Ljava/lang/String;

    move v0, v1

    .line 680
    goto/16 :goto_0

    .line 683
    :pswitch_1d
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fMl:Ljava/lang/String;

    move v0, v1

    .line 684
    goto/16 :goto_0

    .line 687
    :pswitch_1e
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->cqt:Ljava/lang/String;

    move v0, v1

    .line 688
    goto/16 :goto_0

    .line 691
    :pswitch_1f
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fPb:Ljava/lang/String;

    move v0, v1

    .line 692
    goto/16 :goto_0

    .line 695
    :pswitch_20
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fNs:Ljava/lang/String;

    move v0, v1

    .line 696
    goto/16 :goto_0

    .line 699
    :pswitch_21
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->fNt:I

    move v0, v1

    .line 700
    goto/16 :goto_0

    .line 703
    :pswitch_22
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->cqv:I

    move v0, v1

    .line 704
    goto/16 :goto_0

    .line 707
    :pswitch_23
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->cqu:I

    move v0, v1

    .line 708
    goto/16 :goto_0

    .line 711
    :pswitch_24
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->cqw:Ljava/lang/String;

    move v0, v1

    .line 712
    goto/16 :goto_0

    .line 715
    :pswitch_25
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 716
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_15
    if-ge v2, v4, :cond_15

    .line 717
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 718
    new-instance v5, Lcom/tencent/mm/protocal/a/vp;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/vp;-><init>()V

    .line 719
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ob;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 722
    :goto_16
    if-eqz v0, :cond_14

    .line 723
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ob;->a(La/a/a/a/a;)I

    move-result v0

    .line 724
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/vp;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/vp;I)Z

    move-result v0

    goto :goto_16

    .line 726
    :cond_14
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ob;->fNv:Lcom/tencent/mm/protocal/a/vp;

    .line 716
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    :cond_15
    move v0, v1

    .line 730
    goto/16 :goto_0

    .line 733
    :pswitch_26
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->cqx:Ljava/lang/String;

    move v0, v1

    .line 734
    goto/16 :goto_0

    .line 737
    :pswitch_27
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fDg:Ljava/lang/String;

    move v0, v1

    .line 738
    goto/16 :goto_0

    .line 741
    :pswitch_28
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fDh:Ljava/lang/String;

    move v0, v1

    .line 742
    goto/16 :goto_0

    .line 745
    :pswitch_29
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->cqy:Ljava/lang/String;

    move v0, v1

    .line 746
    goto/16 :goto_0

    .line 749
    :pswitch_2a
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 750
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_17
    if-ge v2, v4, :cond_17

    .line 751
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 752
    new-instance v5, Lcom/tencent/mm/protocal/a/dl;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/dl;-><init>()V

    .line 753
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ob;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 756
    :goto_18
    if-eqz v0, :cond_16

    .line 757
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ob;->a(La/a/a/a/a;)I

    move-result v0

    .line 758
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/dl;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/dl;I)Z

    move-result v0

    goto :goto_18

    .line 760
    :cond_16
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ob;->fNw:Lcom/tencent/mm/protocal/a/dl;

    .line 750
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_17

    :cond_17
    move v0, v1

    .line 764
    goto/16 :goto_0

    .line 767
    :pswitch_2b
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fPc:Ljava/lang/String;

    move v0, v1

    .line 768
    goto/16 :goto_0

    .line 771
    :pswitch_2c
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fPd:Ljava/lang/String;

    move v0, v1

    .line 772
    goto/16 :goto_0

    .line 775
    :pswitch_2d
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fPe:Ljava/lang/String;

    move v0, v1

    .line 776
    goto/16 :goto_0

    .line 779
    :pswitch_2e
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fPf:Ljava/lang/String;

    move v0, v1

    .line 780
    goto/16 :goto_0

    .line 783
    :pswitch_2f
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fPg:Ljava/lang/String;

    move v0, v1

    .line 784
    goto/16 :goto_0

    .line 787
    :pswitch_30
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fPh:Ljava/lang/String;

    move v0, v1

    .line 788
    goto/16 :goto_0

    .line 791
    :pswitch_31
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fPi:Ljava/lang/String;

    move v0, v1

    .line 792
    goto/16 :goto_0

    .line 795
    :pswitch_32
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 796
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_19
    if-ge v2, v4, :cond_19

    .line 797
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 798
    new-instance v5, Lcom/tencent/mm/protocal/a/m;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/m;-><init>()V

    .line 799
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ob;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 802
    :goto_1a
    if-eqz v0, :cond_18

    .line 803
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ob;->a(La/a/a/a/a;)I

    move-result v0

    .line 804
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/m;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/m;I)Z

    move-result v0

    goto :goto_1a

    .line 806
    :cond_18
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ob;->fPj:Lcom/tencent/mm/protocal/a/m;

    .line 796
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    :cond_19
    move v0, v1

    .line 810
    goto/16 :goto_0

    .line 813
    :pswitch_33
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->fPk:I

    move v0, v1

    .line 814
    goto/16 :goto_0

    .line 817
    :pswitch_34
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fEv:Ljava/lang/String;

    move v0, v1

    .line 818
    goto/16 :goto_0

    .line 821
    :pswitch_35
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->fPl:I

    move v0, v1

    .line 822
    goto/16 :goto_0

    .line 825
    :pswitch_36
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->fPm:I

    move v0, v1

    .line 826
    goto/16 :goto_0

    .line 829
    :pswitch_37
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 830
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1b
    if-ge v2, v4, :cond_1b

    .line 831
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 832
    new-instance v5, Lcom/tencent/mm/protocal/a/ce;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/ce;-><init>()V

    .line 833
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ob;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 836
    :goto_1c
    if-eqz v0, :cond_1a

    .line 837
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ob;->a(La/a/a/a/a;)I

    move-result v0

    .line 838
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/ce;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ce;I)Z

    move-result v0

    goto :goto_1c

    .line 840
    :cond_1a
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ob;->fKF:Lcom/tencent/mm/protocal/a/ce;

    .line 830
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    :cond_1b
    move v0, v1

    .line 844
    goto/16 :goto_0

    .line 847
    :pswitch_38
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ob;->fPn:I

    move v0, v1

    .line 848
    goto/16 :goto_0

    .line 851
    :pswitch_39
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fAb:Ljava/lang/String;

    move v0, v1

    .line 852
    goto/16 :goto_0

    .line 855
    :pswitch_3a
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ob;->fPo:Ljava/lang/String;

    move v0, v1

    .line 856
    goto/16 :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_0
        :pswitch_0
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 262
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEI:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNa:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEG:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEH:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fzx:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_1

    .line 263
    :cond_0
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEI:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    .line 266
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 267
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNa:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_3

    .line 270
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 271
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEG:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_4

    .line 274
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEG:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 275
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEG:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 277
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEH:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_5

    .line 278
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 279
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 281
    :cond_5
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->cqq:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 282
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fzx:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_6

    .line 283
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fzx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 284
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fzx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 286
    :cond_6
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEj:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 287
    iget v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEk:I

    invoke-virtual {p1, v2, v0}, La/a/a/c/a;->by(II)V

    .line 288
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fOT:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 289
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fOO:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_7

    .line 290
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fOO:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 291
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fOO:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 293
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fOP:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_8

    .line 294
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fOP:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 295
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fOP:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 297
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_9

    .line 298
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 299
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 301
    :cond_9
    const/16 v0, 0xd

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEp:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 302
    const/16 v0, 0xe

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEq:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 303
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEr:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 304
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fOY:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_a

    .line 305
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fOY:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 306
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fOY:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 308
    :cond_a
    const/16 v0, 0x11

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEt:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 309
    const/16 v0, 0x12

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEu:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 310
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->Tu:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 311
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->Tu:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 313
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->Tv:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 314
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->Tv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 316
    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->cqr:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 317
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->cqr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 319
    :cond_d
    const/16 v0, 0x16

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->cqs:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 320
    const/16 v0, 0x17

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fOZ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 321
    const/16 v0, 0x18

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fNp:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 322
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNq:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 323
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fNq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 325
    :cond_e
    const/16 v0, 0x1a

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPa:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 326
    const/16 v0, 0x1b

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fzV:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 327
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNr:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 328
    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fNr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 330
    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fMl:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 331
    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fMl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 333
    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->cqt:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 334
    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->cqt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 336
    :cond_11
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPb:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 337
    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPb:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 339
    :cond_12
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNs:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 340
    const/16 v0, 0x20

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fNs:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 342
    :cond_13
    const/16 v0, 0x21

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fNt:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 343
    const/16 v0, 0x22

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->cqv:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 344
    const/16 v0, 0x23

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->cqu:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 345
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->cqw:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 346
    const/16 v0, 0x24

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->cqw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 348
    :cond_14
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNv:Lcom/tencent/mm/protocal/a/vp;

    if-eqz v0, :cond_15

    .line 349
    const/16 v0, 0x25

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/vp;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 350
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/vp;->a(La/a/a/c/a;)V

    .line 352
    :cond_15
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->cqx:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 353
    const/16 v0, 0x26

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->cqx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 355
    :cond_16
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fDg:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 356
    const/16 v0, 0x27

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fDg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 358
    :cond_17
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fDh:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 359
    const/16 v0, 0x28

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fDh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 361
    :cond_18
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->cqy:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 362
    const/16 v0, 0x29

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->cqy:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 364
    :cond_19
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNw:Lcom/tencent/mm/protocal/a/dl;

    if-eqz v0, :cond_1a

    .line 365
    const/16 v0, 0x2a

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/dl;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 366
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/dl;->a(La/a/a/c/a;)V

    .line 368
    :cond_1a
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPc:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 369
    const/16 v0, 0x2b

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 371
    :cond_1b
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPd:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 372
    const/16 v0, 0x2c

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 374
    :cond_1c
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPe:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 375
    const/16 v0, 0x2d

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPe:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 377
    :cond_1d
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPf:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 378
    const/16 v0, 0x2e

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPf:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 380
    :cond_1e
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPg:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 381
    const/16 v0, 0x2f

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 383
    :cond_1f
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPh:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 384
    const/16 v0, 0x30

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 386
    :cond_20
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPi:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 387
    const/16 v0, 0x31

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPi:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 389
    :cond_21
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPj:Lcom/tencent/mm/protocal/a/m;

    if-eqz v0, :cond_22

    .line 390
    const/16 v0, 0x32

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPj:Lcom/tencent/mm/protocal/a/m;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/m;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 391
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPj:Lcom/tencent/mm/protocal/a/m;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/m;->a(La/a/a/c/a;)V

    .line 393
    :cond_22
    const/16 v0, 0x35

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPk:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 394
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEv:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 395
    const/16 v0, 0x36

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 397
    :cond_23
    const/16 v0, 0x37

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPl:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 398
    const/16 v0, 0x38

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPm:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 399
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fKF:Lcom/tencent/mm/protocal/a/ce;

    if-eqz v0, :cond_24

    .line 400
    const/16 v0, 0x39

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fKF:Lcom/tencent/mm/protocal/a/ce;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/ce;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 401
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fKF:Lcom/tencent/mm/protocal/a/ce;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/ce;->a(La/a/a/c/a;)V

    .line 403
    :cond_24
    const/16 v0, 0x3a

    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPn:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 404
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fAb:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 405
    const/16 v0, 0x3b

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fAb:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 407
    :cond_25
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fPo:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 408
    const/16 v0, 0x3c

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 410
    :cond_26
    return-void
.end method

.method public final by([B)Lcom/tencent/mm/protocal/a/ob;
    .locals 2
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEr:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 413
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/ob;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 414
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/ob;->a(La/a/a/a/a;)I

    move-result v0

    .line 416
    :goto_0
    if-lez v0, :cond_1

    .line 417
    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/ob;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ob;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    .line 420
    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/ob;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEI:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fNa:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEG:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fEH:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ob;->fzx:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_3

    .line 424
    :cond_2
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_3
    return-object p0
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/ob;->by([B)Lcom/tencent/mm/protocal/a/ob;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 125
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEI:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_0

    .line 127
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fNa:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_1

    .line 130
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEG:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_2

    .line 133
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fEG:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEH:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_3

    .line 136
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    :cond_3
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->cqq:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fzx:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_4

    .line 140
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fzx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    :cond_4
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->fEj:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    iget v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEk:I

    invoke-static {v3, v1}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->fOT:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fOO:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_5

    .line 146
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fOO:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fOP:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_6

    .line 149
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fOP:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_7

    .line 152
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    :cond_7
    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->fEp:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    const/16 v1, 0xe

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->fEq:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fEr:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fOY:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_8

    .line 158
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fOY:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_8
    const/16 v1, 0x11

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->fEt:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    const/16 v1, 0x12

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->fEu:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->Tu:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 163
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->Tu:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_9
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->Tv:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 166
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->Tv:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->cqr:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 169
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->cqr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_b
    const/16 v1, 0x16

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->cqs:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    const/16 v1, 0x17

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->fOZ:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    const/16 v1, 0x18

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->fNp:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fNq:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 175
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fNq:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 177
    :cond_c
    const/16 v1, 0x1a

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->fPa:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    const/16 v1, 0x1b

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->fzV:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fNr:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 180
    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fNr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :cond_d
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fMl:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 183
    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fMl:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    :cond_e
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->cqt:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 186
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->cqt:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 188
    :cond_f
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPb:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 189
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fPb:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 191
    :cond_10
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fNs:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 192
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fNs:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    :cond_11
    const/16 v1, 0x21

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->fNt:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    const/16 v1, 0x22

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->cqv:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    const/16 v1, 0x23

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->cqu:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 197
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->cqw:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 198
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->cqw:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    :cond_12
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fNv:Lcom/tencent/mm/protocal/a/vp;

    if-eqz v1, :cond_13

    .line 201
    const/16 v1, 0x25

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/vp;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_13
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->cqx:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 204
    const/16 v1, 0x26

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->cqx:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    :cond_14
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fDg:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 207
    const/16 v1, 0x27

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fDg:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 209
    :cond_15
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fDh:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 210
    const/16 v1, 0x28

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fDh:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    :cond_16
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->cqy:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 213
    const/16 v1, 0x29

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->cqy:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 215
    :cond_17
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fNw:Lcom/tencent/mm/protocal/a/dl;

    if-eqz v1, :cond_18

    .line 216
    const/16 v1, 0x2a

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/dl;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    :cond_18
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPc:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 219
    const/16 v1, 0x2b

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fPc:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_19
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPd:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 222
    const/16 v1, 0x2c

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fPd:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    :cond_1a
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPe:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 225
    const/16 v1, 0x2d

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fPe:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    :cond_1b
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPf:Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 228
    const/16 v1, 0x2e

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fPf:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 230
    :cond_1c
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPg:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 231
    const/16 v1, 0x2f

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fPg:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_1d
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPh:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 234
    const/16 v1, 0x30

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fPh:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_1e
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPi:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 237
    const/16 v1, 0x31

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fPi:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 239
    :cond_1f
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPj:Lcom/tencent/mm/protocal/a/m;

    if-eqz v1, :cond_20

    .line 240
    const/16 v1, 0x32

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fPj:Lcom/tencent/mm/protocal/a/m;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/m;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    :cond_20
    const/16 v1, 0x35

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->fPk:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 243
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fEv:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 244
    const/16 v1, 0x36

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fEv:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    :cond_21
    const/16 v1, 0x37

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->fPl:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 247
    const/16 v1, 0x38

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->fPm:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fKF:Lcom/tencent/mm/protocal/a/ce;

    if-eqz v1, :cond_22

    .line 249
    const/16 v1, 0x39

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fKF:Lcom/tencent/mm/protocal/a/ce;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/ce;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 251
    :cond_22
    const/16 v1, 0x3a

    iget v2, p0, Lcom/tencent/mm/protocal/a/ob;->fPn:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 252
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fAb:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 253
    const/16 v1, 0x3b

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fAb:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 255
    :cond_23
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ob;->fPo:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 256
    const/16 v1, 0x3c

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ob;->fPo:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 258
    :cond_24
    return v0
.end method
