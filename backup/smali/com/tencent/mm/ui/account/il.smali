.class final Lcom/tencent/mm/ui/account/il;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private final dLe:Landroid/view/LayoutInflater;

.field final synthetic gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

.field private final gtr:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/tencent/mm/ui/account/il;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 312
    iput-object p2, p0, Lcom/tencent/mm/ui/account/il;->context:Landroid/content/Context;

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/account/il;->gtr:Ljava/util/ArrayList;

    .line 314
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/il;->dLe:Landroid/view/LayoutInflater;

    .line 317
    return-void
.end method

.method private gz(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/tencent/mm/ui/account/il;->gtr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/account/il;->eQ(Ljava/lang/String;)V

    return-void
.end method

.method public final eQ(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lcom/tencent/mm/ui/account/il;->gtr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/il;->notifyDataSetChanged()V

    .line 385
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/tencent/mm/ui/account/il;->gtr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/account/il;->gz(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 367
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    .line 375
    iget-object v0, p0, Lcom/tencent/mm/ui/account/il;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->i(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/il;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->i(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 376
    const/4 v0, 0x1

    .line 378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 320
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/account/il;->getItemViewType(I)I

    move-result v3

    .line 322
    if-nez p2, :cond_0

    .line 323
    new-instance v2, Lcom/tencent/mm/ui/account/im;

    iget-object v0, p0, Lcom/tencent/mm/ui/account/il;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/tencent/mm/ui/account/im;-><init>(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;B)V

    .line 324
    packed-switch v3, :pswitch_data_0

    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UNIMPLEMENT TYPE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/account/il;->dLe:Landroid/view/LayoutInflater;

    sget v1, Lcom/tencent/mm/k;->aSg:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 336
    :goto_0
    sget v0, Lcom/tencent/mm/i;->api:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/ui/account/im;->flU:Landroid/widget/TextView;

    .line 337
    sget v0, Lcom/tencent/mm/i;->apf:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/tencent/mm/ui/account/im;->cqS:Landroid/widget/ImageView;

    .line 338
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    move-object v1, v2

    .line 342
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/account/il;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->i(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/account/il;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->i(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v2, p1, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 343
    packed-switch v3, :pswitch_data_1

    .line 349
    :goto_2
    iget-object v0, v1, Lcom/tencent/mm/ui/account/im;->flU:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/account/il;->gz(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    return-object p2

    .line 330
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/account/il;->dLe:Landroid/view/LayoutInflater;

    sget v1, Lcom/tencent/mm/k;->aSh:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 332
    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/account/im;

    move-object v1, v0

    goto :goto_1

    .line 345
    :pswitch_2
    iget-object v2, v1, Lcom/tencent/mm/ui/account/im;->cqS:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/mm/ui/account/il;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->j(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/account/il;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->j(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v0, v4

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 348
    :pswitch_3
    iget-object v0, v1, Lcom/tencent/mm/ui/account/im;->cqS:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/account/il;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->k(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 343
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x2

    return v0
.end method
