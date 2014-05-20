.class final Lcom/tencent/mm/plugin/wallet/pay/ui/s;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic fbR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/s;->fbR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 538
    return-void
.end method

.method private jM(I)Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;
    .locals 1
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/s;->fbR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->c(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/s;->fbR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->c(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/s;->fbR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->c(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/wallet/pay/ui/s;->jM(I)Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 420
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 425
    if-nez p2, :cond_2

    .line 427
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/s;->fbR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;

    sget v1, Lcom/tencent/mm/k;->bbL:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 428
    new-instance v1, Lcom/tencent/mm/plugin/wallet/pay/ui/u;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/u;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/s;)V

    .line 429
    sget v0, Lcom/tencent/mm/i;->aQr:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->dkR:Landroid/widget/TextView;

    .line 430
    sget v0, Lcom/tencent/mm/i;->aQs:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fbZ:Landroid/widget/TextView;

    .line 431
    sget v0, Lcom/tencent/mm/i;->aQt:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fca:Landroid/widget/TextView;

    .line 432
    sget v0, Lcom/tencent/mm/i;->aQF:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fbY:Landroid/widget/TextView;

    .line 433
    sget v0, Lcom/tencent/mm/i;->aQI:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fbW:Landroid/widget/TextView;

    .line 434
    sget v0, Lcom/tencent/mm/i;->aQu:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fbX:Landroid/widget/TextView;

    .line 435
    sget v0, Lcom/tencent/mm/i;->aQJ:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fcb:Landroid/widget/TextView;

    .line 436
    sget v0, Lcom/tencent/mm/i;->aQq:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fcc:Landroid/widget/TextView;

    .line 437
    sget v0, Lcom/tencent/mm/i;->aQp:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fcd:Landroid/widget/TextView;

    .line 438
    sget v0, Lcom/tencent/mm/i;->aQG:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->dda:Landroid/widget/TextView;

    .line 439
    sget v0, Lcom/tencent/mm/i;->aQv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fcf:Landroid/widget/TextView;

    .line 440
    sget v0, Lcom/tencent/mm/i;->aQy:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fce:Landroid/widget/TextView;

    .line 441
    iget-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fce:Landroid/widget/TextView;

    new-instance v2, Lcom/tencent/mm/plugin/wallet/pay/ui/t;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/t;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/s;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    sget v0, Lcom/tencent/mm/i;->aQw:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fch:Landroid/view/View;

    .line 454
    sget v0, Lcom/tencent/mm/i;->aQz:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fcg:Landroid/view/View;

    .line 455
    sget v0, Lcom/tencent/mm/i;->aQE:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fci:Landroid/view/View;

    .line 456
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 460
    :goto_0
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/wallet/pay/ui/s;->jM(I)Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;

    move-result-object v1

    .line 461
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 463
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fbW:Landroid/widget/TextView;

    iget-wide v3, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCJ:D

    invoke-static {v3, v4}, Lcom/tencent/mm/plugin/wallet/e/b;->e(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fbX:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCP:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/plugin/wallet/e/b;->pP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fbY:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->dkR:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->dkR:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 502
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->dkR:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/s;->fbR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;

    invoke-static {v3}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->d(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)Landroid/view/View$OnLongClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 503
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->dkR:Landroid/widget/TextView;

    sget v3, Lcom/tencent/mm/h;->akq:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 505
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fcb:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fcb:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 507
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fcb:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/s;->fbR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;

    invoke-static {v3}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->d(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)Landroid/view/View$OnLongClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 508
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fcb:Landroid/widget/TextView;

    sget v3, Lcom/tencent/mm/h;->akq:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 510
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fcc:Landroid/widget/TextView;

    iget v3, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCM:I

    invoke-static {v3}, Lcom/tencent/mm/plugin/wallet/e/b;->gP(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fcd:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->dda:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v2, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCs:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCQ:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 514
    iget-object v1, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fci:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 515
    iget-object v1, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fcg:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :cond_0
    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fch:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 535
    :cond_1
    :goto_1
    return-object p2

    .line 458
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;

    goto/16 :goto_0

    .line 518
    :cond_3
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fci:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 519
    iget-object v2, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCs:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 520
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fce:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fce:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 522
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fcg:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 526
    :goto_2
    iget-object v2, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCQ:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 527
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fcf:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/order/model/Orders$Commodity;->dCQ:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v1, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fch:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 529
    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fcf:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/s;->fbR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;->e(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletOrderInfoUI;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 524
    :cond_4
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/u;->fcg:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
