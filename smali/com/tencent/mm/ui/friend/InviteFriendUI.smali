.class public Lcom/tencent/mm/ui/friend/InviteFriendUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/m/p;


# instance fields
.field private cqS:Landroid/widget/ImageView;

.field private hbA:Ljava/lang/String;

.field private hbB:Ljava/lang/String;

.field private hbC:Landroid/widget/Button;

.field private hbD:I

.field private hbE:I

.field private hbx:Ljava/lang/String;

.field private hby:I

.field private hbz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/InviteFriendUI;)I
    .locals 1
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hby:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/friend/InviteFriendUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/friend/InviteFriendUI;)V
    .locals 5
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbD:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbE:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2aef

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbD:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/friend/InviteFriendUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/friend/InviteFriendUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/friend/InviteFriendUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbz:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 115
    sget v0, Lcom/tencent/mm/i;->awX:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->cqS:Landroid/widget/ImageView;

    .line 116
    sget v0, Lcom/tencent/mm/i;->awZ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    sget v1, Lcom/tencent/mm/i;->axb:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    sget v2, Lcom/tencent/mm/i;->axa:I

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 120
    sget v3, Lcom/tencent/mm/i;->awY:I

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbC:Landroid/widget/Button;

    .line 121
    sget v3, Lcom/tencent/mm/i;->axc:I

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 123
    iget-object v5, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbz:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    sget v5, Lcom/tencent/mm/n;->axa:I

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbz:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget v2, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hby:I

    if-ne v2, v8, :cond_0

    .line 127
    iget-object v2, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->cqS:Landroid/widget/ImageView;

    sget v5, Lcom/tencent/mm/h;->adL:I

    invoke-static {p0, v5}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/tencent/mm/n;->bdP:I

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbx:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v2, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbx:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/a/f;->h([B)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v5

    if-nez v5, :cond_3

    .line 132
    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tencent/mm/m/m;->K(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 142
    :goto_0
    if-eqz v2, :cond_5

    .line 143
    iget-object v5, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->cqS:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    :cond_0
    :goto_1
    iget v2, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hby:I

    if-nez v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->cqS:Landroid/widget/ImageView;

    sget v5, Lcom/tencent/mm/h;->adM:I

    invoke-static {p0, v5}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/tencent/mm/n;->bdR:I

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbx:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v2, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbx:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/a/j;->aw(Ljava/lang/String;)I

    move-result v2

    int-to-long v5, v2

    .line 154
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_9

    .line 155
    invoke-static {v5, v6}, Lcom/tencent/mm/m/c;->t(J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 157
    :goto_2
    if-nez v2, :cond_6

    .line 158
    iget-object v2, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->cqS:Landroid/widget/ImageView;

    sget v4, Lcom/tencent/mm/h;->adM:I

    invoke-static {p0, v4}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    :goto_3
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    :cond_1
    iget v2, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hby:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 167
    iget-object v2, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbC:Landroid/widget/Button;

    sget v4, Lcom/tencent/mm/n;->boI:I

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 168
    iget-object v2, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->cqS:Landroid/widget/ImageView;

    sget v4, Lcom/tencent/mm/h;->adK:I

    invoke-static {p0, v4}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/tencent/mm/n;->bdM:I

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbx:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v1

    if-nez v1, :cond_7

    .line 173
    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/m/m;->K(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 177
    :goto_4
    if-eqz v1, :cond_8

    .line 178
    iget-object v2, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->cqS:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    :goto_5
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbz:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbx:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->tb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbC:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/friend/bi;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/friend/bi;-><init>(Lcom/tencent/mm/ui/friend/InviteFriendUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    new-instance v0, Lcom/tencent/mm/ui/friend/bp;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/bp;-><init>(Lcom/tencent/mm/ui/friend/InviteFriendUI;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    new-instance v0, Lcom/tencent/mm/ui/friend/bq;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/bq;-><init>(Lcom/tencent/mm/ui/friend/InviteFriendUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 371
    return-void

    .line 135
    :cond_3
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Al()Lcom/tencent/mm/modelfriend/i;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/tencent/mm/modelfriend/i;->fs(Ljava/lang/String;)Lcom/tencent/mm/modelfriend/h;

    move-result-object v2

    .line 136
    if-eqz v2, :cond_4

    .line 137
    invoke-virtual {v2}, Lcom/tencent/mm/modelfriend/h;->yL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/tencent/mm/modelfriend/z;->c(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    move-object v2, v4

    .line 139
    goto/16 :goto_0

    .line 145
    :cond_5
    iget-object v2, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->cqS:Landroid/widget/ImageView;

    sget v5, Lcom/tencent/mm/h;->adL:I

    invoke-static {p0, v5}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 160
    :cond_6
    iget-object v4, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->cqS:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 175
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbA:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/m/c;->dP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_4

    .line 180
    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->cqS:Landroid/widget/ImageView;

    sget v2, Lcom/tencent/mm/h;->adK:I

    invoke-static {p0, v2}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_9
    move-object v2, v4

    goto/16 :goto_2
.end method

.method public final ei(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 375
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbx:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbx:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-static {p1}, Lcom/tencent/mm/m/c;->dU(Ljava/lang/String;)J

    move-result-wide v0

    .line 379
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbx:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hby:I

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->cqS:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p1, v1, v2}, Lcom/tencent/mm/m/c;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/tencent/mm/k;->aVe:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget v0, Lcom/tencent/mm/n;->bpi:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->mn(I)V

    .line 78
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    const-string v1, "friend_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hby:I

    .line 80
    const-string v1, "friend_nick"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbz:Ljava/lang/String;

    .line 81
    const-string v1, "friend_num"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbx:Ljava/lang/String;

    .line 82
    const-string v1, "friend_googleID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbA:Ljava/lang/String;

    .line 83
    const-string v1, "friend_googleItemID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbB:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbx:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbx:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/InviteFriendUI;->FR()V

    .line 89
    const-string v1, "search_kvstat_scene"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbD:I

    .line 90
    const-string v1, "search_kvstat_position"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/friend/InviteFriendUI;->hbE:I

    .line 91
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 97
    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/m/m;->e(Lcom/tencent/mm/m/p;)V

    .line 98
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 104
    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/m/m;->d(Lcom/tencent/mm/m/p;)V

    .line 105
    return-void
.end method
