.class final Lcom/tencent/mm/ui/contact/ds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/tools/ez;


# instance fields
.field final synthetic gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ds;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final FT()Z
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public final FU()V
    .locals 1

    .prologue
    .line 426
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/ds;->ig(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public final FV()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public final ig(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 410
    const-string v2, "MicroMsg.SelectContactUI"

    const-string v3, "onSearchBarChange  %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 412
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ds;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v3, v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->a(Lcom/tencent/mm/ui/contact/SelectContactUI;Z)Z

    .line 413
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ds;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/contact/SelectContactUI;->c(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z

    .line 414
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ds;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/contact/SelectContactUI;->b(Lcom/tencent/mm/ui/contact/SelectContactUI;)Lcom/tencent/mm/ui/contact/db;

    move-result-object v3

    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/tencent/mm/ui/contact/db;->dP(Z)V

    .line 415
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ds;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->d(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ds;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->e(Lcom/tencent/mm/ui/contact/SelectContactUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ds;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->e(Lcom/tencent/mm/ui/contact/SelectContactUI;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a041f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_0

    .line 418
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ds;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/contact/SelectContactUI;->a(Lcom/tencent/mm/ui/contact/SelectContactUI;Ljava/lang/String;)V

    .line 422
    return-void

    :cond_1
    move v0, v1

    .line 414
    goto :goto_0
.end method
