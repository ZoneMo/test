.class final Lcom/tencent/mm/plugin/search/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/plugin/search/model/ad;


# instance fields
.field final synthetic eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/ui/c;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 296
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/c;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iput-object v1, v0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiD:Lcom/tencent/mm/plugin/search/model/af;

    .line 298
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/c;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iput-object p2, v0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiF:Ljava/util/List;

    .line 299
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/c;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iput-object p1, v0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiG:Ljava/util/List;

    .line 300
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/c;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iput-object v1, v0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiH:Ljava/util/List;

    .line 303
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/c;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->a(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)Lcom/tencent/mm/plugin/search/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/c;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iget-object v1, v1, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiG:Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/c;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iget-object v2, v2, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiF:Ljava/util/List;

    iget-object v3, p0, Lcom/tencent/mm/plugin/search/ui/c;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iget-object v3, v3, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiH:Ljava/util/List;

    const/4 v5, 0x1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/plugin/search/ui/e;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Z)V

    .line 304
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/c;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->b(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/c;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->c(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/c;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->c(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 309
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/c;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/c;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iget-object v1, v1, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eho:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/c;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->d(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)Lcom/tencent/mm/plugin/search/model/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/search/ui/c;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iget-object v3, v3, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/plugin/search/model/at;->a(Ljava/lang/String;Lcom/tencent/mm/plugin/search/model/ad;Landroid/os/Handler;)Lcom/tencent/mm/plugin/search/model/af;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiE:Lcom/tencent/mm/plugin/search/model/af;

    .line 310
    return-void
.end method
