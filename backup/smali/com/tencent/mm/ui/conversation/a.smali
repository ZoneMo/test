.class final Lcom/tencent/mm/ui/conversation/a;
.super Lcom/tencent/mm/ui/bc;
.source "SourceFile"


# instance fields
.field private gXJ:Lcom/tencent/mm/ac/b;

.field private gtr:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, v1}, Lcom/tencent/mm/ui/bc;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/a;->gtr:Ljava/util/ArrayList;

    .line 20
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/a;->gXJ:Lcom/tencent/mm/ac/b;

    .line 28
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/a;->Ga()V

    .line 29
    return-void
.end method


# virtual methods
.method public final FZ()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/a;->gtr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/a;->gXJ:Lcom/tencent/mm/ac/b;

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/conversation/bz;

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/a;->gXJ:Lcom/tencent/mm/ac/b;

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/conversation/bz;-><init>(Lcom/tencent/mm/ac/b;)V

    .line 49
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/a;->gtr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected final Ga()V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/a;->FZ()V

    .line 39
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/ac/b;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/a;->gXJ:Lcom/tencent/mm/ac/b;

    .line 24
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/a;->gtr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/conversation/a;->nM(I)Lcom/tencent/mm/ui/conversation/bz;

    move-result-object v0

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/a;->gtr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/conversation/bz;

    .line 68
    if-nez p2, :cond_1

    .line 70
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/a;->context:Landroid/content/Context;

    const v2, 0x7f030021

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 71
    new-instance v2, Lcom/tencent/mm/ui/conversation/ci;

    invoke-direct {v2}, Lcom/tencent/mm/ui/conversation/ci;-><init>()V

    .line 72
    iput-object p2, v2, Lcom/tencent/mm/ui/conversation/ci;->hac:Landroid/view/View;

    .line 75
    const v1, 0x7f0a008b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/ci;->had:Landroid/widget/Button;

    .line 76
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 82
    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/conversation/bz;->a(Lcom/tencent/mm/ui/conversation/ci;)I

    move-result v0

    if-eqz v0, :cond_0

    move-object p2, v3

    .line 85
    :cond_0
    return-object p2

    .line 79
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/conversation/ci;

    goto :goto_0
.end method

.method public final nM(I)Lcom/tencent/mm/ui/conversation/bz;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/a;->gtr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/conversation/bz;

    return-object v0
.end method
