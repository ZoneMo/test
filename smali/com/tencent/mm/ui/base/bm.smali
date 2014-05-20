.class public final Lcom/tencent/mm/ui/base/bm;
.super Lcom/tencent/mm/ui/base/ar;
.source "SourceFile"


# instance fields
.field private dDF:Landroid/widget/BaseAdapter;

.field private dbd:Landroid/widget/ListView;

.field private dey:Landroid/view/View;

.field private gAq:Landroid/view/View;

.field private gAr:Landroid/widget/AdapterView$OnItemClickListener;

.field private kb:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 25
    sget v0, Lcom/tencent/mm/o;->bIN:I

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/base/ar;-><init>(Landroid/content/Context;I)V

    .line 26
    iput-object p1, p0, Lcom/tencent/mm/ui/base/bm;->mContext:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/tencent/mm/ui/base/bm;->mContext:Landroid/content/Context;

    sget v1, Lcom/tencent/mm/k;->aWy:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/bm;->dey:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/bm;->dey:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aNg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/bm;->gAq:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/bm;->dey:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/bm;->kb:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/bm;->dey:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/bm;->dbd:Landroid/widget/ListView;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tencent/mm/ui/base/bm;->dDF:Landroid/widget/BaseAdapter;

    .line 54
    return-void
.end method

.method public final dismiss()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcom/tencent/mm/ui/base/ar;->dismiss()V

    .line 83
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/ar;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lcom/tencent/mm/ui/base/bm;->dey:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/bm;->setContentView(Landroid/view/View;)V

    .line 34
    return-void
.end method

.method public final setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tencent/mm/ui/base/bm;->gAr:Landroid/widget/AdapterView$OnItemClickListener;

    .line 58
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/bm;->mTitle:Ljava/lang/String;

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/bm;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public final show()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/tencent/mm/ui/base/bm;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/tencent/mm/ui/base/bm;->gAq:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/tencent/mm/ui/base/bm;->kb:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/bm;->gAr:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/tencent/mm/ui/base/bm;->dbd:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/bm;->gAr:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/bm;->dDF:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/tencent/mm/ui/base/bm;->dbd:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/bm;->dDF:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    :cond_1
    invoke-super {p0}, Lcom/tencent/mm/ui/base/ar;->show()V

    .line 77
    return-void

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/base/bm;->gAq:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/tencent/mm/ui/base/bm;->kb:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/tencent/mm/ui/base/bm;->kb:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/bm;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
