.class final Lcom/tencent/mm/ui/tools/gm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cd;


# instance fields
.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1580
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/gm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/MenuItem;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1584
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1626
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1627
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->d(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/lang/String;)V

    .line 1631
    :cond_0
    :goto_0
    return-void

    .line 1586
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->n(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    goto :goto_0

    .line 1589
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->o(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    goto :goto_0

    .line 1592
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->p(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    goto :goto_0

    .line 1595
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "webpageTitle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1596
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "shortUrl"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1597
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1598
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "rawUrl"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1600
    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/gm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1603
    :pswitch_4
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    const-string v1, "Contact_Scene"

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->b(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "srcUsername"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1605
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->c(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/lang/String;)V

    goto :goto_0

    .line 1608
    :pswitch_5
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->q(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    goto :goto_0

    .line 1612
    :pswitch_6
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->r(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    goto :goto_0

    .line 1615
    :pswitch_7
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->s(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    goto :goto_0

    .line 1618
    :pswitch_8
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->t(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    goto :goto_0

    .line 1621
    :pswitch_9
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->u(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    goto :goto_0

    .line 1584
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
