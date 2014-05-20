.class public final Lcom/tencent/mm/plugin/wallet/bind/ui/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private eXO:Ljava/util/ArrayList;

.field private eXP:Z

.field public eXQ:I

.field private final mContext:Landroid/content/Context;

.field private mCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->mCount:I

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->eXQ:I

    .line 62
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->eXO:Ljava/util/ArrayList;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->eXP:Z

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/bind/ui/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 192
    if-nez p1, :cond_0

    move-object v0, v6

    .line 213
    :goto_0
    return-object v0

    .line 200
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 201
    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 205
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string v1, "MicroMsg.BankcardListAdapter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 213
    goto :goto_0

    .line 209
    :cond_1
    :try_start_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private jD(I)Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->eXP:Z

    if-eqz v0, :cond_1

    .line 92
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->mCount:I

    if-ge p1, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->eXO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    .line 98
    :goto_0
    return-object v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->eXO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 79
    iget-boolean v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->eXP:Z

    if-eqz v1, :cond_1

    .line 81
    iget v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->mCount:I

    if-lez v1, :cond_0

    .line 82
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->mCount:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x0

    .line 86
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->eXO:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->eXO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->jD(I)Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 103
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->jD(I)Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->anf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->jD(I)Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    move-result-object v4

    .line 110
    if-nez v4, :cond_0

    .line 112
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->mContext:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/k;->bbt:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 114
    iput p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->eXQ:I

    .line 185
    :goto_0
    return-object p2

    .line 117
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 119
    :cond_1
    invoke-virtual {v4}, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->anf()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->mContext:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/k;->bbs:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 126
    :goto_1
    new-instance v2, Lcom/tencent/mm/plugin/wallet/bind/ui/b;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/wallet/bind/ui/b;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/a;)V

    .line 127
    sget v0, Lcom/tencent/mm/i;->ana:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXW:Landroid/widget/ImageView;

    .line 129
    sget v0, Lcom/tencent/mm/i;->anb:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXS:Landroid/widget/TextView;

    .line 131
    sget v0, Lcom/tencent/mm/i;->ani:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXT:Landroid/widget/TextView;

    .line 133
    sget v0, Lcom/tencent/mm/i;->ane:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXR:Landroid/widget/TextView;

    .line 135
    sget v0, Lcom/tencent/mm/i;->and:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXX:Landroid/widget/TextView;

    .line 137
    sget v0, Lcom/tencent/mm/i;->aPU:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXU:Landroid/widget/RelativeLayout;

    .line 139
    sget v0, Lcom/tencent/mm/i;->ang:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXV:Landroid/widget/ImageView;

    .line 141
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    move-object p2, v1

    .line 146
    :goto_2
    invoke-virtual {v4}, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->ang()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 147
    iget-object v1, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXX:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :goto_3
    iget-object v1, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXS:Landroid/widget/TextView;

    iget-object v2, v4, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->dCO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXT:Landroid/widget/TextView;

    iget-boolean v1, v4, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWU:Z

    if-eqz v1, :cond_6

    sget v1, Lcom/tencent/mm/n;->bGf:I

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    iget-object v1, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXR:Landroid/widget/TextView;

    iget-object v2, v4, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->mContext:Landroid/content/Context;

    iget-object v2, v4, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWH:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/plugin/wallet/d/a;->ab(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/plugin/wallet/d/b;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXY:Lcom/tencent/mm/plugin/wallet/d/b;

    .line 158
    iget-object v1, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXY:Lcom/tencent/mm/plugin/wallet/d/b;

    if-eqz v1, :cond_e

    .line 159
    const-string v1, "MicroMsg.BankcardListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "bankLogoUrl = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXY:Lcom/tencent/mm/plugin/wallet/d/b;

    iget-object v4, v4, Lcom/tencent/mm/plugin/wallet/d/b;->fdI:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v1, Lcom/tencent/mm/plugin/wallet/ui/ak;

    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXY:Lcom/tencent/mm/plugin/wallet/d/b;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/d/b;->logoUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/tencent/mm/plugin/wallet/ui/ak;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mm/platformtools/v;->a(Lcom/tencent/mm/platformtools/s;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 162
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXW:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    new-instance v1, Lcom/tencent/mm/plugin/wallet/ui/ak;

    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXY:Lcom/tencent/mm/plugin/wallet/d/b;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/d/b;->fdJ:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/tencent/mm/plugin/wallet/ui/ak;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mm/platformtools/v;->a(Lcom/tencent/mm/platformtools/s;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 167
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXV:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    iget-object v1, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXY:Lcom/tencent/mm/plugin/wallet/d/b;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/d/b;->fdI:Ljava/lang/String;

    const-string v2, "http://res.wx.qq.com/zh_CN/htmledition/images/mmpaybanklogo/wallet_bankcard_bule_bg.9_v2.png"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget v1, Lcom/tencent/mm/h;->akk:I

    .line 170
    :goto_5
    if-eq v1, v3, :cond_d

    .line 171
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXU:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 181
    :cond_2
    :goto_6
    invoke-static {v0}, Lcom/tencent/mm/platformtools/v;->a(Lcom/tencent/mm/platformtools/w;)Z

    goto/16 :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->mContext:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/k;->bbv:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 143
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;

    goto/16 :goto_2

    .line 149
    :cond_5
    iget-object v1, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXX:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 152
    :cond_6
    sget v1, Lcom/tencent/mm/n;->bGh:I

    goto/16 :goto_4

    .line 169
    :cond_7
    const-string v2, "http://res.wx.qq.com/zh_CN/htmledition/images/mmpaybanklogo/wallet_bankcard_green_bg.9_v2.png"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget v1, Lcom/tencent/mm/h;->akl:I

    goto :goto_5

    :cond_8
    const-string v2, "http://res.wx.qq.com/zh_CN/htmledition/images/mmpaybanklogo/wallet_bankcard_hbule_bg.9_v2.png"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget v1, Lcom/tencent/mm/h;->akm:I

    goto :goto_5

    :cond_9
    const-string v2, "http://res.wx.qq.com/zh_CN/htmledition/images/mmpaybanklogo/wallet_bankcard_purple_bg.9_v2.png"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget v1, Lcom/tencent/mm/h;->akn:I

    goto :goto_5

    :cond_a
    const-string v2, "http://res.wx.qq.com/zh_CN/htmledition/images/mmpaybanklogo/wallet_bankcard_red_bg.9_v2.png"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget v1, Lcom/tencent/mm/h;->ako:I

    goto :goto_5

    :cond_b
    const-string v2, "http://res.wx.qq.com/zh_CN/htmledition/images/mmpaybanklogo/wallet_bankcard_yellow_bg.9_v2.png"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget v1, Lcom/tencent/mm/h;->akp:I

    goto :goto_5

    :cond_c
    move v1, v3

    goto :goto_5

    .line 173
    :cond_d
    new-instance v1, Lcom/tencent/mm/plugin/wallet/ui/ak;

    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXY:Lcom/tencent/mm/plugin/wallet/d/b;

    iget-object v2, v2, Lcom/tencent/mm/plugin/wallet/d/b;->fdI:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/tencent/mm/plugin/wallet/ui/ak;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mm/platformtools/v;->a(Lcom/tencent/mm/platformtools/s;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_2

    .line 176
    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXU:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->b(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 183
    :cond_e
    const-string v0, "MicroMsg.BankcardListAdapter"

    const-string v1, "holder.bankUrls not found!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x2

    return v0
.end method

.method public final w(Ljava/util/ArrayList;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->eXO:Ljava/util/ArrayList;

    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->mCount:I

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/a;->mCount:I

    goto :goto_0
.end method
