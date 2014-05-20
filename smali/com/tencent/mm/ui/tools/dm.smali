.class final Lcom/tencent/mm/ui/tools/dm;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic hls:Lcom/tencent/mm/ui/tools/dl;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/ui/tools/dl;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/dm;->hls:Lcom/tencent/mm/ui/tools/dl;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 241
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/ui/tools/dl;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/dm;-><init>(Lcom/tencent/mm/ui/tools/dl;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dm;->hls:Lcom/tencent/mm/ui/tools/dl;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/tools/dl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dm;->hls:Lcom/tencent/mm/ui/tools/dl;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/dl;->b(Lcom/tencent/mm/ui/tools/dl;)Lcom/tencent/mm/ui/base/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/bx;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dm;->hls:Lcom/tencent/mm/ui/tools/dl;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/dl;->b(Lcom/tencent/mm/ui/tools/dl;)Lcom/tencent/mm/ui/base/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/bx;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 158
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 163
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/dm;->hls:Lcom/tencent/mm/ui/tools/dl;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/tools/dl;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 174
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dm;->hls:Lcom/tencent/mm/ui/tools/dl;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/tools/dl;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 175
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dm;->hls:Lcom/tencent/mm/ui/tools/dl;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/dl;->c(Lcom/tencent/mm/ui/tools/dl;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/mm/k;->aXk:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/ui/tools/dn;

    invoke-direct {v1, p0, v4}, Lcom/tencent/mm/ui/tools/dn;-><init>(Lcom/tencent/mm/ui/tools/dm;B)V

    sget v0, Lcom/tencent/mm/i;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/tools/dn;->dYB:Landroid/widget/TextView;

    sget v0, Lcom/tencent/mm/i;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/ui/tools/dn;->dZa:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v0, v0, Lcom/tencent/mm/ui/tools/dn;->dYB:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/dm;->hls:Lcom/tencent/mm/ui/tools/dl;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/dl;->f(Lcom/tencent/mm/ui/tools/dl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :goto_1
    return-object p2

    .line 175
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/dn;

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dm;->hls:Lcom/tencent/mm/ui/tools/dl;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/tools/dl;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dm;->hls:Lcom/tencent/mm/ui/tools/dl;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/dl;->c(Lcom/tencent/mm/ui/tools/dl;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/mm/k;->aXj:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/ui/tools/dn;

    invoke-direct {v1, p0, v4}, Lcom/tencent/mm/ui/tools/dn;-><init>(Lcom/tencent/mm/ui/tools/dm;B)V

    sget v0, Lcom/tencent/mm/i;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/tools/dn;->dYB:Landroid/widget/TextView;

    sget v0, Lcom/tencent/mm/i;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/ui/tools/dn;->dZa:Landroid/widget/ImageView;

    sget v0, Lcom/tencent/mm/i;->aHM:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/ui/tools/dn;->dmp:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_2
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/dm;->hls:Lcom/tencent/mm/ui/tools/dl;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/dl;->b(Lcom/tencent/mm/ui/tools/dl;)Lcom/tencent/mm/ui/base/bx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/mm/ui/base/bx;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/dn;->dYB:Landroid/widget/TextView;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/dn;->dZa:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/dn;->dZa:Landroid/widget/ImageView;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/dm;->hls:Lcom/tencent/mm/ui/tools/dl;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/dl;->e(Lcom/tencent/mm/ui/tools/dl;)Lcom/tencent/mm/ui/base/cb;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/dm;->hls:Lcom/tencent/mm/ui/tools/dl;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/dl;->e(Lcom/tencent/mm/ui/tools/dl;)Lcom/tencent/mm/ui/base/cb;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/dn;->dYB:Landroid/widget/TextView;

    invoke-interface {v2, v3, v1}, Lcom/tencent/mm/ui/base/cb;->a(Landroid/widget/TextView;Landroid/view/MenuItem;)V

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/dm;->hls:Lcom/tencent/mm/ui/tools/dl;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/dl;->b(Lcom/tencent/mm/ui/tools/dl;)Lcom/tencent/mm/ui/base/bx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/bx;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_7

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/dn;->dmp:Landroid/view/View;

    sget v1, Lcom/tencent/mm/h;->ajb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/dn;

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/dm;->hls:Lcom/tencent/mm/ui/tools/dl;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/dl;->d(Lcom/tencent/mm/ui/tools/dl;)Lcom/tencent/mm/ui/base/ca;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/dn;->dZa:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/dm;->hls:Lcom/tencent/mm/ui/tools/dl;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/dl;->d(Lcom/tencent/mm/ui/tools/dl;)Lcom/tencent/mm/ui/base/ca;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/dn;->dZa:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v1}, Lcom/tencent/mm/ui/base/ca;->a(Landroid/widget/ImageView;Landroid/view/MenuItem;)V

    goto :goto_3

    :cond_6
    iget-object v2, v0, Lcom/tencent/mm/ui/tools/dn;->dZa:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    iget-object v0, v0, Lcom/tencent/mm/ui/tools/dn;->dmp:Landroid/view/View;

    sget v1, Lcom/tencent/mm/h;->aja:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dm;->hls:Lcom/tencent/mm/ui/tools/dl;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/tools/dl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
