.class public final Lcom/tencent/mm/ui/bindgooglecontact/o;
.super Lcom/tencent/mm/ui/bc;
.source "SourceFile"


# instance fields
.field private ddz:Landroid/view/LayoutInflater;

.field private gHK:Lcom/tencent/mm/ui/bindgooglecontact/p;

.field private gHL:Ljava/lang/String;

.field private gHp:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, Lcom/tencent/mm/modelfriend/ac;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/ac;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/bc;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 41
    iput-object p2, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->gHp:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->ddz:Landroid/view/LayoutInflater;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bindgooglecontact/o;)Lcom/tencent/mm/ui/bindgooglecontact/p;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->gHK:Lcom/tencent/mm/ui/bindgooglecontact/p;

    return-object v0
.end method


# virtual methods
.method public final FZ()V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->At()Lcom/tencent/mm/modelfriend/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->gHL:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->gHp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelfriend/ad;->K(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindgooglecontact/o;->setCursor(Landroid/database/Cursor;)V

    .line 55
    invoke-super {p0}, Lcom/tencent/mm/ui/bc;->notifyDataSetChanged()V

    .line 57
    return-void
.end method

.method protected final Ga()V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindgooglecontact/o;->FZ()V

    .line 50
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    check-cast p1, Lcom/tencent/mm/modelfriend/ac;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/modelfriend/ac;

    invoke-direct {p1}, Lcom/tencent/mm/modelfriend/ac;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/modelfriend/ac;->convertFrom(Landroid/database/Cursor;)V

    return-object p1
.end method

.method public final a(Lcom/tencent/mm/ui/bindgooglecontact/p;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->gHK:Lcom/tencent/mm/ui/bindgooglecontact/p;

    .line 74
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 85
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->ddz:Landroid/view/LayoutInflater;

    sget v1, Lcom/tencent/mm/k;->aUT:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    new-instance v0, Lcom/tencent/mm/ui/bindgooglecontact/q;

    invoke-direct {v0, p0, p2}, Lcom/tencent/mm/ui/bindgooglecontact/q;-><init>(Lcom/tencent/mm/ui/bindgooglecontact/o;Landroid/view/View;)V

    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 92
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/bindgooglecontact/o;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelfriend/ac;

    .line 93
    if-nez v0, :cond_2

    .line 189
    :goto_1
    return-object p2

    .line 90
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bindgooglecontact/q;

    move-object v1, v0

    goto :goto_0

    .line 96
    :cond_2
    iput p1, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->position:I

    .line 97
    iget-object v2, v0, Lcom/tencent/mm/modelfriend/ac;->field_googlegmail:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->frH:Ljava/lang/String;

    .line 99
    iget v2, v0, Lcom/tencent/mm/modelfriend/ac;->field_status:I

    packed-switch v2, :pswitch_data_0

    .line 124
    :goto_2
    iget-object v2, v0, Lcom/tencent/mm/modelfriend/ac;->field_googlename:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 125
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dIs:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/tencent/mm/modelfriend/ac;->field_googlegmail:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->tb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :goto_3
    iget v2, v0, Lcom/tencent/mm/modelfriend/ac;->field_status:I

    packed-switch v2, :pswitch_data_1

    .line 151
    :goto_4
    iget v2, v0, Lcom/tencent/mm/modelfriend/ac;->field_googlecgistatus:I

    packed-switch v2, :pswitch_data_2

    .line 187
    :goto_5
    iget-object v1, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->gHM:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/tencent/mm/modelfriend/ac;->field_googlegmail:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 103
    :pswitch_0
    iget-object v2, v0, Lcom/tencent/mm/modelfriend/ac;->field_small_url:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 104
    iget-object v2, v0, Lcom/tencent/mm/modelfriend/ac;->field_username:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-static {v2, v6, v4}, Lcom/tencent/mm/m/c;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 106
    :goto_6
    if-nez v2, :cond_3

    .line 107
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->cID:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->mContext:Landroid/content/Context;

    sget v5, Lcom/tencent/mm/h;->afI:I

    invoke-static {v4, v5}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 109
    :cond_3
    iget-object v4, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->cID:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 114
    :pswitch_1
    iget-object v2, v0, Lcom/tencent/mm/modelfriend/ac;->field_googleid:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/m/c;->dP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 115
    if-nez v2, :cond_4

    .line 116
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->cID:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->mContext:Landroid/content/Context;

    sget v5, Lcom/tencent/mm/h;->afI:I

    invoke-static {v4, v5}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 118
    :cond_4
    iget-object v4, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->cID:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 127
    :cond_5
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dIs:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/tencent/mm/modelfriend/ac;->field_googlename:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 132
    :pswitch_2
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->gHN:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 133
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->gHN:Landroid/view/View;

    sget v4, Lcom/tencent/mm/h;->acX:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 134
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dQa:Landroid/widget/TextView;

    sget v4, Lcom/tencent/mm/n;->bov:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dQa:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/tencent/mm/f;->white:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 138
    :pswitch_3
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->gHN:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 139
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->gHN:Landroid/view/View;

    sget v4, Lcom/tencent/mm/h;->acY:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 140
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dQa:Landroid/widget/TextView;

    sget v4, Lcom/tencent/mm/n;->boC:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dQa:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/tencent/mm/f;->ZY:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 144
    :pswitch_4
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->gHN:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 145
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->gHN:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dQa:Landroid/widget/TextView;

    sget v4, Lcom/tencent/mm/n;->box:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dQa:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/tencent/mm/f;->ZY:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 153
    :pswitch_5
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dQa:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->gHO:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_5

    .line 157
    :pswitch_6
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->gHN:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 158
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->gHN:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dQa:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->gHO:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 161
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dQa:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/mm/f;->ZY:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget v2, v0, Lcom/tencent/mm/modelfriend/ac;->field_status:I

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_5

    .line 164
    :pswitch_7
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dQa:Landroid/widget/TextView;

    sget v3, Lcom/tencent/mm/n;->bow:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 167
    :pswitch_8
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dQa:Landroid/widget/TextView;

    sget v3, Lcom/tencent/mm/n;->boD:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 172
    :pswitch_9
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dQa:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->gHO:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 174
    iget v2, v0, Lcom/tencent/mm/modelfriend/ac;->field_status:I

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_5

    .line 176
    :pswitch_a
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dQa:Landroid/widget/TextView;

    sget v3, Lcom/tencent/mm/n;->bov:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dQa:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/mm/f;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 180
    :pswitch_b
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dQa:Landroid/widget/TextView;

    sget v3, Lcom/tencent/mm/n;->boC:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v2, v1, Lcom/tencent/mm/ui/bindgooglecontact/q;->dQa:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/mm/f;->ZY:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :cond_6
    move-object v2, v3

    goto/16 :goto_6

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 130
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 151
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_9
    .end packed-switch

    .line 162
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 174
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final ih(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/o;->gHL:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindgooglecontact/o;->closeCursor()V

    .line 79
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindgooglecontact/o;->FZ()V

    .line 80
    return-void
.end method
