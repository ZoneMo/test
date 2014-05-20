.class final Lcom/tencent/mm/ui/contact/cs;
.super Lcom/tencent/mm/ui/contact/a;
.source "SourceFile"


# instance fields
.field private gUt:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 258
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/mm/ui/contact/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iput-object p2, p0, Lcom/tencent/mm/ui/contact/cs;->gUt:Ljava/util/List;

    .line 260
    return-void
.end method


# virtual methods
.method public final FZ()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/cs;->gUt:Ljava/util/List;

    if-nez v0, :cond_0

    .line 289
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/k;->aAG()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/cs;->setCursor(Landroid/database/Cursor;)V

    .line 294
    :goto_0
    invoke-super {p0}, Lcom/tencent/mm/ui/contact/a;->notifyDataSetChanged()V

    .line 295
    return-void

    .line 291
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/cs;->gUt:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->as(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/cs;->setCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected final Ga()V
    .locals 0

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/cs;->FZ()V

    .line 274
    return-void
.end method

.method public final a(Lcom/tencent/mm/storage/i;Landroid/database/Cursor;)Lcom/tencent/mm/storage/i;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 265
    new-instance p1, Lcom/tencent/mm/storage/i;

    invoke-direct {p1}, Lcom/tencent/mm/storage/i;-><init>()V

    .line 267
    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/storage/i;->convertFrom(Landroid/database/Cursor;)V

    .line 268
    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 252
    check-cast p1, Lcom/tencent/mm/storage/i;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/ui/contact/cs;->a(Lcom/tencent/mm/storage/i;Landroid/database/Cursor;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/cs;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/contact/cs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/i;

    .line 311
    if-nez p2, :cond_0

    .line 312
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/cs;->context:Landroid/content/Context;

    const v2, 0x7f030256

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 313
    new-instance v2, Lcom/tencent/mm/ui/contact/ct;

    invoke-direct {v2}, Lcom/tencent/mm/ui/contact/ct;-><init>()V

    .line 314
    const v1, 0x7f0a06e8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/contact/ct;->cMU:Landroid/widget/TextView;

    .line 315
    const v1, 0x7f0a0290

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/contact/ct;->cMS:Landroid/widget/ImageView;

    .line 316
    const v1, 0x7f0a06e9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/contact/ct;->gUu:Landroid/widget/TextView;

    .line 317
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 322
    :goto_0
    iget-object v2, v1, Lcom/tencent/mm/ui/contact/ct;->cMU:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/ui/contact/ct;->cMU:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/cs;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/tencent/mm/ui/contact/ct;->cMU:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v2, v1, Lcom/tencent/mm/ui/contact/ct;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 328
    iget-object v1, v1, Lcom/tencent/mm/ui/contact/ct;->gUu:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rs()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/storage/i;->tD(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/cs;->context:Landroid/content/Context;

    const v3, 0x7f07099a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :goto_2
    return-object p2

    .line 320
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/contact/ct;

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rs()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 331
    :cond_2
    iget-object v1, v1, Lcom/tencent/mm/ui/contact/ct;->gUu:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method
