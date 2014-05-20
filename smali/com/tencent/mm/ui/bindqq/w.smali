.class final Lcom/tencent/mm/ui/bindqq/w;
.super Lcom/tencent/mm/ui/bc;
.source "SourceFile"


# instance fields
.field final synthetic gJB:Lcom/tencent/mm/ui/bindqq/QQGroupUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/bindqq/QQGroupUI;Landroid/content/Context;Lcom/tencent/mm/ui/bd;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/tencent/mm/ui/bindqq/w;->gJB:Lcom/tencent/mm/ui/bindqq/QQGroupUI;

    .line 226
    new-instance v0, Lcom/tencent/mm/modelfriend/at;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/at;-><init>()V

    invoke-direct {p0, p2, v0}, Lcom/tencent/mm/ui/bc;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 227
    invoke-super {p0, p3}, Lcom/tencent/mm/ui/bc;->a(Lcom/tencent/mm/ui/bd;)V

    .line 228
    iput-object p2, p0, Lcom/tencent/mm/ui/bindqq/w;->context:Landroid/content/Context;

    .line 229
    return-void
.end method


# virtual methods
.method public final FZ()V
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ao()Lcom/tencent/mm/modelfriend/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/au;->Ad()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindqq/w;->setCursor(Landroid/database/Cursor;)V

    .line 240
    invoke-super {p0}, Lcom/tencent/mm/ui/bc;->notifyDataSetChanged()V

    .line 241
    return-void
.end method

.method protected final Ga()V
    .locals 0

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindqq/w;->FZ()V

    .line 235
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    check-cast p1, Lcom/tencent/mm/modelfriend/at;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/modelfriend/at;

    invoke-direct {p1}, Lcom/tencent/mm/modelfriend/at;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/modelfriend/at;->convertFrom(Landroid/database/Cursor;)V

    return-object p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 245
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/bindqq/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelfriend/at;

    .line 247
    if-nez p2, :cond_0

    .line 248
    new-instance v2, Lcom/tencent/mm/ui/bindqq/x;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/bindqq/x;-><init>(Lcom/tencent/mm/ui/bindqq/w;)V

    .line 249
    iget-object v1, p0, Lcom/tencent/mm/ui/bindqq/w;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/k;->aXT:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 250
    sget v1, Lcom/tencent/mm/i;->aEP:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/bindqq/x;->cqT:Landroid/widget/TextView;

    .line 251
    sget v1, Lcom/tencent/mm/i;->aER:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/bindqq/x;->gJD:Landroid/widget/TextView;

    .line 252
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 256
    :goto_0
    iget-object v2, v1, Lcom/tencent/mm/ui/bindqq/x;->cqT:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/at;->Ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/at;->zZ()I

    move-result v2

    if-nez v2, :cond_2

    .line 258
    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/at;->zY()I

    move-result v2

    if-nez v2, :cond_1

    .line 259
    iget-object v0, v1, Lcom/tencent/mm/ui/bindqq/x;->gJD:Landroid/widget/TextView;

    sget v2, Lcom/tencent/mm/n;->bts:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 266
    :goto_1
    iget-object v0, v1, Lcom/tencent/mm/ui/bindqq/x;->gJD:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    return-object p2

    .line 254
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/bindqq/x;

    goto :goto_0

    .line 261
    :cond_1
    iget-object v2, v1, Lcom/tencent/mm/ui/bindqq/x;->gJD:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/bindqq/w;->gJB:Lcom/tencent/mm/ui/bindqq/QQGroupUI;

    sget v4, Lcom/tencent/mm/n;->aER:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/at;->zY()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/at;->zZ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/ui/bindqq/QQGroupUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 264
    :cond_2
    iget-object v2, v1, Lcom/tencent/mm/ui/bindqq/x;->gJD:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/bindqq/w;->gJB:Lcom/tencent/mm/ui/bindqq/QQGroupUI;

    sget v4, Lcom/tencent/mm/n;->aER:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/at;->zY()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/at;->zZ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/ui/bindqq/QQGroupUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
