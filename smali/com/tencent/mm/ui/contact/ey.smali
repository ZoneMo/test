.class final Lcom/tencent/mm/ui/contact/ey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/SnsAddressUI;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ey;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 329
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ey;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->b(Lcom/tencent/mm/ui/contact/SnsAddressUI;)Lcom/tencent/mm/ui/contact/en;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/en;->aKV()Ljava/util/List;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ey;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->setResult(I)V

    .line 332
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ey;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->finish()V

    .line 334
    :cond_1
    const-string v2, "Select_Contact"

    const-string v3, ","

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ey;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->setResult(ILandroid/content/Intent;)V

    .line 336
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ey;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->finish()V

    .line 337
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ey;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "stay_in_wechat"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ey;->gVF:Lcom/tencent/mm/ui/contact/SnsAddressUI;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->moveTaskToBack(Z)Z

    .line 340
    :cond_2
    return-void
.end method
