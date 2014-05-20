.class public final Lcom/tencent/mm/ui/friend/f;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private dBt:Z

.field private fng:Landroid/view/View;

.field private haL:Landroid/view/View;

.field private final haM:Lcom/tencent/mm/sdk/platformtools/ay;

.field private haN:Lcom/tencent/mm/sdk/e/al;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object v0, p0, Lcom/tencent/mm/ui/friend/f;->context:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    .line 48
    iput-object v0, p0, Lcom/tencent/mm/ui/friend/f;->haL:Landroid/view/View;

    .line 50
    iput-boolean v2, p0, Lcom/tencent/mm/ui/friend/f;->dBt:Z

    .line 52
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v1, Lcom/tencent/mm/ui/friend/g;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/g;-><init>(Lcom/tencent/mm/ui/friend/f;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/f;->haM:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 64
    new-instance v0, Lcom/tencent/mm/ui/friend/h;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/h;-><init>(Lcom/tencent/mm/ui/friend/f;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/f;->haN:Lcom/tencent/mm/sdk/e/al;

    .line 39
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/f;->context:Landroid/content/Context;

    .line 40
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/f;->haN:Lcom/tencent/mm/sdk/e/al;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ah/b;->e(Lcom/tencent/mm/sdk/e/al;)V

    .line 41
    invoke-static {}, Lcom/tencent/mm/ui/friend/f;->aLN()V

    .line 42
    invoke-direct {p0}, Lcom/tencent/mm/ui/friend/f;->init()V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/f;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/tencent/mm/ui/friend/f;->init()V

    return-void
.end method

.method private static aLN()V
    .locals 6

    .prologue
    .line 251
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ah/b;->Dp()I

    move-result v0

    .line 252
    const-string v1, "MicroMsg.FMessageContactView"

    const-string v2, "updateAddressTabUnread, newCount update to = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    if-lez v0, :cond_0

    .line 254
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const v2, 0x23102

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 256
    :cond_0
    return-void
.end method

.method static synthetic aLO()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lcom/tencent/mm/ui/friend/f;->aLN()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/friend/f;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/f;->haM:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/friend/f;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/f;->context:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 12

    .prologue
    .line 86
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ah/b;->Dn()Ljava/util/List;

    move-result-object v3

    .line 87
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 88
    const-string v1, "MicroMsg.FMessageContactView"

    const-string v2, "init new fconv size = %d (max is 4)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/f;->removeAllViews()V

    .line 91
    if-gtz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/f;->context:Landroid/content/Context;

    const v1, 0x7f03010e

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    const v1, 0x7f0a0379

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/f;->haL:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/f;->haL:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/friend/j;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/j;-><init>(Lcom/tencent/mm/ui/friend/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    const v1, 0x7f0a037a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    const-string v1, "fmessage"

    invoke-static {v1}, Lcom/tencent/mm/m/m;->eh(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MaskLayout;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    const v1, 0x7f0a0378

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    iget-boolean v0, p0, Lcom/tencent/mm/ui/friend/f;->dBt:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/f;->haL:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/friend/i;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/i;-><init>(Lcom/tencent/mm/ui/friend/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ah/b;->Dp()I

    move-result v1

    .line 115
    const-string v0, "MicroMsg.FMessageContactView"

    const-string v2, "init totalNewSize = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    const v2, 0x7f0a037b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    if-gtz v1, :cond_b

    .line 119
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :goto_2
    return-void

    .line 93
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 94
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ah/a;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/f;->context:Landroid/content/Context;

    const v2, 0x7f030110

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    const v2, 0x7f0a037f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/f;->context:Landroid/content/Context;

    iget-object v3, v0, Lcom/tencent/mm/ah/a;->field_displayName:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    const v2, 0x7f0a0380

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/tencent/mm/ah/k;->Dx()Lcom/tencent/mm/ah/f;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ah/f;->gH(Ljava/lang/String;)Lcom/tencent/mm/ah/e;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/friend/f;->context:Landroid/content/Context;

    iget v5, v3, Lcom/tencent/mm/ah/e;->field_type:I

    iget v6, v0, Lcom/tencent/mm/ah/a;->field_addScene:I

    iget-object v2, v3, Lcom/tencent/mm/ah/e;->field_msgContent:Ljava/lang/String;

    iget v3, v3, Lcom/tencent/mm/ah/e;->field_isSend:I

    const-string v7, "MicroMsg.FMessageProvider"

    const-string v8, "getDigest, fmsgType = %d, fmsgScene = %d, fmsgContent = %s, isSend = %d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v6, 0x2

    aput-object v2, v9, v6

    const/4 v6, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v7, v8, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v5, :cond_4

    if-nez v2, :cond_3

    const-string v2, "MicroMsg.FMessageProvider"

    const-string v3, "getDigest fail, fmsgContent is null"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_2
    :goto_3
    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    const v2, 0x7f0a0378

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/friend/f;->haL:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/f;->haL:Landroid/view/View;

    new-instance v2, Lcom/tencent/mm/ui/friend/k;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/friend/k;-><init>(Lcom/tencent/mm/ui/friend/f;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    const v2, 0x7f0a037a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MaskLayout;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v2}, Lcom/tencent/mm/storage/al;->uQ(Ljava/lang/String;)Lcom/tencent/mm/storage/al;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/al;->Gf()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    sget v2, Lcom/tencent/mm/n;->bgO:I

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :sswitch_0
    sget v2, Lcom/tencent/mm/n;->bgL:I

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :sswitch_1
    new-instance v3, Lcom/tencent/mm/c/a/bo;

    invoke-direct {v3}, Lcom/tencent/mm/c/a/bo;-><init>()V

    iget-object v5, v3, Lcom/tencent/mm/c/a/bo;->bNr:Lcom/tencent/mm/c/a/bp;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/al;->aCw()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/mm/c/a/bp;->bNo:Ljava/lang/String;

    iget-object v5, v3, Lcom/tencent/mm/c/a/bo;->bNr:Lcom/tencent/mm/c/a/bp;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/al;->aCz()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/mm/c/a/bp;->bNp:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    sget v2, Lcom/tencent/mm/n;->bgN:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v3, v3, Lcom/tencent/mm/c/a/bo;->bNs:Lcom/tencent/mm/c/a/bq;

    iget-object v3, v3, Lcom/tencent/mm/c/a/bq;->bNt:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v3, v7}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :sswitch_2
    sget v2, Lcom/tencent/mm/n;->bgQ:I

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :sswitch_3
    sget v2, Lcom/tencent/mm/n;->bgP:I

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :sswitch_4
    sget v2, Lcom/tencent/mm/n;->bgM:I

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_4
    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    invoke-static {v2}, Lcom/tencent/mm/storage/ao;->uU(Ljava/lang/String;)Lcom/tencent/mm/storage/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->getContent()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->getContent()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_5
    sget v2, Lcom/tencent/mm/n;->bmt:I

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 96
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/f;->context:Landroid/content/Context;

    const v1, 0x7f03010f

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const-string v0, "MicroMsg.FMessageContactView"

    const-string v1, "initMultiNew, newList size = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ah/a;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    const v2, 0x7f0a037a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MaskLayout;->getContentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/MaskLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ah/a;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    const v2, 0x7f0a037c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MaskLayout;->getContentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/MaskLayout;->setVisibility(I)V

    const/4 v0, 0x2

    if-le v4, v0, :cond_8

    const/4 v0, 0x2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ah/a;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    const v2, 0x7f0a037d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MaskLayout;->getContentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/MaskLayout;->setVisibility(I)V

    :cond_8
    const/4 v0, 0x3

    if-le v4, v0, :cond_9

    const/4 v0, 0x3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ah/a;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    const v2, 0x7f0a037e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MaskLayout;->getContentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/MaskLayout;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    const v1, 0x7f0a0378

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/f;->haL:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/f;->haL:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/friend/l;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/l;-><init>(Lcom/tencent/mm/ui/friend/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 100
    :cond_a
    const/16 v0, 0x8

    goto/16 :goto_1

    .line 121
    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    const/16 v2, 0x63

    if-le v1, v2, :cond_c

    .line 123
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/f;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070a7d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 125
    :cond_c
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0x1f -> :sswitch_2
        0x20 -> :sswitch_3
        0x3a -> :sswitch_4
        0x3b -> :sswitch_4
        0x3c -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final detach()V
    .locals 2

    .prologue
    .line 229
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/f;->haN:Lcom/tencent/mm/sdk/e/al;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ah/b;->f(Lcom/tencent/mm/sdk/e/al;)V

    .line 233
    :cond_0
    return-void
.end method

.method public final setVisible(Z)V
    .locals 3
    .parameter

    .prologue
    .line 241
    const-string v0, "MicroMsg.FMessageContactView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVisible visible = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/f;->fng:Landroid/view/View;

    const v1, 0x7f0a0378

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_0

    .line 244
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/mm/ui/friend/f;->dBt:Z

    .line 248
    return-void

    .line 244
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
