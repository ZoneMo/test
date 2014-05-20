.class final Lcom/tencent/mm/ui/bindmobile/ay;
.super Lcom/tencent/mm/ui/bc;
.source "SourceFile"


# instance fields
.field private cIB:Ljava/lang/String;

.field private cqM:[I

.field private gJl:Lcom/tencent/mm/ui/bindmobile/az;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/bd;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 466
    new-instance v0, Lcom/tencent/mm/modelfriend/h;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/h;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/bc;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 467
    invoke-super {p0, p2}, Lcom/tencent/mm/ui/bc;->a(Lcom/tencent/mm/ui/bd;)V

    .line 468
    iput-object p1, p0, Lcom/tencent/mm/ui/bindmobile/ay;->context:Landroid/content/Context;

    .line 469
    return-void
.end method


# virtual methods
.method public final FZ()V
    .locals 2

    .prologue
    .line 489
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Al()Lcom/tencent/mm/modelfriend/i;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/ay;->cIB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/i;->fr(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindmobile/ay;->setCursor(Landroid/database/Cursor;)V

    .line 490
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindmobile/ay;->getCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/mm/ui/bindmobile/ay;->cqM:[I

    .line 491
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/ay;->gJl:Lcom/tencent/mm/ui/bindmobile/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/ay;->cIB:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/ay;->gJl:Lcom/tencent/mm/ui/bindmobile/az;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindmobile/ay;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/bindmobile/az;->mL(I)V

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindmobile/ay;->notifyDataSetChanged()V

    .line 495
    return-void
.end method

.method protected final Ga()V
    .locals 0

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindmobile/ay;->FZ()V

    .line 485
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 404
    check-cast p1, Lcom/tencent/mm/modelfriend/h;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/modelfriend/h;

    invoke-direct {p1}, Lcom/tencent/mm/modelfriend/h;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/modelfriend/h;->convertFrom(Landroid/database/Cursor;)V

    return-object p1
.end method

.method public final a(Lcom/tencent/mm/ui/bindmobile/az;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/tencent/mm/ui/bindmobile/ay;->gJl:Lcom/tencent/mm/ui/bindmobile/az;

    .line 463
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 499
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/bindmobile/ay;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelfriend/h;

    .line 501
    if-nez p2, :cond_0

    .line 502
    new-instance v2, Lcom/tencent/mm/ui/bindmobile/ba;

    invoke-direct {v2}, Lcom/tencent/mm/ui/bindmobile/ba;-><init>()V

    .line 503
    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/ay;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/k;->aXs:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 504
    sget v1, Lcom/tencent/mm/i;->aBN:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/bindmobile/ba;->cqT:Landroid/widget/TextView;

    .line 509
    sget v1, Lcom/tencent/mm/i;->aBG:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/bindmobile/ba;->cqU:Landroid/widget/TextView;

    .line 510
    sget v1, Lcom/tencent/mm/i;->aBH:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/bindmobile/ba;->gpU:Landroid/widget/TextView;

    .line 511
    sget v1, Lcom/tencent/mm/i;->aBJ:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/bindmobile/ba;->gpV:Landroid/widget/TextView;

    .line 512
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 516
    :goto_0
    iget-object v2, v1, Lcom/tencent/mm/ui/bindmobile/ba;->cqT:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/h;->yM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v2, p0, Lcom/tencent/mm/ui/bindmobile/ay;->cqM:[I

    aget v2, v2, p1

    packed-switch v2, :pswitch_data_0

    .line 593
    :goto_1
    :pswitch_0
    return-object p2

    .line 514
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/bindmobile/ba;

    goto :goto_0

    .line 527
    :pswitch_1
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->gpU:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->cqU:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->cqU:Landroid/widget/TextView;

    sget v2, Lcom/tencent/mm/n;->bnx:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 530
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->cqU:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/ay;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/f;->ZM:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 533
    :pswitch_2
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->gpU:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->gpV:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->cqU:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->cqU:Landroid/widget/TextView;

    sget v2, Lcom/tencent/mm/n;->bnw:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 537
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->cqU:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/ay;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/f;->ZL:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 540
    :pswitch_3
    iget-object v2, v1, Lcom/tencent/mm/ui/bindmobile/ba;->cqU:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/h;->getStatus()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/h;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/k;->tK(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 542
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->cqU:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->gpU:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->gpV:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 559
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/h;->getStatus()I

    move-result v0

    if-nez v0, :cond_2

    .line 560
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->cqU:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->gpU:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 562
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->gpV:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 577
    :cond_2
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->gpU:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->gpV:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 579
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->cqU:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->cqU:Landroid/widget/TextView;

    sget v2, Lcom/tencent/mm/n;->bnv:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 581
    iget-object v0, v1, Lcom/tencent/mm/ui/bindmobile/ba;->cqU:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/ay;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/f;->ZL:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final ih(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 472
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bindmobile/ay;->cIB:Ljava/lang/String;

    .line 473
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindmobile/ay;->closeCursor()V

    .line 474
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindmobile/ay;->FZ()V

    .line 475
    return-void
.end method
