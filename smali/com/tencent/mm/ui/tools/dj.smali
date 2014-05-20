.class final Lcom/tencent/mm/ui/tools/dj;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic hlp:Lcom/tencent/mm/ui/tools/dg;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/ui/tools/dg;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/dj;->hlp:Lcom/tencent/mm/ui/tools/dg;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 242
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/ui/tools/dg;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/dj;-><init>(Lcom/tencent/mm/ui/tools/dg;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dj;->hlp:Lcom/tencent/mm/ui/tools/dg;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/dg;->a(Lcom/tencent/mm/ui/tools/dg;)Lcom/tencent/mm/ui/base/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/bx;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 197
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 204
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dj;->hlp:Lcom/tencent/mm/ui/tools/dg;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/dg;->b(Lcom/tencent/mm/ui/tools/dg;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/mm/k;->aWz:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/ui/tools/dk;

    invoke-direct {v1, p0, v4}, Lcom/tencent/mm/ui/tools/dk;-><init>(Lcom/tencent/mm/ui/tools/dj;B)V

    sget v0, Lcom/tencent/mm/i;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/tools/dk;->dYB:Landroid/widget/TextView;

    sget v0, Lcom/tencent/mm/i;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/ui/tools/dk;->dZa:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/dj;->hlp:Lcom/tencent/mm/ui/tools/dg;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/dg;->a(Lcom/tencent/mm/ui/tools/dg;)Lcom/tencent/mm/ui/base/bx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/mm/ui/base/bx;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/dk;->dYB:Landroid/widget/TextView;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/dj;->hlp:Lcom/tencent/mm/ui/tools/dg;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/dg;->a(Lcom/tencent/mm/ui/tools/dg;)Lcom/tencent/mm/ui/base/bx;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/mm/ui/base/bx;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/dk;->dZa:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/dk;->dZa:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/dj;->hlp:Lcom/tencent/mm/ui/tools/dg;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/dg;->d(Lcom/tencent/mm/ui/tools/dg;)Lcom/tencent/mm/ui/base/cb;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/dj;->hlp:Lcom/tencent/mm/ui/tools/dg;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/dg;->d(Lcom/tencent/mm/ui/tools/dg;)Lcom/tencent/mm/ui/base/cb;

    move-result-object v2

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/dk;->dYB:Landroid/widget/TextView;

    invoke-interface {v2, v0, v1}, Lcom/tencent/mm/ui/base/cb;->a(Landroid/widget/TextView;Landroid/view/MenuItem;)V

    .line 206
    :cond_0
    return-object p2

    .line 204
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/dk;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/dj;->hlp:Lcom/tencent/mm/ui/tools/dg;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/dg;->c(Lcom/tencent/mm/ui/tools/dg;)Lcom/tencent/mm/ui/base/ca;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/dk;->dZa:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/dj;->hlp:Lcom/tencent/mm/ui/tools/dg;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/dg;->c(Lcom/tencent/mm/ui/tools/dg;)Lcom/tencent/mm/ui/base/ca;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/dk;->dZa:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v1}, Lcom/tencent/mm/ui/base/ca;->a(Landroid/widget/ImageView;Landroid/view/MenuItem;)V

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/tencent/mm/ui/tools/dk;->dZa:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
