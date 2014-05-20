.class public final Lcom/tencent/mm/pluginsdk/ui/simley/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/bz;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/tencent/mm/pluginsdk/ui/simley/p;
.implements Lcom/tencent/mm/ui/base/cp;
.implements Lcom/tencent/mm/ui/base/cr;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private aH:Landroid/view/View;

.field private cUl:Lcom/tencent/mm/ui/base/MMDotView;

.field private fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

.field private ftA:Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;

.field private ftB:Lcom/tencent/mm/ui/base/MMRadioGroupView;

.field private ftC:Lcom/tencent/mm/ui/base/MMRadioImageButton;

.field private ftD:Ljava/util/List;

.field private ftE:Landroid/widget/ImageView;

.field private ftF:Landroid/widget/ImageButton;

.field private ftG:Landroid/widget/TextView;

.field private ftH:Lcom/tencent/mm/pluginsdk/ui/simley/n;

.field private volatile ftI:Z

.field private volatile ftJ:Z

.field private volatile ftK:I

.field private fty:Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;

.field private ftz:Lcom/tencent/mm/pluginsdk/ui/simley/o;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/ui/simley/g;Lcom/tencent/mm/pluginsdk/ui/simley/n;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->TAG:Ljava/lang/String;

    .line 215
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftI:Z

    .line 934
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftJ:Z

    .line 996
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftK:I

    .line 82
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    .line 84
    iput-object p3, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftH:Lcom/tencent/mm/pluginsdk/ui/simley/n;

    .line 90
    return-void
.end method

