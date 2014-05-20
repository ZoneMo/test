.class final Lcom/tencent/mm/ui/friend/br;
.super Lcom/tencent/mm/ui/bc;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/m/p;


# instance fields
.field private final bLH:Lcom/tencent/mm/ui/MMActivity;

.field private cIB:Ljava/lang/String;

.field private cqM:[I

.field private final hbL:Lcom/tencent/mm/ui/friend/a;

.field private final hbM:Lcom/tencent/mm/ui/friend/be;

.field private hbN:Lcom/tencent/mm/ui/friend/bu;

.field hbO:Z

.field private final is:I


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/MMActivity;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 328
    new-instance v0, Lcom/tencent/mm/modelfriend/av;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/av;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/bc;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 321
    iput-boolean v2, p0, Lcom/tencent/mm/ui/friend/br;->hbO:Z

    .line 329
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/br;->bLH:Lcom/tencent/mm/ui/MMActivity;

    .line 330
    iput p2, p0, Lcom/tencent/mm/ui/friend/br;->is:I

    .line 331
    invoke-virtual {p1}, Lcom/tencent/mm/ui/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "qqgroup_sendmessage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/friend/br;->hbO:Z

    .line 332
    new-instance v0, Lcom/tencent/mm/ui/friend/a;

    new-instance v1, Lcom/tencent/mm/ui/friend/bs;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/bs;-><init>(Lcom/tencent/mm/ui/friend/br;)V

    invoke-direct {v0, p1, v1}, Lcom/tencent/mm/ui/friend/a;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/friend/c;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/br;->hbL:Lcom/tencent/mm/ui/friend/a;

    .line 378
    new-instance v0, Lcom/tencent/mm/ui/friend/be;

    new-instance v1, Lcom/tencent/mm/ui/friend/bt;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/bt;-><init>(Lcom/tencent/mm/ui/friend/br;)V

    invoke-direct {v0, p1, v1}, Lcom/tencent/mm/ui/friend/be;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/friend/bg;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/br;->hbM:Lcom/tencent/mm/ui/friend/be;

    .line 388
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/br;)[I
    .locals 1
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/br;->cqM:[I

    return-object v0
.end method


# virtual methods
.method public final FZ()V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/br;->cIB:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Aq()Lcom/tencent/mm/modelfriend/aw;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/ui/friend/br;->is:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/aw;->dv(I)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/br;->setCursor(Landroid/database/Cursor;)V

    .line 419
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/br;->getCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/br;->cqM:[I

    .line 420
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/br;->hbN:Lcom/tencent/mm/ui/friend/bu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/br;->cIB:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/br;->hbN:Lcom/tencent/mm/ui/friend/bu;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/br;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/friend/bu;->mL(I)V

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/br;->notifyDataSetChanged()V

    .line 424
    return-void

    .line 416
    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Aq()Lcom/tencent/mm/modelfriend/aw;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/ui/friend/br;->is:I

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/br;->cIB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelfriend/aw;->g(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/br;->setCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected final Ga()V
    .locals 0

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/br;->FZ()V

    .line 409
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 304
    check-cast p1, Lcom/tencent/mm/modelfriend/av;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/modelfriend/av;

    invoke-direct {p1}, Lcom/tencent/mm/modelfriend/av;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/modelfriend/av;->convertFrom(Landroid/database/Cursor;)V

    return-object p1
.end method

.method public final a(Lcom/tencent/mm/ui/friend/bu;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/br;->hbN:Lcom/tencent/mm/ui/friend/bu;

    .line 393
    return-void
.end method

.method public final ei(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/br;->notifyDataSetChanged()V

    .line 537
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 428
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/friend/br;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelfriend/av;

    .line 430
    if-nez p2, :cond_1

    .line 431
    new-instance v2, Lcom/tencent/mm/ui/friend/bv;

    invoke-direct {v2}, Lcom/tencent/mm/ui/friend/bv;-><init>()V

    .line 432
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/br;->bLH:Lcom/tencent/mm/ui/MMActivity;

    sget v4, Lcom/tencent/mm/k;->aXR:I

    invoke-static {v1, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 433
    sget v1, Lcom/tencent/mm/i;->aqu:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/bv;->cID:Landroid/widget/ImageView;

    .line 434
    sget v1, Lcom/tencent/mm/i;->aEM:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/bv;->cqT:Landroid/widget/TextView;

    .line 437
    sget v1, Lcom/tencent/mm/i;->aEH:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/bv;->cqU:Landroid/widget/TextView;

    .line 438
    sget v1, Lcom/tencent/mm/i;->aEI:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/bv;->gpU:Landroid/widget/TextView;

    .line 439
    sget v1, Lcom/tencent/mm/i;->aEK:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/bv;->gpV:Landroid/widget/TextView;

    .line 440
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 444
    :goto_0
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->cqT:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/tencent/mm/ui/friend/bv;->cqT:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/mm/ui/friend/br;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/av;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/tencent/mm/ui/friend/bv;->cqT:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v2, p0, Lcom/tencent/mm/ui/friend/br;->cqM:[I

    aget v2, v2, p1

    packed-switch v2, :pswitch_data_0

    .line 491
    :goto_1
    :pswitch_0
    iget-boolean v2, p0, Lcom/tencent/mm/ui/friend/br;->hbO:Z

    if-eqz v2, :cond_0

    .line 492
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->gpU:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->gpV:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->cqU:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/av;->Af()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-static {v2}, Lcom/tencent/mm/a/j;->aw(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 500
    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/av;->Af()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tencent/mm/m/c;->t(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 502
    :goto_2
    if-nez v0, :cond_4

    .line 503
    iget-object v0, v1, Lcom/tencent/mm/ui/friend/bv;->cID:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/br;->bLH:Lcom/tencent/mm/ui/MMActivity;

    sget v2, Lcom/tencent/mm/h;->afI:I

    invoke-static {v1, v2}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    :goto_3
    return-object p2

    .line 442
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/friend/bv;

    goto :goto_0

    .line 456
    :pswitch_1
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->gpU:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->gpV:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->cqU:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->cqU:Landroid/widget/TextView;

    sget v4, Lcom/tencent/mm/n;->bnx:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 460
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->cqU:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/mm/ui/friend/br;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/tencent/mm/f;->ZM:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 463
    :pswitch_2
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->gpU:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 464
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->gpV:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->cqU:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->cqU:Landroid/widget/TextView;

    sget v4, Lcom/tencent/mm/n;->bnw:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 467
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->cqU:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/mm/ui/friend/br;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/tencent/mm/f;->ZL:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 471
    :pswitch_3
    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/av;->Ag()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/av;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/mm/storage/k;->tK(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 472
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->cqU:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->gpU:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->gpV:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 476
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/av;->Ag()I

    move-result v2

    if-nez v2, :cond_3

    .line 477
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->cqU:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->gpU:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->gpV:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 481
    :cond_3
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->gpU:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->gpV:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->cqU:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->cqU:Landroid/widget/TextView;

    sget v4, Lcom/tencent/mm/n;->bnv:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 485
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/bv;->cqU:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/mm/ui/friend/br;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/tencent/mm/f;->ZL:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 505
    :cond_4
    iget-object v1, v1, Lcom/tencent/mm/ui/friend/bv;->cID:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    :cond_5
    move-object v0, v3

    goto/16 :goto_2

    .line 447
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
    .line 396
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/br;->cIB:Ljava/lang/String;

    .line 397
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/br;->closeCursor()V

    .line 398
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/br;->FZ()V

    .line 399
    return-void
.end method
