.class public Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/m/p;
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private cBV:Lcom/tencent/mm/sdk/platformtools/ay;

.field private cgf:Z

.field private cqS:Landroid/widget/ImageView;

.field private ffA:I

.field private ffB:I

.field private final ffC:I

.field private ffD:Landroid/util/SparseArray;

.field private ffE:Landroid/graphics/Bitmap;

.field private ffg:I

.field private ffh:I

.field private ffi:Landroid/widget/LinearLayout;

.field private ffj:Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;

.field private ffk:Landroid/widget/RelativeLayout;

.field private ffl:Landroid/widget/ImageView;

.field private ffm:Landroid/view/View;

.field private ffn:Landroid/view/View;

.field private ffo:Landroid/view/View;

.field private ffp:Landroid/view/animation/Animation;

.field private ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

.field private ffr:Lcom/tencent/mm/plugin/whatsnew/a/a;

.field private ffs:I

.field private fft:I

.field private ffu:I

.field private ffv:I

.field private ffw:I

.field private ffx:I

.field private ffy:I

.field private ffz:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->cgf:Z

    .line 81
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v1, Lcom/tencent/mm/plugin/whatsnew/ui/a;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/whatsnew/ui/a;-><init>(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->cBV:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 95
    iput v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffg:I

    .line 96
    iput v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffh:I

    .line 321
    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffC:I

    .line 323
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffD:Landroid/util/SparseArray;

    return-void
.end method

.method private a(Lcom/tencent/mm/plugin/whatsnew/ui/l;Landroid/view/View;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 499
    sget v0, Lcom/tencent/mm/i;->ame:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 500
    sget v0, Lcom/tencent/mm/i;->aoV:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 502
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 504
    sget-object v0, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    if-ne p1, v0, :cond_0

    .line 505
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 506
    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v6, v6, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fgb:I

    iget-object v7, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v7, v7, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fgd:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 508
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 511
    div-int/lit8 v1, v3, 0x2

    iget-object v3, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v3, v3, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fgb:I

    iget-object v4, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v4, v4, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fgd:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v3, v3, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fgc:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 514
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    :goto_0
    return-object p2

    .line 516
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 517
    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v6, v6, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fgb:I

    iget-object v7, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v7, v7, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fge:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 519
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 522
    div-int/lit8 v1, v3, 0x2

    iget-object v3, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v3, v3, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fgb:I

    iget-object v4, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v4, v4, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fge:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v3, v3, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fgc:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 525
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Lcom/tencent/mm/plugin/whatsnew/a/a;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffr:Lcom/tencent/mm/plugin/whatsnew/a/a;

    return-object v0
.end method

.method private a(IIILcom/tencent/mm/plugin/whatsnew/ui/l;Ljava/lang/String;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 709
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffD:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 710
    if-nez v0, :cond_0

    .line 711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 713
    :goto_0
    new-instance v0, Lcom/tencent/mm/plugin/whatsnew/ui/k;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/whatsnew/ui/k;-><init>(IIILcom/tencent/mm/plugin/whatsnew/ui/l;Ljava/lang/String;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffD:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 715
    return-void

    :cond_0
    move-object v7, v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/tencent/mm/plugin/whatsnew/ui/k;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v6, 0x0

    .line 433
    invoke-static {p2}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(Lcom/tencent/mm/plugin/whatsnew/ui/k;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 434
    sget v0, Lcom/tencent/mm/i;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bHL:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p2, Lcom/tencent/mm/plugin/whatsnew/ui/k;->month:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p2, Lcom/tencent/mm/plugin/whatsnew/ui/k;->cQU:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :goto_0
    sget v0, Lcom/tencent/mm/k;->bcg:I

    invoke-static {p0, v0, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v2, v2, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffY:I

    invoke-virtual {v1, v6, v6, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 440
    iget-object v1, p2, Lcom/tencent/mm/plugin/whatsnew/ui/k;->ffO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    sget v1, Lcom/tencent/mm/h;->akz:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 443
    sget v1, Lcom/tencent/mm/i;->aoV:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 445
    :goto_1
    iget-object v0, p2, Lcom/tencent/mm/plugin/whatsnew/ui/k;->ffN:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    sget-object v1, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    if-eq v0, v1, :cond_2

    .line 446
    sget v0, Lcom/tencent/mm/i;->ame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->cqS:Landroid/widget/ImageView;

    .line 447
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffE:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ape()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->cqS:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffE:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->b(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 457
    :cond_2
    :goto_2
    return-void

    .line 436
    :cond_3
    sget v0, Lcom/tencent/mm/i;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bHW:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 443
    :cond_4
    if-ne v4, v5, :cond_5

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v5, v5, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffY:I

    invoke-virtual {v2, v6, v6, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/plugin/whatsnew/ui/k;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/mm/plugin/whatsnew/ui/k;

    iget-boolean v2, v2, Lcom/tencent/mm/plugin/whatsnew/ui/k;->ffP:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v3, Lcom/tencent/mm/plugin/whatsnew/ui/k;->ffP:Z

    if-eqz v2, :cond_7

    :cond_6
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 451
    :cond_8
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "avatar/default_nor_avatar.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/mm/an/a;->getDensity(Landroid/content/Context;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/h;->a(Ljava/io/InputStream;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->cqS:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->b(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    .line 60
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffj:Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffs:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffs:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffj:Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;

    iget v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffs:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->jW(I)V

    iget v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffw:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v0

    mul-float v2, v7, v0

    sub-float v2, v6, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffz:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffx:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v0

    mul-float v2, v7, v0

    sub-float v2, v6, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffA:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffy:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v0

    mul-float/2addr v0, v7

    sub-float v0, v6, v0

    div-float v0, v1, v0

    float-to-int v0, v0

    iget v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffB:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffz:I

    iget v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffA:I

    iget v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffB:I

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->o(III)V

    iget-object v7, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffj:Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;

    new-instance v0, Lcom/tencent/mm/plugin/whatsnew/ui/f;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/whatsnew/ui/f;-><init>(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;IIIII)V

    invoke-virtual {v7, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->a(Lcom/tencent/mm/plugin/whatsnew/ui/n;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->o(III)V

    return-void
.end method

.method private static a(Lcom/tencent/mm/plugin/whatsnew/ui/k;)Z
    .locals 1
    .parameter

    .prologue
    .line 326
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/k;->month:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/k;->cQU:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/tencent/mm/plugin/whatsnew/ui/k;Lcom/tencent/mm/plugin/whatsnew/ui/k;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-static {p0, p1}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->b(Lcom/tencent/mm/plugin/whatsnew/ui/k;Lcom/tencent/mm/plugin/whatsnew/ui/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/k;->cQU:I

    iget v1, p1, Lcom/tencent/mm/plugin/whatsnew/ui/k;->cQU:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ape()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 369
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/tencent/mm/m/c;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffE:Landroid/graphics/Bitmap;

    .line 370
    iget-object v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffE:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 371
    const/4 v0, 0x1

    .line 373
    :cond_0
    return v0
.end method

.method private apf()V
    .locals 3

    .prologue
    .line 690
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffD:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffD:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 692
    new-instance v2, Lcom/tencent/mm/plugin/whatsnew/ui/i;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/whatsnew/ui/i;-><init>(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 690
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 706
    :cond_0
    return-void
.end method

.method private b(Ljava/util/ArrayList;Z)Landroid/widget/RelativeLayout;
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 546
    sget v0, Lcom/tencent/mm/k;->bcc:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 548
    if-eqz p2, :cond_0

    .line 549
    sget v1, Lcom/tencent/mm/k;->bcd:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 550
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 551
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    sget-object v2, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    invoke-direct {p0, v2, v1}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(Lcom/tencent/mm/plugin/whatsnew/ui/l;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 555
    :cond_0
    const/4 v5, 0x0

    .line 556
    const/4 v4, 0x0

    .line 557
    const/4 v3, 0x0

    .line 558
    const/4 v2, 0x0

    .line 559
    const/4 v8, 0x0

    .line 560
    const/4 v1, 0x0

    move v7, v5

    move v5, v1

    move-object v12, v3

    move v3, v2

    move-object v2, v12

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_b

    .line 561
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/whatsnew/ui/k;

    .line 562
    invoke-static {v4, v1}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(Lcom/tencent/mm/plugin/whatsnew/ui/k;Lcom/tencent/mm/plugin/whatsnew/ui/k;)Z

    move-result v9

    .line 563
    if-nez v1, :cond_1

    const/4 v4, 0x0

    .line 564
    :goto_1
    add-int v6, v3, v4

    .line 567
    invoke-static {v1}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(Lcom/tencent/mm/plugin/whatsnew/ui/k;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 568
    const/4 v3, 0x1

    move-object v4, v1

    move v1, v3

    .line 607
    :goto_2
    if-nez v1, :cond_9

    .line 608
    const/high16 v1, 0x43b4

    int-to-float v2, v6

    sub-float/2addr v1, v2

    const/high16 v2, 0x43b4

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v2, v2, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffZ:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 609
    add-int/2addr v1, v7

    .line 627
    :goto_3
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 629
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    sget v1, Lcom/tencent/mm/i;->axV:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v5, v5, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fgb:I

    iget-object v6, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v6, v6, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fgf:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    return-object v0

    .line 563
    :cond_1
    if-nez v4, :cond_3

    iget v4, v1, Lcom/tencent/mm/plugin/whatsnew/ui/k;->month:I

    mul-int/lit8 v6, v4, 0x1e

    iget v4, v1, Lcom/tencent/mm/plugin/whatsnew/ui/k;->month:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_2

    iget-object v4, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v4, v4, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffV:I

    int-to-float v4, v4

    const/high16 v10, 0x3f80

    mul-float/2addr v4, v10

    float-to-int v4, v4

    :goto_4
    add-int/2addr v4, v6

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_4

    :cond_3
    invoke-static {v4, v1}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->b(Lcom/tencent/mm/plugin/whatsnew/ui/k;Lcom/tencent/mm/plugin/whatsnew/ui/k;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v1, Lcom/tencent/mm/plugin/whatsnew/ui/k;->cQU:I

    iget v4, v4, Lcom/tencent/mm/plugin/whatsnew/ui/k;->cQU:I

    sub-int v4, v6, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto :goto_1

    :cond_4
    iget v6, v1, Lcom/tencent/mm/plugin/whatsnew/ui/k;->month:I

    iget v4, v4, Lcom/tencent/mm/plugin/whatsnew/ui/k;->month:I

    sub-int v4, v6, v4

    mul-int/lit8 v4, v4, 0x1e

    goto :goto_1

    .line 572
    :cond_5
    if-nez v9, :cond_8

    .line 574
    iget-object v2, v1, Lcom/tencent/mm/plugin/whatsnew/ui/k;->ffN:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    sget-object v3, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    if-ne v2, v3, :cond_6

    .line 575
    sget v2, Lcom/tencent/mm/k;->bcd:I

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 579
    :goto_5
    iget-object v3, v1, Lcom/tencent/mm/plugin/whatsnew/ui/k;->ffN:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 582
    int-to-float v3, v4

    const/high16 v4, 0x43b4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v4, v4, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffZ:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 588
    add-int/2addr v3, v7

    .line 589
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v10, -0x2

    invoke-direct {v4, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 591
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v7, v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 592
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    iget-object v4, v1, Lcom/tencent/mm/plugin/whatsnew/ui/k;->ffN:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    invoke-direct {p0, v4, v2}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(Lcom/tencent/mm/plugin/whatsnew/ui/l;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 594
    iget-object v4, v1, Lcom/tencent/mm/plugin/whatsnew/ui/k;->ffN:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    sget-object v7, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    if-ne v4, v7, :cond_7

    .line 595
    iget-object v4, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v4, v4, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffT:I

    add-int/2addr v3, v4

    move v4, v3

    move-object v3, v2

    .line 604
    :goto_6
    invoke-direct {p0, v2, v1, v9}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(Landroid/view/View;Lcom/tencent/mm/plugin/whatsnew/ui/k;Z)V

    .line 560
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v7, v4

    move-object v2, v3

    move-object v4, v1

    move v3, v6

    goto/16 :goto_0

    .line 577
    :cond_6
    sget v2, Lcom/tencent/mm/k;->bcb:I

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_5

    .line 597
    :cond_7
    iget-object v4, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v4, v4, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffU:I

    add-int/2addr v3, v4

    move v4, v3

    move-object v3, v2

    .line 599
    goto :goto_6

    .line 601
    :cond_8
    iget-object v3, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v3, v3, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffT:I

    add-int/2addr v3, v7

    move v4, v3

    move-object v3, v2

    goto :goto_6

    .line 611
    :cond_9
    sget v1, Lcom/tencent/mm/k;->bcd:I

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 612
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 614
    if-nez v2, :cond_a

    .line 615
    iget-object v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v2, v2, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffX:I

    add-int/2addr v7, v2

    .line 617
    :cond_a
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v7, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 618
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    sget-object v2, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    invoke-direct {p0, v2, v1}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(Lcom/tencent/mm/plugin/whatsnew/ui/l;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 620
    sget-object v2, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 621
    const/4 v2, 0x0

    invoke-direct {p0, v1, v4, v2}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(Landroid/view/View;Lcom/tencent/mm/plugin/whatsnew/ui/k;Z)V

    .line 622
    iget-object v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v1, v1, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffT:I

    add-int/2addr v1, v7

    .line 623
    iget-object v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v2, v2, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fga:I

    add-int/2addr v1, v2

    .line 624
    sget v2, Lcom/tencent/mm/i;->axV:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/tencent/mm/h;->akA:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    :cond_b
    move v1, v8

    move v6, v3

    goto/16 :goto_2
.end method

.method private static b(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 378
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/tencent/mm/sdk/platformtools/h;->a(Landroid/graphics/Bitmap;ZF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 382
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->dR()V

    return-void
.end method

.method private static b(Lcom/tencent/mm/plugin/whatsnew/ui/k;Lcom/tencent/mm/plugin/whatsnew/ui/k;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 334
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/k;->year:I

    iget v1, p1, Lcom/tencent/mm/plugin/whatsnew/ui/k;->year:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/k;->month:I

    iget v1, p1, Lcom/tencent/mm/plugin/whatsnew/ui/k;->month:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffk:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic c(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->b(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/whatsnew/ui/k;Lcom/tencent/mm/plugin/whatsnew/ui/k;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->b(Lcom/tencent/mm/plugin/whatsnew/ui/k;Lcom/tencent/mm/plugin/whatsnew/ui/k;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)V
    .locals 3
    .parameter

    .prologue
    .line 60
    sget v0, Lcom/tencent/mm/i;->asW:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffn:Landroid/view/View;

    sget v0, Lcom/tencent/mm/i;->aCs:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffo:Landroid/view/View;

    sget v0, Lcom/tencent/mm/i;->background:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffm:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->fft:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffu:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffm:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffv:I

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffs:I

    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffs:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffz:I

    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffz:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->fft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffu:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffA:I

    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffz:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffv:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffu:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffB:I

    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffu:I

    iget v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffz:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffw:I

    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->fft:I

    iget v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffA:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffx:I

    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffv:I

    iget v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffB:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffy:I

    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffz:I

    iget v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffA:I

    iget v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffB:I

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->o(III)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/whatsnew/ui/k;Lcom/tencent/mm/plugin/whatsnew/ui/k;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(Lcom/tencent/mm/plugin/whatsnew/ui/k;Lcom/tencent/mm/plugin/whatsnew/ui/k;)Z

    move-result v0

    return v0
.end method

.method private dR()V
    .locals 11

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->cgf:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->cgf:Z

    sget v0, Lcom/tencent/mm/b;->YA:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    sget v0, Lcom/tencent/mm/b;->YB:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffk:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget v9, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffg:I

    iget v10, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffh:I

    const/16 v1, 0x7db

    const/4 v2, 0x1

    const/16 v3, 0x15

    sget-object v4, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    sget v0, Lcom/tencent/mm/n;->bHM:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(IIILcom/tencent/mm/plugin/whatsnew/ui/l;Ljava/lang/String;Z)V

    const/16 v1, 0x7db

    const/4 v2, 0x5

    const/16 v3, 0xa

    sget-object v4, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    sget v0, Lcom/tencent/mm/n;->bHN:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(IIILcom/tencent/mm/plugin/whatsnew/ui/l;Ljava/lang/String;Z)V

    const/16 v1, 0x7db

    const/16 v2, 0x8

    const/4 v3, 0x3

    sget-object v4, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    sget v0, Lcom/tencent/mm/n;->bHO:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(IIILcom/tencent/mm/plugin/whatsnew/ui/l;Ljava/lang/String;Z)V

    const/16 v1, 0x7db

    const/16 v2, 0xa

    const/4 v3, 0x1

    sget-object v4, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    sget v0, Lcom/tencent/mm/n;->bHP:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(IIILcom/tencent/mm/plugin/whatsnew/ui/l;Ljava/lang/String;Z)V

    const/16 v1, 0x7dc

    const/4 v2, 0x4

    const/16 v3, 0x13

    sget-object v4, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    sget v0, Lcom/tencent/mm/n;->bHQ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(IIILcom/tencent/mm/plugin/whatsnew/ui/l;Ljava/lang/String;Z)V

    const/16 v1, 0x7dd

    const/16 v2, 0x8

    const/4 v3, 0x5

    sget-object v4, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    sget v0, Lcom/tencent/mm/n;->bHR:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(IIILcom/tencent/mm/plugin/whatsnew/ui/l;Ljava/lang/String;Z)V

    const/16 v1, 0x7dd

    const/16 v2, 0x8

    const/4 v3, 0x5

    sget-object v4, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    sget v0, Lcom/tencent/mm/n;->bHS:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(IIILcom/tencent/mm/plugin/whatsnew/ui/l;Ljava/lang/String;Z)V

    if-eqz v9, :cond_0

    new-instance v0, Ljava/util/Date;

    int-to-long v1, v9

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sget-object v4, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffR:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    sget v0, Lcom/tencent/mm/n;->bHT:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(IIILcom/tencent/mm/plugin/whatsnew/ui/l;Ljava/lang/String;Z)V

    :cond_0
    if-eqz v10, :cond_1

    new-instance v0, Ljava/util/Date;

    int-to-long v1, v10

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sget-object v4, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    sget v0, Lcom/tencent/mm/n;->bHU:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(IIILcom/tencent/mm/plugin/whatsnew/ui/l;Ljava/lang/String;Z)V

    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->apf()V

    const/16 v1, 0x7de

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    sget v0, Lcom/tencent/mm/n;->bHV:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(IIILcom/tencent/mm/plugin/whatsnew/ui/l;Ljava/lang/String;Z)V

    new-instance v0, Lcom/tencent/mm/plugin/whatsnew/ui/d;

    invoke-direct {v0, p0, v7}, Lcom/tencent/mm/plugin/whatsnew/ui/d;-><init>(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;Landroid/view/animation/Animation;)V

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 126
    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffl:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffj:Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    const/4 v11, -0x1

    const/4 v4, 0x0

    .line 60
    move v3, v4

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffD:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffD:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffD:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/whatsnew/ui/k;

    iget v7, v1, Lcom/tencent/mm/plugin/whatsnew/ui/k;->year:I

    sget v1, Lcom/tencent/mm/k;->bcf:I

    invoke-static {p0, v1, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v8, v11, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    iget v2, v2, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fgb:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v8, v4, v4, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    sget v2, Lcom/tencent/mm/i;->aRI:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v9, Lcom/tencent/mm/n;->bHX:I

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v4

    invoke-virtual {p0, v9, v10}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffi:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    move v1, v5

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->b(Ljava/util/ArrayList;Z)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffi:Landroid/widget/LinearLayout;

    sget v0, Lcom/tencent/mm/k;->bce:I

    invoke-static {p0, v0, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-direct {v1, v11, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/tencent/mm/i;->aRw:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lcom/tencent/mm/plugin/whatsnew/ui/g;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/whatsnew/ui/g;-><init>(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffi:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/whatsnew/ui/h;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/whatsnew/ui/h;-><init>(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic h(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffs:I

    return v0
.end method

.method static synthetic i(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffw:I

    return v0
.end method

.method static synthetic j(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffz:I

    return v0
.end method

.method static synthetic k(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffx:I

    return v0
.end method

.method static synthetic l(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffA:I

    return v0
.end method

.method static synthetic m(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffy:I

    return v0
.end method

.method static synthetic n(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffB:I

    return v0
.end method

.method static synthetic o(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffi:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private o(III)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 317
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 318
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffm:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, p3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 319
    return-void
.end method

.method static synthetic p(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->cqS:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic q(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffE:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 721
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    move-object v0, p4

    .line 722
    check-cast v0, Lcom/tencent/mm/plugin/whatsnew/a/a;

    iget v0, v0, Lcom/tencent/mm/plugin/whatsnew/a/a;->ffg:I

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffg:I

    .line 723
    check-cast p4, Lcom/tencent/mm/plugin/whatsnew/a/a;

    iget v0, p4, Lcom/tencent/mm/plugin/whatsnew/a/a;->ffh:I

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffh:I

    .line 724
    const-string v0, "MicroMsg.ThirdAnniversaryUI"

    const-string v1, "load success, rt : %s, fs : %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffg:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    :goto_0
    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffg:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->cBV:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 731
    invoke-direct {p0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->dR()V

    .line 733
    :cond_1
    return-void

    .line 726
    :cond_2
    const-string v0, "MicroMsg.ThirdAnniversaryUI"

    const-string v1, "load error, type : %s code : %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final ei(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 737
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    invoke-direct {p0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ape()Z

    .line 739
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->cqS:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->cqS:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/plugin/whatsnew/ui/j;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/whatsnew/ui/j;-><init>(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 747
    :cond_0
    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/m/m;->b(Lcom/tencent/mm/m/p;)V

    .line 749
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/16 v1, 0x400

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->requestWindowFeature(I)Z

    .line 102
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 104
    sget v0, Lcom/tencent/mm/k;->baQ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->setContentView(I)V

    .line 106
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x245

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 107
    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/m/m;->a(Lcom/tencent/mm/m/p;)V

    .line 109
    new-instance v0, Lcom/tencent/mm/plugin/whatsnew/ui/m;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/whatsnew/ui/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffq:Lcom/tencent/mm/plugin/whatsnew/ui/m;

    .line 111
    sget v0, Lcom/tencent/mm/i;->aMR:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffi:Landroid/widget/LinearLayout;

    sget v0, Lcom/tencent/mm/i;->aIj:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffj:Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;

    sget v0, Lcom/tencent/mm/i;->ayh:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffk:Landroid/widget/RelativeLayout;

    sget v0, Lcom/tencent/mm/i;->ayj:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffl:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffj:Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/whatsnew/ui/WhatsnewScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffk:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffk:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tencent/mm/plugin/whatsnew/ui/c;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/whatsnew/ui/c;-><init>(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/tencent/mm/b;->YW:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffp:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffp:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffl:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffp:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/tencent/mm/plugin/whatsnew/a/a;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/whatsnew/a/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffr:Lcom/tencent/mm/plugin/whatsnew/a/a;

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffr:Lcom/tencent/mm/plugin/whatsnew/a/a;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->cBV:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->ffk:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/whatsnew/ui/b;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/whatsnew/ui/b;-><init>(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 112
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/m/m;->b(Lcom/tencent/mm/m/p;)V

    .line 117
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x245

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 119
    return-void
.end method
