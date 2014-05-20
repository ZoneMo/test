.class final Lcom/tencent/mm/ui/chatting/du;
.super Lcom/tencent/mm/ui/chatting/ce;
.source "SourceFile"


# instance fields
.field private gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ce;-><init>(I)V

    .line 190
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 194
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/cf;

    iget v0, v0, Lcom/tencent/mm/ui/chatting/cf;->type:I

    iget v1, p0, Lcom/tencent/mm/ui/chatting/du;->dws:I

    if-eq v0, v1, :cond_1

    .line 195
    :cond_0
    new-instance p2, Lcom/tencent/mm/ui/chatting/cz;

    const v0, 0x7f030086

    invoke-direct {p2, p1, v0}, Lcom/tencent/mm/ui/chatting/cz;-><init>(Landroid/view/LayoutInflater;I)V

    .line 196
    new-instance v0, Lcom/tencent/mm/ui/chatting/ma;

    iget v1, p0, Lcom/tencent/mm/ui/chatting/du;->dws:I

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/chatting/ma;-><init>(I)V

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/du;->gJU:Z

    invoke-virtual {v0, p2, v1}, Lcom/tencent/mm/ui/chatting/ma;->d(Landroid/view/View;Z)Lcom/tencent/mm/ui/chatting/cf;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 199
    :cond_1
    return-object p2
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/cf;ILcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 205
    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/du;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    .line 206
    check-cast p1, Lcom/tencent/mm/ui/chatting/ma;

    .line 207
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ma;->gMy:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ma;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    const/4 v0, 0x0

    .line 210
    iget-boolean v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    if-eqz v1, :cond_4

    .line 211
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/bv;->dw(Ljava/lang/String;)I

    move-result v1

    .line 212
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 213
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 215
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ma;->cMS:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 216
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ma;->gMy:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-static {p3}, Lcom/tencent/mm/ui/chatting/du;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    move-object v0, v1

    .line 220
    :cond_0
    iget-boolean v4, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOY:Z

    if-eqz v4, :cond_1

    .line 221
    iget-object v4, p1, Lcom/tencent/mm/ui/chatting/ma;->gMy:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ma;->gMy:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/tencent/mm/ui/base/AnimImageView;->dn(Z)V

    .line 236
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ma;->gRL:Lcom/tencent/mm/ui/base/AnimImageView;

    iget-boolean v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    invoke-static {}, Lcom/tencent/mm/ui/base/AnimImageView;->aGB()V

    .line 237
    invoke-static {p1, p4, p2, p3}, Lcom/tencent/mm/ui/chatting/ma;->a(Lcom/tencent/mm/ui/chatting/ma;Lcom/tencent/mm/storage/ak;ILcom/tencent/mm/ui/chatting/ChattingUI;)V

    .line 238
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ma;->cMS:Landroid/widget/ImageView;

    new-instance v4, Lcom/tencent/mm/ui/chatting/kk;

    invoke-direct {v4, v0}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 239
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ma;->cMS:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ma;->cMS:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 242
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ma;->gKj:Landroid/widget/ImageView;

    iget-object v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/v;->aIO()J

    move-result-wide v4

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    invoke-static {p4}, Lcom/tencent/mm/modelvoice/bi;->j(Lcom/tencent/mm/storage/ak;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->aCm()Ljava/lang/String;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 246
    :cond_3
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ma;->gKg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    :goto_2
    return-void

    .line 226
    :cond_4
    iget-object v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    .line 227
    invoke-static {v0}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 228
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ma;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    :goto_3
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ma;->gMy:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_5
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ma;->cMS:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move v0, v2

    .line 242
    goto :goto_1

    .line 248
    :cond_7
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ma;->gKg:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ma;->gKg:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/kk;->wG(Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/kk;

    move-result-object v0

    invoke-static {p3, v1, v0}, Lcom/tencent/mm/ui/chatting/du;->b(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public final a(Landroid/view/ContextMenu;Landroid/view/View;Lcom/tencent/mm/storage/ak;)Z
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f0701e0

    const/16 v8, 0x79

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/kk;

    .line 257
    iget v3, v0, Lcom/tencent/mm/ui/chatting/kk;->position:I

    .line 260
    new-instance v0, Lcom/tencent/mm/modelvoice/bf;

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/tencent/mm/modelvoice/bf;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/bf;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 265
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJP()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 267
    const/16 v0, 0x78

    const v4, 0x7f07026b

    invoke-interface {p1, v3, v0, v2, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 273
    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    .line 274
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/model/w;->cH(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 279
    :goto_1
    const/16 v4, 0x73

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0701df

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v2, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 280
    const-string v4, "favorite"

    invoke-static {v4}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 281
    const/16 v4, 0x74

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070a4c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v2, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 283
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/p/p;->xJ()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/du;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJJ()Z

    move-result v0

    if-nez v0, :cond_3

    .line 284
    const/16 v0, 0x72

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070266

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v0, v2, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 289
    :cond_3
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->Bj()Z

    move-result v0

    if-nez v0, :cond_8

    .line 290
    invoke-interface {p1, v3, v8, v2, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move v0, v1

    .line 294
    :goto_2
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/du;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJJ()Z

    move-result v4

    if-nez v4, :cond_4

    .line 295
    const/16 v4, 0x64

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0701dc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v2, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 300
    :cond_4
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->Bj()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v0, :cond_5

    .line 301
    invoke-interface {p1, v3, v8, v2, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 307
    :cond_5
    return v1

    .line 270
    :cond_6
    const/16 v0, 0x77

    const v4, 0x7f07026a

    invoke-interface {p1, v3, v0, v2, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 274
    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto :goto_2
.end method

.method public final a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 313
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 342
    :goto_0
    return v0

    .line 316
    :pswitch_0
    invoke-virtual {p2, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dN(Z)V

    goto :goto_0

    .line 321
    :pswitch_1
    invoke-virtual {p2, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dN(Z)V

    goto :goto_0

    .line 326
    :pswitch_2
    invoke-static {}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aKb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {p2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0708c4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/ui/chatting/dv;

    invoke-direct {v4, p0, p2, p3}, Lcom/tencent/mm/ui/chatting/dv;-><init>(Lcom/tencent/mm/ui/chatting/du;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p2, p3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Q(Lcom/tencent/mm/storage/ak;)V

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x77
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Landroid/view/View;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method
