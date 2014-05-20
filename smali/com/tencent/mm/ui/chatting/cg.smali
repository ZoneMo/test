.class final Lcom/tencent/mm/ui/chatting/cg;
.super Lcom/tencent/mm/ui/chatting/ce;
.source "SourceFile"


# instance fields
.field private gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 192
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ce;-><init>(I)V

    .line 194
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 198
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/cf;

    iget v0, v0, Lcom/tencent/mm/ui/chatting/cf;->type:I

    iget v1, p0, Lcom/tencent/mm/ui/chatting/cg;->dws:I

    if-eq v0, v1, :cond_1

    .line 199
    :cond_0
    new-instance p2, Lcom/tencent/mm/ui/chatting/cz;

    const v0, 0x7f03007a

    invoke-direct {p2, p1, v0}, Lcom/tencent/mm/ui/chatting/cz;-><init>(Landroid/view/LayoutInflater;I)V

    .line 200
    new-instance v0, Lcom/tencent/mm/ui/chatting/i;

    iget v1, p0, Lcom/tencent/mm/ui/chatting/cg;->dws:I

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/chatting/i;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/tencent/mm/ui/chatting/i;->c(Landroid/view/View;Z)Lcom/tencent/mm/ui/chatting/cf;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 203
    :cond_1
    return-object p2
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/cf;ILcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0x8

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 208
    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/cg;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    .line 209
    check-cast p1, Lcom/tencent/mm/ui/chatting/i;

    .line 210
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/i;->gMy:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/u;->uk(Ljava/lang/String;)Lcom/tencent/mm/storage/u;

    move-result-object v8

    .line 214
    invoke-virtual {v8}, Lcom/tencent/mm/storage/u;->Ev()Z

    move-result v0

    if-nez v0, :cond_9

    .line 215
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->bF(J)V

    .line 217
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_a

    .line 219
    invoke-static {v0}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v0

    .line 221
    :goto_0
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/tencent/mm/j/b;->cgF:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 222
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/mm/j/b;->cgF:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/tencent/mm/pluginsdk/i;->ja(Ljava/lang/String;)Lcom/tencent/mm/storage/y;

    move-result-object v0

    .line 226
    :goto_1
    invoke-virtual {v8}, Lcom/tencent/mm/storage/u;->yK()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v8}, Lcom/tencent/mm/storage/u;->yK()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    if-nez v0, :cond_8

    .line 227
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    invoke-virtual {v8}, Lcom/tencent/mm/storage/u;->yK()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/i;->ja(Ljava/lang/String;)Lcom/tencent/mm/storage/y;

    move-result-object v0

    move-object v1, v0

    .line 230
    :goto_2
    if-eqz v1, :cond_4

    .line 233
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/i;->cZZ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->getType()I

    move-result v4

    sget v9, Lcom/tencent/mm/storage/y;->ghr:I

    if-ne v4, v9, :cond_3

    move v4, v5

    :goto_3
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->a(Lcom/tencent/mm/storage/y;JZZ)V

    .line 234
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/i;->gKe:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    invoke-virtual {v8}, Lcom/tencent/mm/storage/u;->Ev()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {v8}, Lcom/tencent/mm/storage/u;->Ew()V

    .line 238
    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->yK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/tencent/mm/storage/u;->eX(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/au;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/tencent/mm/storage/u;->uj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/tencent/mm/storage/ak;->setContent(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p4}, Lcom/tencent/mm/storage/ap;->a(JLcom/tencent/mm/storage/ak;)V

    .line 253
    :cond_0
    :goto_4
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/i;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    iget-boolean v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    if-eqz v0, :cond_6

    .line 257
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/bv;->dw(Ljava/lang/String;)I

    move-result v0

    .line 258
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 259
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 261
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/i;->cMS:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 263
    invoke-static {p3}, Lcom/tencent/mm/ui/chatting/cg;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    move-object v6, v0

    .line 265
    :cond_1
    iget-boolean v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOY:Z

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/i;->gMy:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/i;->gMy:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    move-object v4, v6

    .line 280
    :goto_5
    iget-object v8, p1, Lcom/tencent/mm/ui/chatting/i;->cZZ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    new-instance v0, Lcom/tencent/mm/ui/chatting/kk;

    iget-boolean v2, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    move-object v1, p4

    move v3, p2

    move v5, v7

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IC)V

    invoke-virtual {v8, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->setTag(Ljava/lang/Object;)V

    .line 281
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/i;->cZZ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/i;->cZZ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 283
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/i;->gKe:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/i;->gKe:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/i;->cZZ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 285
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/i;->cMS:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/kk;

    invoke-direct {v1, v4}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 286
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/i;->cMS:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/i;->cMS:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 288
    return-void

    :cond_3
    move v4, v7

    .line 233
    goto/16 :goto_3

    .line 243
    :cond_4
    const-string v0, "emoji"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcom/tencent/mm/an/a;->getDensity(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/tencent/mm/w/g;->a(Ljava/lang/String;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 246
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cg;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/h;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_5
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/i;->cZZ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->i(Landroid/graphics/Bitmap;)V

    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/i;->gKe:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 271
    :cond_6
    iget-object v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    .line 272
    invoke-static {v0}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 273
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/i;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    :goto_6
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 276
    :cond_7
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/i;->cMS:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    move-object v1, v0

    goto/16 :goto_2

    :cond_9
    move-object v0, v6

    goto/16 :goto_1

    :cond_a
    move-object v0, v6

    goto/16 :goto_0
.end method

.method public final a(Landroid/view/ContextMenu;Landroid/view/View;Lcom/tencent/mm/storage/ak;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 300
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/kk;

    .line 301
    iget v0, v0, Lcom/tencent/mm/ui/chatting/kk;->position:I

    .line 302
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/storage/u;->uk(Ljava/lang/String;)Lcom/tencent/mm/storage/u;

    move-result-object v1

    .line 304
    invoke-virtual {v1}, Lcom/tencent/mm/storage/u;->yK()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/u;->yK()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/u;->yK()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/tencent/mm/pluginsdk/i;->ja(Ljava/lang/String;)Lcom/tencent/mm/storage/y;

    move-result-object v1

    .line 307
    if-eqz v1, :cond_0

    .line 308
    const/16 v2, 0x71

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0701ba

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 309
    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v1

    sget v2, Lcom/tencent/mm/storage/y;->ggZ:I

    if-ne v1, v2, :cond_0

    .line 310
    const/16 v1, 0x68

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0701e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v6, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cg;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJJ()Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    const/16 v1, 0x64

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0701e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 321
    :cond_1
    return v6
.end method

.method public final a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/View;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method
