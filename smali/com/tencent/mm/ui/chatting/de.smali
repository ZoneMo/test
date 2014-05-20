.class final Lcom/tencent/mm/ui/chatting/de;
.super Lcom/tencent/mm/ui/chatting/ce;
.source "SourceFile"


# instance fields
.field private gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 151
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ce;-><init>(I)V

    .line 153
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 157
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/cf;

    iget v0, v0, Lcom/tencent/mm/ui/chatting/cf;->type:I

    iget v1, p0, Lcom/tencent/mm/ui/chatting/de;->dws:I

    if-eq v0, v1, :cond_1

    .line 158
    :cond_0
    new-instance p2, Lcom/tencent/mm/ui/chatting/cz;

    const v0, 0x7f03007f

    invoke-direct {p2, p1, v0}, Lcom/tencent/mm/ui/chatting/cz;-><init>(Landroid/view/LayoutInflater;I)V

    .line 159
    new-instance v0, Lcom/tencent/mm/ui/chatting/ke;

    iget v1, p0, Lcom/tencent/mm/ui/chatting/de;->dws:I

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/chatting/ke;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/tencent/mm/ui/chatting/ke;->c(Landroid/view/View;Z)Lcom/tencent/mm/ui/chatting/cf;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    :cond_1
    return-object p2
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/cf;ILcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/de;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    .line 169
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/i;->ja(Ljava/lang/String;)Lcom/tencent/mm/storage/y;

    move-result-object v2

    .line 171
    check-cast p1, Lcom/tencent/mm/ui/chatting/ke;

    .line 172
    if-eqz v2, :cond_1

    .line 173
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/u;->uk(Ljava/lang/String;)Lcom/tencent/mm/storage/u;

    move-result-object v6

    .line 174
    invoke-virtual {v6}, Lcom/tencent/mm/storage/u;->Ev()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->bF(J)V

    .line 178
    :cond_0
    invoke-virtual {v2}, Lcom/tencent/mm/storage/y;->apQ()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/tencent/mm/storage/u;->Ev()Z

    move-result v0

    if-nez v0, :cond_4

    .line 179
    iget-object v3, p1, Lcom/tencent/mm/ui/chatting/ke;->cZZ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    const/4 v4, 0x1

    move-wide v8, v0

    move-object v1, v2

    move-object v0, v3

    move-wide v2, v8

    .line 188
    :goto_0
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->a(Lcom/tencent/mm/storage/y;JZZ)V

    .line 191
    invoke-virtual {v6}, Lcom/tencent/mm/storage/u;->Ev()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    invoke-virtual {v6}, Lcom/tencent/mm/storage/u;->Ew()V

    .line 193
    invoke-virtual {v6}, Lcom/tencent/mm/storage/u;->Eu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/tencent/mm/storage/ak;->setContent(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p4}, Lcom/tencent/mm/storage/ap;->a(JLcom/tencent/mm/storage/ak;)V

    .line 201
    :cond_1
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ke;->cMS:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ke;->gMy:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    const/4 v0, 0x0

    .line 204
    iget-boolean v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    if-eqz v1, :cond_8

    .line 205
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/bv;->dw(Ljava/lang/String;)I

    move-result v1

    .line 206
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 207
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 209
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ke;->cMS:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 210
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ke;->gMy:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-static {p3}, Lcom/tencent/mm/ui/chatting/de;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    move-object v0, v1

    .line 214
    :cond_2
    iget-boolean v2, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOY:Z

    if-eqz v2, :cond_3

    .line 215
    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/ke;->gMy:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ke;->gMy:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    move-object v4, v0

    .line 231
    :goto_1
    iget-object v7, p1, Lcom/tencent/mm/ui/chatting/ke;->cZZ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    new-instance v0, Lcom/tencent/mm/ui/chatting/kk;

    iget-boolean v2, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p4

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IC)V

    invoke-virtual {v7, v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->setTag(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ke;->cZZ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ke;->cZZ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 235
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ke;->cMS:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/kk;

    invoke-direct {v1, v4}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 236
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ke;->cMS:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ke;->cMS:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 238
    return-void

    .line 181
    :cond_4
    invoke-virtual {v2}, Lcom/tencent/mm/storage/y;->apQ()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 182
    iget-object v3, p1, Lcom/tencent/mm/ui/chatting/ke;->cZZ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    .line 188
    :cond_5
    const/4 v4, 0x0

    move-wide v8, v0

    move-object v1, v2

    move-object v0, v3

    move-wide v2, v8

    goto/16 :goto_0

    .line 185
    :cond_6
    invoke-static {p4, v2, p3}, Lcom/tencent/mm/ui/chatting/de;->a(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/storage/y;Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    .line 188
    iget-object v3, p1, Lcom/tencent/mm/ui/chatting/ke;->cZZ:Lcom/tencent/mm/pluginsdk/ui/EmojiView;

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/y;->getType()I

    move-result v4

    sget v5, Lcom/tencent/mm/storage/y;->gho:I

    if-eq v4, v5, :cond_7

    invoke-virtual {v2}, Lcom/tencent/mm/storage/y;->getType()I

    move-result v4

    sget v5, Lcom/tencent/mm/storage/y;->ghr:I

    if-ne v4, v5, :cond_5

    :cond_7
    const/4 v4, 0x1

    move-wide v8, v0

    move-object v1, v2

    move-object v0, v3

    move-wide v2, v8

    goto/16 :goto_0

    .line 221
    :cond_8
    iget-object v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    .line 222
    invoke-static {v0}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 223
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ke;->cMS:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    :goto_2
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ke;->gMy:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 226
    :cond_9
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/ke;->cMS:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final a(Landroid/view/ContextMenu;Landroid/view/View;Lcom/tencent/mm/storage/ak;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 242
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->aCd()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/kk;

    .line 244
    iget v0, v0, Lcom/tencent/mm/ui/chatting/kk;->position:I

    .line 246
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v1

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/mm/pluginsdk/i;->ja(Ljava/lang/String;)Lcom/tencent/mm/storage/y;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v2

    sget v3, Lcom/tencent/mm/storage/y;->ggZ:I

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBK()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    const/16 v2, 0x68

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0701e3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 250
    const/16 v2, 0x71

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0701ba

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 259
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 260
    const/16 v1, 0x67

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07024f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/de;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJJ()Z

    move-result v1

    if-nez v1, :cond_2

    .line 263
    const/16 v1, 0x64

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0701e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 267
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 251
    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v2

    sget v3, Lcom/tencent/mm/storage/w;->ggY:I

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v2

    sget v3, Lcom/tencent/mm/storage/w;->ggX:I

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v2

    sget v3, Lcom/tencent/mm/storage/w;->ggW:I

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v2

    sget v3, Lcom/tencent/mm/storage/y;->ghl:I

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v2

    sget v3, Lcom/tencent/mm/storage/y;->ghk:I

    if-eq v2, v3, :cond_0

    .line 254
    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBK()Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    const/16 v2, 0x75

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070861

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public final a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/View;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method
