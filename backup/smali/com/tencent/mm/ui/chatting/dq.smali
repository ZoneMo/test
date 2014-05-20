.class Lcom/tencent/mm/ui/chatting/dq;
.super Lcom/tencent/mm/ui/chatting/ce;
.source "SourceFile"


# instance fields
.field private gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field private gMW:I

.field private gMX:I

.field private gMY:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/ce;-><init>(I)V

    .line 158
    iput v0, p0, Lcom/tencent/mm/ui/chatting/dq;->gMW:I

    .line 159
    iput v0, p0, Lcom/tencent/mm/ui/chatting/dq;->gMX:I

    .line 160
    iput v0, p0, Lcom/tencent/mm/ui/chatting/dq;->gMY:I

    .line 164
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 168
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/cf;

    iget v0, v0, Lcom/tencent/mm/ui/chatting/cf;->type:I

    iget v1, p0, Lcom/tencent/mm/ui/chatting/dq;->dws:I

    if-eq v0, v1, :cond_1

    .line 171
    :cond_0
    new-instance p2, Lcom/tencent/mm/ui/chatting/cz;

    const v0, 0x7f030078

    invoke-direct {p2, p1, v0}, Lcom/tencent/mm/ui/chatting/cz;-><init>(Landroid/view/LayoutInflater;I)V

    .line 172
    new-instance v0, Lcom/tencent/mm/ui/chatting/lx;

    iget v1, p0, Lcom/tencent/mm/ui/chatting/dq;->dws:I

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/chatting/lx;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/tencent/mm/ui/chatting/lx;->c(Landroid/view/View;Z)Lcom/tencent/mm/ui/chatting/cf;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8c

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/dq;->gMW:I

    .line 174
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/dq;->gMX:I

    .line 175
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xd7

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/dq;->gMY:I

    .line 177
    :cond_1
    return-object p2
.end method

.method public a(Lcom/tencent/mm/ui/chatting/cf;ILcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 183
    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/dq;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    .line 184
    check-cast p1, Lcom/tencent/mm/ui/chatting/lx;

    .line 185
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/lx;->gMy:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    const/4 v0, 0x0

    .line 188
    iget-boolean v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    if-eqz v1, :cond_3

    .line 189
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {v2}, Lcom/tencent/mm/model/bv;->dw(Ljava/lang/String;)I

    move-result v5

    .line 191
    const/4 v1, -0x1

    if-eq v5, v1, :cond_8

    .line 192
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 194
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/lx;->cMS:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 195
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/lx;->gMy:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 198
    :cond_0
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 199
    iget-boolean v5, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOY:Z

    if-eqz v5, :cond_1

    .line 200
    iget-object v5, p1, Lcom/tencent/mm/ui/chatting/lx;->gMy:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/lx;->gMy:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :cond_1
    invoke-static {p3}, Lcom/tencent/mm/ui/chatting/dq;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    move-object v1, v0

    move-object v0, v2

    .line 205
    :goto_0
    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/base/MMTextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :goto_1
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/lx;->fng:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 221
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v0

    const v2, 0x12000031

    if-ne v0, v2, :cond_5

    .line 222
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    invoke-static {v0, p3}, Lcom/tencent/mm/ui/chatting/ks;->a(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 227
    :goto_2
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/lx;->cMS:Landroid/widget/ImageView;

    new-instance v2, Lcom/tencent/mm/ui/chatting/kk;

    invoke-direct {v2, v1}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 228
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/lx;->cMS:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/lx;->cMS:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 231
    iget-boolean v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    invoke-static {p4, v0, p2}, Lcom/tencent/mm/ui/chatting/kk;->a(Lcom/tencent/mm/storage/ak;ZI)Lcom/tencent/mm/ui/chatting/kk;

    move-result-object v0

    .line 233
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/MMTextView;->setTag(Ljava/lang/Object;)V

    .line 234
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 236
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNA:Lcom/tencent/mm/ui/chatting/fg;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMTextView;->a(Lcom/tencent/mm/ui/base/dm;)V

    .line 238
    iget v0, p1, Lcom/tencent/mm/ui/chatting/lx;->gMz:I

    if-ne v3, v0, :cond_6

    move v0, v3

    :goto_3
    sget-object v1, Lcom/tencent/mm/compatible/loader/g;->cff:Lcom/tencent/mm/compatible/loader/PluginResourceLoader;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/tencent/mm/compatible/loader/g;->cff:Lcom/tencent/mm/compatible/loader/PluginResourceLoader;

    iget-object v1, v1, Lcom/tencent/mm/compatible/loader/PluginResourceLoader;->cfm:Landroid/content/res/Resources;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/tencent/mm/compatible/loader/g;->cff:Lcom/tencent/mm/compatible/loader/PluginResourceLoader;

    iget-object v1, v1, Lcom/tencent/mm/compatible/loader/PluginResourceLoader;->cfm:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/tencent/mm/ui/chatting/dq;->gMW:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/mm/ui/chatting/dq;->gMY:I

    :goto_4
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tencent/mm/ui/chatting/dq;->gMY:I

    iget v1, p0, Lcom/tencent/mm/ui/chatting/dq;->gMX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/dq;->gMY:I

    .line 239
    :cond_2
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    iget v1, p0, Lcom/tencent/mm/ui/chatting/dq;->gMY:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMTextView;->setMaxWidth(I)V

    .line 240
    return-void

    .line 208
    :cond_3
    iget-object v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    .line 209
    invoke-static {v0}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/lx;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    :goto_5
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/lx;->gMy:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMTextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 212
    :cond_4
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/lx;->cMS:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_5

    .line 224
    :cond_5
    iget-object v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->gNr:Lcom/tencent/mm/ui/chatting/lm;

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/lm;->e(Landroid/widget/TextView;)V

    goto/16 :goto_2

    :cond_6
    move v0, v4

    .line 238
    goto :goto_3

    :cond_7
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/tencent/mm/ui/chatting/dq;->gMW:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/mm/ui/chatting/dq;->gMY:I

    goto :goto_4

    :cond_8
    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_0
.end method

.method public a(Landroid/view/ContextMenu;Landroid/view/View;Lcom/tencent/mm/storage/ak;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 255
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->aCc()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->aBW()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/kk;

    .line 257
    iget v0, v0, Lcom/tencent/mm/ui/chatting/kk;->position:I

    .line 259
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->aCc()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    const/16 v1, 0x66

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0701e1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 262
    :cond_1
    const/16 v1, 0x6c

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0701ba

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 263
    const-string v1, "favorite"

    invoke-static {v1}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    const/16 v1, 0x74

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070a4c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 267
    :cond_2
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->aCc()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/tencent/mm/p/p;->xI()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/dq;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJJ()Z

    move-result v1

    if-nez v1, :cond_3

    .line 268
    const/16 v1, 0x72

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070266

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 270
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/dq;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJJ()Z

    move-result v1

    if-nez v1, :cond_4

    .line 271
    const/16 v1, 0x64

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0701da

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 276
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/View;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method
