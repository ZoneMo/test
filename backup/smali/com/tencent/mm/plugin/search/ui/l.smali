.class final Lcom/tencent/mm/plugin/search/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic ejj:Lcom/tencent/mm/plugin/search/ui/e;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/search/ui/e;)V
    .locals 0
    .parameter

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/ui/l;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1479
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/search/ui/r;

    iget-object v0, v0, Lcom/tencent/mm/plugin/search/ui/r;->ejt:Lcom/tencent/mm/plugin/search/ui/q;

    .line 1481
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "Chat_User"

    iget-object v6, v0, Lcom/tencent/mm/plugin/search/ui/q;->username:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "finish_direct"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    .line 1484
    sget-object v5, Lcom/tencent/mm/plugin/search/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    iget-object v6, p0, Lcom/tencent/mm/plugin/search/ui/l;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-static {v6}, Lcom/tencent/mm/plugin/search/ui/e;->c(Lcom/tencent/mm/plugin/search/ui/e;)Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/tencent/mm/pluginsdk/e;->d(Landroid/content/Intent;Landroid/content/Context;)V

    .line 1487
    iget-object v4, v0, Lcom/tencent/mm/plugin/search/ui/q;->ejp:Lcom/tencent/mm/plugin/search/model/aq;

    if-eqz v4, :cond_0

    .line 1488
    iget-object v4, p0, Lcom/tencent/mm/plugin/search/ui/l;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-static {v4}, Lcom/tencent/mm/plugin/search/ui/e;->d(Lcom/tencent/mm/plugin/search/ui/e;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/tencent/mm/plugin/search/ui/q;->ejp:Lcom/tencent/mm/plugin/search/model/aq;

    invoke-static {v4, v0}, Lcom/tencent/mm/plugin/search/model/at;->a(Ljava/lang/String;Lcom/tencent/mm/plugin/search/model/aq;)Lcom/tencent/mm/plugin/search/model/af;

    .line 1492
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/l;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/ui/e;->e(Lcom/tencent/mm/plugin/search/ui/e;)I

    move-result v0

    if-le p3, v0, :cond_1

    const/4 v0, 0x5

    .line 1497
    :goto_0
    sget-object v4, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v5, 0x2aef

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tencent/mm/plugin/search/ui/l;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-static {v6}, Lcom/tencent/mm/plugin/search/ui/e;->c(Lcom/tencent/mm/plugin/search/ui/e;)Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    move-result-object v6

    iget v6, v6, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiC:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v7

    add-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {v4, v5, v1}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 1500
    :cond_0
    return-void

    .line 1493
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/l;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/ui/e;->f(Lcom/tencent/mm/plugin/search/ui/e;)I

    move-result v0

    if-le p3, v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 1494
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/l;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/ui/e;->g(Lcom/tencent/mm/plugin/search/ui/e;)I

    move-result v0

    if-le p3, v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 1495
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/l;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/ui/e;->h(Lcom/tencent/mm/plugin/search/ui/e;)I

    move-result v0

    if-le p3, v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0
.end method