.method private a(Lcom/tencent/mm/storage/w;Lcom/tencent/mm/pluginsdk/ui/simley/e;)Lcom/tencent/mm/ui/base/MMRadioImageButton;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 549
    if-nez p2, :cond_1

    move-object v1, v5

    .line 552
    :goto_0
    if-eqz v1, :cond_2

    move v3, v4

    .line 553
    :goto_1
    if-nez v3, :cond_3

    .line 554
    new-instance v0, Lcom/tencent/mm/ui/base/MMRadioImageButton;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->mContext:Landroid/content/Context;

    sget v6, Lcom/tencent/mm/o;->bIE:I

    invoke-direct {v0, v1, v5, v6}, Lcom/tencent/mm/ui/base/MMRadioImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 555
    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->c(Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 560
    :goto_2
    sget v1, Lcom/tencent/mm/h;->acS:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setBackgroundResource(I)V

    .line 563
    if-eqz p2, :cond_a

    if-eqz v3, :cond_a

    .line 564
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {p2, p0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->a(Lcom/tencent/mm/pluginsdk/ui/simley/k;Lcom/tencent/mm/pluginsdk/ui/simley/g;)Z

    move-result v1

    .line 567
    :goto_3
    if-eqz v1, :cond_5

    .line 568
    const-string v1, "MicroMsg.SmileyPanel.UIDeal"

    const-string v2, "pass reset btn && use cache. so fast~"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_0
    :goto_4
    return-object v0

    .line 549
    :cond_1
    invoke-virtual {p2}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->atC()Lcom/tencent/mm/ui/base/MMRadioImageButton;

    move-result-object v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 552
    goto :goto_1

    .line 556
    :cond_3
    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 557
    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    move-object v0, v1

    goto :goto_2

    .line 571
    :cond_5
    const-string v1, "MicroMsg.SmileyPanel.UIDeal"

    const-string v5, "reset btn && not use cache. expence time~"

    invoke-static {v1, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v1, v0, p1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->a(Landroid/widget/ImageView;Lcom/tencent/mm/storage/w;)Lcom/tencent/mm/pluginsdk/ui/simley/i;

    move-result-object v1

    .line 575
    if-eqz p2, :cond_6

    .line 576
    invoke-virtual {p2, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->a(Lcom/tencent/mm/pluginsdk/ui/simley/i;)V

    .line 579
    :cond_6
    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/w;->aBb()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qT(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/ui/simley/j;

    move-result-object v5

    sget-object v6, Lcom/tencent/mm/pluginsdk/ui/simley/j;->ftw:Lcom/tencent/mm/pluginsdk/ui/simley/j;

    if-ne v5, v6, :cond_9

    .line 581
    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-static {p1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->b(Lcom/tencent/mm/storage/w;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 582
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setCheckable(Z)V

    .line 587
    :goto_5
    if-eqz v1, :cond_7

    iget-object v5, v1, Lcom/tencent/mm/pluginsdk/ui/simley/i;->WE:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_7

    .line 589
    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/ui/simley/i;->WE:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v5}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atI()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v6}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atI()I

    move-result v6

    invoke-static {v1, v5, v6, v2, v2}, Lcom/tencent/mm/sdk/platformtools/h;->a(Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 610
    :cond_7
    :goto_6
    if-nez v3, :cond_0

    .line 612
    invoke-virtual {p1}, Lcom/tencent/mm/storage/w;->aBb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setTag(Ljava/lang/Object;)V

    .line 613
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    sget v1, Lcom/tencent/mm/n;->bjb:I

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setTag(ILjava/lang/Object;)V

    .line 614
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setClickable(Z)V

    .line 615
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ac(Landroid/view/View;)I

    move-result v1

    .line 616
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setId(I)V

    goto :goto_4

    .line 584
    :cond_8
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setCheckable(Z)V

    goto :goto_5

    .line 604
    :cond_9
    if-eqz v1, :cond_7

    iget v2, v1, Lcom/tencent/mm/pluginsdk/ui/simley/i;->resource:I

    if-eqz v2, :cond_7

    .line 606
    iget v1, v1, Lcom/tencent/mm/pluginsdk/ui/simley/i;->resource:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setImageResource(I)V

    goto :goto_6

    :cond_a
    move v1, v2

    goto/16 :goto_3
.end method

.method private a(ILjava/lang/String;Lcom/tencent/mm/ui/base/MMRadioImageButton;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 476
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {p3}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->isCheckable()Z

    move-result v4

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/ui/simley/k;Lcom/tencent/mm/ui/base/MMRadioImageButton;ZI)V

    .line 477
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/tencent/mm/ui/base/MMRadioImageButton;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {p2}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->isCheckable()Z

    move-result v1

    invoke-virtual {v0, p1, p0, p2, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/ui/simley/k;Lcom/tencent/mm/ui/base/MMRadioImageButton;Z)V

    .line 473
    return-void
.end method

.method private aO(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 269
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->cUl:Lcom/tencent/mm/ui/base/MMDotView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMDotView;->setVisibility(I)V

    .line 276
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->cUl:Lcom/tencent/mm/ui/base/MMDotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMDotView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->cUl:Lcom/tencent/mm/ui/base/MMDotView;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/MMDotView;->mX(I)V

    .line 274
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->cUl:Lcom/tencent/mm/ui/base/MMDotView;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/base/MMDotView;->mY(I)V

    goto :goto_0
.end method

.method private aur()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 140
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v2, "- deal View"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftz:Lcom/tencent/mm/pluginsdk/ui/simley/o;

    if-nez v0, :cond_3

    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/simley/o;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-direct {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/simley/o;-><init>(Lcom/tencent/mm/pluginsdk/ui/simley/g;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftz:Lcom/tencent/mm/pluginsdk/ui/simley/o;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atX()Lcom/tencent/mm/pluginsdk/ui/simley/e;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fty:Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftz:Lcom/tencent/mm/pluginsdk/ui/simley/o;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->a(Lcom/tencent/mm/pluginsdk/ui/simley/o;I)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fty:Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->n(I)V

    .line 143
    :goto_1
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v2, "init dot view: current show viewId: %d, show productId: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v4}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atO()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v4}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atJ()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atX()Lcom/tencent/mm/pluginsdk/ui/simley/e;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const-string v2, "TAG_DEFAULT_TAB"

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qV(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atX()Lcom/tencent/mm/pluginsdk/ui/simley/e;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->atC()Lcom/tencent/mm/ui/base/MMRadioImageButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auB()V

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fty:Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->att()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->m(I)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->Lg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const-string v3, "TAG_DEFAULT_TAB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v1, "init set currentItem not default qq. "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_1
    :goto_2
    return-void

    .line 141
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->att()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftz:Lcom/tencent/mm/pluginsdk/ui/simley/o;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/o;->auF()V

    goto :goto_1

    .line 145
    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->atw()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aO(II)V

    goto :goto_2
.end method

.method private auu()Lcom/tencent/mm/ui/base/MMRadioImageButton;
    .locals 4

    .prologue
    .line 529
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftC:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Lcom/tencent/mm/ui/base/MMRadioImageButton;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget v3, Lcom/tencent/mm/o;->bIE:I

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/MMRadioImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftC:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    .line 531
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftC:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->c(Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 532
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftC:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    sget v1, Lcom/tencent/mm/h;->acS:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setBackgroundResource(I)V

    .line 533
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftC:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    sget v1, Lcom/tencent/mm/h;->aee:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setImageResource(I)V

    .line 534
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftC:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const-string v1, "TAG_DEFAULT_TAB"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setTag(Ljava/lang/Object;)V

    .line 535
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftC:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftC:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->ac(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setId(I)V

    .line 536
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftC:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setCheckable(Z)V

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftC:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    return-object v0
.end method

.method private auv()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftE:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftE:Landroid/widget/ImageView;

    .line 640
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftE:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->c(Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 641
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auw()V

    .line 642
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftE:Landroid/widget/ImageView;

    sget v1, Lcom/tencent/mm/h;->aeb:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 643
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftE:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const-string v1, "TAG_STORE_TAB"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 644
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftE:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftE:Landroid/widget/ImageView;

    return-object v0
.end method

.method private auw()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftE:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 660
    :goto_0
    return-void

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v1, 0x40003

    invoke-virtual {v0, v1}, Lcom/tencent/mm/i/a;->cd(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v1, 0x40005

    invoke-virtual {v0, v1}, Lcom/tencent/mm/i/a;->cd(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 656
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftE:Landroid/widget/ImageView;

    sget v1, Lcom/tencent/mm/h;->acT:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 655
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 658
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftE:Landroid/widget/ImageView;

    sget v1, Lcom/tencent/mm/h;->acS:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private aux()Landroid/widget/ImageButton;
    .locals 4

    .prologue
    .line 663
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftF:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget v3, Lcom/tencent/mm/o;->bIE:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftF:Landroid/widget/ImageButton;

    .line 666
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftF:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->c(Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 667
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftF:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 668
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftF:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftF:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private auy()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 704
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 705
    const-string v1, "entrance_scence"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 706
    const-string v1, "check_clickflag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 707
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->mContext:Landroid/content/Context;

    const-string v2, "emoji"

    const-string v3, ".ui.EmojiStoreUI"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 709
    return-void
.end method

.method private c(Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 674
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atH()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 675
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atH()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 676
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atG()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 677
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atG()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 678
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 679
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 680
    return-object p1
.end method

.method private d(Lcom/tencent/mm/storage/w;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 712
    if-nez p1, :cond_0

    .line 733
    :goto_0
    return-void

    .line 715
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 716
    const-string v1, "extra_id"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/w;->aBb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    const-string v1, "extra_name"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/w;->aBf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    const-string v1, "extra_copyright"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/w;->aBl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string v1, "extra_coverurl"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/w;->aBe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    const-string v1, "extra_description"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/w;->aBg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    const-string v1, "extra_price"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/w;->aBi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const-string v1, "extra_type"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/w;->aBj()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 724
    const-string v1, "extra_flag"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/w;->aBk()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 726
    const-string v1, "extra_flag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 728
    const-string v1, "preceding_scence"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 729
    const-string v1, "call_by"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 730
    const-string v1, "entrance_scence"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 731
    const-string v1, "check_clickflag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 732
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->mContext:Landroid/content/Context;

    const-string v2, "emoji"

    const-string v3, ".ui.EmojiStoreDetailUI"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 736
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aH:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private kP(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 963
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftB:Lcom/tencent/mm/ui/base/MMRadioGroupView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->getMeasuredWidth()I

    move-result v0

    .line 969
    const-string v1, "MicroMsg.SmileyPanel.UIDeal"

    const-string v2, "tabAllWidth: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 970
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftA:Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 971
    if-gtz v0, :cond_1

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 976
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atG()I

    move-result v1

    .line 977
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftA:Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;->getScrollX()I

    move-result v2

    .line 981
    if-lez v2, :cond_2

    mul-int v3, v1, p1

    if-lt v2, v3, :cond_2

    .line 983
    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftA:Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;

    mul-int v4, p1, v1

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;->scrollTo(II)V

    .line 984
    const-string v3, "MicroMsg.SmileyPanel.UIDeal"

    const-string v4, "adjusting tab site --- to left."

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :cond_2
    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftA:Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;->getWidth()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    mul-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    .line 990
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftA:Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;

    add-int/lit8 v2, p1, 0x1

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftA:Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v5}, Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;->scrollTo(II)V

    .line 991
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v1, "adjusting tab site --- to right."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(IF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 932
    return-void
.end method

.method public final declared-synchronized a(Lcom/tencent/mm/pluginsdk/ui/simley/f;)V
    .locals 14
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aH:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftI:Z

    if-nez v0, :cond_1

    .line 98
    :cond_0
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v1, "not view can\'t deal"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 104
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->cJ(Z)V

    .line 105
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v3, "- deal Data"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    move-object v5, p0

    :goto_1
    iget-object v3, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftB:Lcom/tencent/mm/ui/base/MMRadioGroupView;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->removeAllViews()V

    iget-object v3, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v3}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->aum()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v3}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->aum()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gez v3, :cond_19

    :cond_2
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/f;->fta:Lcom/tencent/mm/pluginsdk/ui/simley/f;

    move-object v4, v0

    :goto_2
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/f;->fta:Lcom/tencent/mm/pluginsdk/ui/simley/f;

    if-ne v4, v0, :cond_3

    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->auj()V

    :cond_3
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/m;->ftN:[I

    invoke-virtual {v4}, Lcom/tencent/mm/pluginsdk/ui/simley/f;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v3, "Init Tabs Group Use Cache: Degree UnKonw"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v3, "start add default"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/f;->fta:Lcom/tencent/mm/pluginsdk/ui/simley/f;

    if-ne v4, v0, :cond_6

    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const-string v0, "TAG_DEFAULT_TAB"

    invoke-direct {v5}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auu()Lcom/tencent/mm/ui/base/MMRadioImageButton;

    move-result-object v3

    invoke-direct {v5, v0, v3}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->a(Ljava/lang/String;Lcom/tencent/mm/ui/base/MMRadioImageButton;)V

    :goto_4
    invoke-direct {v5}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auu()Lcom/tencent/mm/ui/base/MMRadioImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {v5}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auu()Lcom/tencent/mm/ui/base/MMRadioImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v5}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auu()Lcom/tencent/mm/ui/base/MMRadioImageButton;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftB:Lcom/tencent/mm/ui/base/MMRadioGroupView;

    invoke-direct {v5}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auu()Lcom/tencent/mm/ui/base/MMRadioImageButton;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->addView(Landroid/view/View;)V

    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->aug()Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v3, "start add middle"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/f;->fta:Lcom/tencent/mm/pluginsdk/ui/simley/f;

    if-ne v4, v0, :cond_f

    const/4 v0, 0x0

    iput-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftD:Ljava/util/List;

    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftD:Ljava/util/List;

    if-nez v0, :cond_e

    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftD:Ljava/util/List;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftD:Ljava/util/List;

    :goto_5
    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atE()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v3, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    iget-object v8, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const-string v8, "TAG_STORE_TAB"

    invoke-virtual {v3, v8}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qW(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    iget-object v8, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const-string v8, "TAG_DEFAULT_TAB"

    invoke-virtual {v3, v8}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qW(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v1

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/w;

    const-string v9, "MicroMsg.SmileyPanel.UIDeal"

    const-string v10, "create middle button: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/w;->aBb()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v9, 0x0

    invoke-direct {v5, v0, v9}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->a(Lcom/tencent/mm/storage/w;Lcom/tencent/mm/pluginsdk/ui/simley/e;)Lcom/tencent/mm/ui/base/MMRadioImageButton;

    move-result-object v9

    if-eqz v3, :cond_18

    iget-object v10, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/w;->aBb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v2

    :goto_8
    if-eqz v9, :cond_5

    iget-object v1, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftD:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move v1, v0

    goto :goto_7

    :pswitch_0
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v3, "Init Tabs Group Use Cache: Degree First"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 105
    :pswitch_1
    :try_start_2
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v3, "Init Tabs Group Use Cache: Degree Second"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_2
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v3, "Init Tabs Group Use Cache: Degree Third"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    iget-object v3, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const-string v3, "TAG_DEFAULT_TAB"

    invoke-virtual {v0, v3}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qX(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/ui/simley/e;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v3, "use cache error default, so Change Degree Third"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/f;->fta:Lcom/tencent/mm/pluginsdk/ui/simley/f;

    goto/16 :goto_1

    :cond_7
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/f;->fsY:Lcom/tencent/mm/pluginsdk/ui/simley/f;

    if-ne v4, v0, :cond_8

    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v3, v5, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->a(Lcom/tencent/mm/pluginsdk/ui/simley/k;Lcom/tencent/mm/pluginsdk/ui/simley/g;)Z

    move-result v0

    :goto_9
    if-nez v0, :cond_9

    invoke-direct {v5}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auu()Lcom/tencent/mm/ui/base/MMRadioImageButton;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftC:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    const/4 v0, 0x0

    iget-object v3, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const-string v3, "TAG_DEFAULT_TAB"

    iget-object v8, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftC:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    invoke-direct {v5, v0, v3, v8}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->a(ILjava/lang/String;Lcom/tencent/mm/ui/base/MMRadioImageButton;)V

    goto/16 :goto_4

    :cond_8
    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v3, v5, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->b(Lcom/tencent/mm/pluginsdk/ui/simley/k;Lcom/tencent/mm/pluginsdk/ui/simley/g;)Z

    move-result v0

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->atC()Lcom/tencent/mm/ui/base/MMRadioImageButton;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftC:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftC:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    sget v3, Lcom/tencent/mm/h;->acS:I

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setBackgroundResource(I)V

    goto/16 :goto_4

    :cond_a
    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_5

    :cond_b
    move v3, v2

    goto/16 :goto_6

    :cond_c
    if-eqz v3, :cond_d

    if-eqz v1, :cond_d

    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    iget-object v1, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const-string v1, "TAG_DEFAULT_TAB"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qV(Ljava/lang/String;)V

    :cond_d
    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftD:Ljava/util/List;

    :goto_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MMRadioImageButton;

    iget-object v1, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftB:Lcom/tencent/mm/ui/base/MMRadioGroupView;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v1, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->a(Ljava/lang/String;Lcom/tencent/mm/ui/base/MMRadioImageButton;)V

    goto :goto_b

    :cond_e
    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftD:Ljava/util/List;

    goto :goto_a

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftD:Ljava/util/List;

    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atU()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v3, "Emoji Group Info Cache can\'t use & unuse cache retry"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/f;->fta:Lcom/tencent/mm/pluginsdk/ui/simley/f;

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/w;

    iget-object v8, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v8, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->kK(I)Lcom/tencent/mm/pluginsdk/ui/simley/e;

    move-result-object v1

    if-nez v1, :cond_11

    const-string v1, "MicroMsg.SmileyPanel.UIDeal"

    const-string v8, "use cache middle already release.... so new one"

    invoke-static {v1, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->a(Lcom/tencent/mm/storage/w;Lcom/tencent/mm/pluginsdk/ui/simley/e;)Lcom/tencent/mm/ui/base/MMRadioImageButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v2, v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->a(ILjava/lang/String;Lcom/tencent/mm/ui/base/MMRadioImageButton;)V

    move-object v0, v1

    :goto_d
    iget-object v1, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftD:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftB:Lcom/tencent/mm/ui/base/MMRadioGroupView;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->addView(Landroid/view/View;)V

    move v1, v2

    goto :goto_c

    :cond_11
    invoke-direct {v5, v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->a(Lcom/tencent/mm/storage/w;Lcom/tencent/mm/pluginsdk/ui/simley/e;)Lcom/tencent/mm/ui/base/MMRadioImageButton;

    move-result-object v0

    goto :goto_d

    :cond_12
    invoke-direct {v5}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auv()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct {v5}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auv()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v5}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auv()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_13
    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftB:Lcom/tencent/mm/ui/base/MMRadioGroupView;

    invoke-direct {v5}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auv()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->addView(Landroid/view/View;)V

    invoke-direct {v5}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aux()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-direct {v5}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auv()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v5}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aux()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_14
    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftB:Lcom/tencent/mm/ui/base/MMRadioGroupView;

    invoke-direct {v5}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aux()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->addView(Landroid/view/View;)V

    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftB:Lcom/tencent/mm/ui/base/MMRadioGroupView;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->a(Lcom/tencent/mm/ui/base/cp;)V

    :cond_15
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/f;->fsY:Lcom/tencent/mm/pluginsdk/ui/simley/f;

    if-eq v4, v0, :cond_16

    iget-object v0, v5, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->aun()V

    :cond_16
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v1, "end initTabGroup"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->auf()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 108
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aur()V

    .line 113
    :goto_e
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->cJ(Z)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 117
    const-string v2, "MicroMsg.SmileyPanel.UIDeal"

    const-string v3, "start Deal expend: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 110
    :cond_17
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->cK(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_e

    :cond_18
    move v0, v1

    goto/16 :goto_8

    :cond_19
    move-object v4, v0

    goto/16 :goto_2

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/tencent/mm/ui/base/MMRadioGroupView;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 801
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aH:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftI:Z

    if-nez v0, :cond_2

    .line 802
    :cond_0
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v1, "not end loading but catch check tab, current deal pass~"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_1
    :goto_0
    return-void

    .line 806
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fty:Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftz:Lcom/tencent/mm/pluginsdk/ui/simley/o;

    if-nez v0, :cond_4

    .line 807
    :cond_3
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v1, "not end initView but catch check tab, current deal pass~"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 812
    :cond_4
    invoke-virtual {p1, p2}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 823
    instance-of v1, v0, Lcom/tencent/mm/ui/base/MMRadioImageButton;

    if-eqz v1, :cond_1

    .line 828
    check-cast v0, Lcom/tencent/mm/ui/base/MMRadioImageButton;

    .line 830
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 832
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 837
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qW(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 844
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const-string v2, "TAG_STORE_TAB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 849
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    sget v2, Lcom/tencent/mm/storage/w;->ggW:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    sget v2, Lcom/tencent/mm/storage/w;->ggX:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const-string v2, "TAG_DEFAULT_TAB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 851
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    sget v2, Lcom/tencent/mm/n;->bjb:I

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/w;

    .line 852
    if-eqz v0, :cond_6

    .line 854
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->c(Lcom/tencent/mm/storage/w;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 858
    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->d(Lcom/tencent/mm/storage/w;)V

    goto :goto_0

    .line 864
    :cond_5
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v2, "check, viewId: %d, proId: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 865
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v2, "show TAB: viewId: %d, tabProductId: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qV(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auB()V

    .line 871
    :cond_6
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftJ:Z

    if-eqz v0, :cond_7

    .line 872
    iput-boolean v5, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftJ:Z

    goto/16 :goto_0

    .line 874
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fty:Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qX(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/ui/simley/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->att()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->a(IZ)V

    goto/16 :goto_0
.end method

.method public final aty()Lcom/tencent/mm/pluginsdk/ui/aw;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftH:Lcom/tencent/mm/pluginsdk/ui/simley/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftH:Lcom/tencent/mm/pluginsdk/ui/simley/n;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/n;->aty()Lcom/tencent/mm/pluginsdk/ui/aw;

    move-result-object v0

    goto :goto_0
.end method

.method public final auA()Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fty:Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;

    return-object v0
.end method

.method public final auB()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1008
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const-string v1, "TAG_DEFAULT_TAB"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftH:Lcom/tencent/mm/pluginsdk/ui/simley/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftH:Lcom/tencent/mm/pluginsdk/ui/simley/n;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/n;->auE()Lcom/tencent/mm/pluginsdk/ui/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftH:Lcom/tencent/mm/pluginsdk/ui/simley/n;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/n;->auE()Lcom/tencent/mm/pluginsdk/ui/h;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/tencent/mm/pluginsdk/ui/h;->bB(Z)V

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->cI(Z)V

    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aux()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftG:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftG:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftG:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftG:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftG:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1026
    :cond_1
    :goto_0
    return-void

    .line 1020
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftH:Lcom/tencent/mm/pluginsdk/ui/simley/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftH:Lcom/tencent/mm/pluginsdk/ui/simley/n;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/n;->auE()Lcom/tencent/mm/pluginsdk/ui/h;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1021
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftH:Lcom/tencent/mm/pluginsdk/ui/simley/n;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/n;->auE()Lcom/tencent/mm/pluginsdk/ui/h;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/tencent/mm/pluginsdk/ui/h;->bB(Z)V

    .line 1023
    :cond_3
    invoke-virtual {p0, v4}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->cM(Z)V

    goto :goto_0
.end method

.method public final auC()V
    .locals 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftA:Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftA:Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;->setVisibility(I)V

    .line 1044
    :cond_0
    return-void
.end method

.method public final declared-synchronized auD()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1050
    monitor-enter p0

    const/4 v1, 0x0

    .line 1052
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->auo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1053
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atZ()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1067
    :cond_0
    :goto_0
    const-string v1, "MicroMsg.SmileyPanel.UIDeal"

    const-string v2, "catch Size & start deal"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aH:Landroid/view/View;

    new-instance v2, Lcom/tencent/mm/pluginsdk/ui/simley/l;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/l;-><init>(Lcom/tencent/mm/pluginsdk/ui/simley/k;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    monitor-exit p0

    return-void

    .line 1057
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->aub()V

    move v0, v1

    goto :goto_0

    .line 1059
    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->auc()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->aud()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    .line 1050
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final auq()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->aue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v1, "check neeed refresh & refresh"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->cK(Z)V

    .line 125
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aur()V

    .line 129
    :cond_0
    return-void
.end method

.method public final aus()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftz:Lcom/tencent/mm/pluginsdk/ui/simley/o;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftz:Lcom/tencent/mm/pluginsdk/ui/simley/o;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/o;->clear()V

    .line 300
    :cond_0
    return-void
.end method

.method public final aut()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftz:Lcom/tencent/mm/pluginsdk/ui/simley/o;

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftz:Lcom/tencent/mm/pluginsdk/ui/simley/o;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/o;->aut()V

    goto :goto_0
.end method

.method public final auz()Lcom/tencent/mm/pluginsdk/ui/h;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftH:Lcom/tencent/mm/pluginsdk/ui/simley/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftH:Lcom/tencent/mm/pluginsdk/ui/simley/n;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/n;->auE()Lcom/tencent/mm/pluginsdk/ui/h;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lcom/tencent/mm/ui/base/MMRadioGroupView;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 892
    if-gez p2, :cond_1

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    invoke-virtual {p1, p2}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/mm/ui/base/MMRadioImageButton;

    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {p1, p2}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MMRadioImageButton;

    .line 904
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 905
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 910
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    const-string v2, "TAG_STORE_TAB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 911
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auy()V

    .line 912
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atD()V

    .line 915
    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    sget v2, Lcom/tencent/mm/storage/w;->ggW:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    sget v2, Lcom/tencent/mm/storage/w;->ggX:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    sget v1, Lcom/tencent/mm/n;->bjb:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/w;

    .line 918
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->c(Lcom/tencent/mm/storage/w;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->d(Lcom/tencent/mm/storage/w;)V

    goto :goto_0
.end method

.method public final cM(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 746
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aux()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 747
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftG:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftG:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 752
    if-eqz p1, :cond_2

    .line 753
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftG:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 754
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 755
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftG:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 757
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftG:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final cN(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftG:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftG:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1032
    :cond_0
    return-void
.end method

.method public final d(Landroid/view/ViewGroup;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 219
    if-nez p1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aH:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 226
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v1, "already load view --- pass"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_1
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftI:Z

    .line 231
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v2, "async load view"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aH:Landroid/view/View;

    if-nez v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->mContext:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/k;->aZH:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aH:Landroid/view/View;

    .line 240
    :cond_2
    :goto_1
    sget v0, Lcom/tencent/mm/i;->aKQ:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fty:Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;

    .line 242
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fty:Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->a(Lcom/tencent/mm/pluginsdk/ui/simley/g;)V

    .line 243
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fty:Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->a(Lcom/tencent/mm/pluginsdk/ui/simley/p;)V

    .line 244
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fty:Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->a(Landroid/support/v4/view/bz;)V

    .line 245
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fty:Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;

    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/simley/SmileyPanelVP;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->kJ(I)V

    .line 247
    sget v0, Lcom/tencent/mm/i;->aKN:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MMDotView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->cUl:Lcom/tencent/mm/ui/base/MMDotView;

    .line 248
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->cUl:Lcom/tencent/mm/ui/base/MMDotView;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/MMDotView;->mX(I)V

    .line 249
    sget v0, Lcom/tencent/mm/i;->aKR:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftA:Lcom/tencent/mm/ui/base/MMSmoothHorizontalScrollView;

    .line 250
    sget v0, Lcom/tencent/mm/i;->aKL:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MMRadioGroupView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftB:Lcom/tencent/mm/ui/base/MMRadioGroupView;

    .line 251
    sget v0, Lcom/tencent/mm/i;->aIU:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftG:Landroid/widget/TextView;

    .line 253
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftB:Lcom/tencent/mm/ui/base/MMRadioGroupView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->a(Lcom/tencent/mm/ui/base/cr;)V

    .line 255
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftG:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftG:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atV()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aH:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iput-boolean v5, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftI:Z

    goto/16 :goto_0

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aH:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aH:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aH:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 256
    :cond_4
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final j(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 938
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftK:I

    if-ne v0, p1, :cond_1

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftI:Z

    if-eqz v0, :cond_0

    .line 945
    iput p1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftK:I

    .line 946
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v1, "onPageSelected: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 948
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->kL(I)Lcom/tencent/mm/pluginsdk/ui/simley/e;

    move-result-object v0

    .line 950
    if-nez v0, :cond_2

    .line 951
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v1, "catch null tab in onPage Selected: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 954
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->Lg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->qW(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iput-boolean v4, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftJ:Z

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->atC()Lcom/tencent/mm/ui/base/MMRadioImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setChecked(Z)V

    .line 955
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->atw()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/e;->att()I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->aO(II)V

    .line 958
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->kM(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->kP(I)V

    goto :goto_0
.end method

.method public final k(I)V
    .locals 0
    .parameter

    .prologue
    .line 927
    return-void
.end method

.method public final kQ(I)V
    .locals 2
    .parameter

    .prologue
    .line 1095
    if-lez p1, :cond_0

    .line 1096
    const-string v0, "MicroMsg.SmileyPanel.UIDeal"

    const-string v1, "tab size changed ,so adjusting tab site."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atW()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->kP(I)V

    .line 1099
    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 685
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftE:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 686
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auy()V

    .line 687
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->fsS:Lcom/tencent/mm/pluginsdk/ui/simley/g;

    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/simley/g;->atD()V

    .line 688
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->auw()V

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftG:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftH:Lcom/tencent/mm/pluginsdk/ui/simley/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftH:Lcom/tencent/mm/pluginsdk/ui/simley/n;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/n;->auE()Lcom/tencent/mm/pluginsdk/ui/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/k;->ftH:Lcom/tencent/mm/pluginsdk/ui/simley/n;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/n;->auE()Lcom/tencent/mm/pluginsdk/ui/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/h;->ahP()V

    goto :goto_0
.end method
