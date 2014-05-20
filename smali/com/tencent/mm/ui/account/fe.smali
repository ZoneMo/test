.class final Lcom/tencent/mm/ui/account/fe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/v;


# instance fields
.field final synthetic gsg:Lcom/tencent/mm/ui/account/fd;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/fd;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/tencent/mm/ui/account/fe;->gsg:Lcom/tencent/mm/ui/account/fd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bo(I)V
    .locals 4
    .parameter

    .prologue
    .line 533
    if-nez p1, :cond_1

    .line 534
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fe;->gsg:Lcom/tencent/mm/ui/account/fd;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->k(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fe;->gsg:Lcom/tencent/mm/ui/account/fd;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->SM()V

    .line 537
    const-string v0, "R200_500"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->ie(Ljava/lang/String;)V

    .line 538
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fe;->gsg:Lcom/tencent/mm/ui/account/fd;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    const-class v2, Lcom/tencent/mm/ui/account/RegByMobileVoiceVerifyUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 539
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 540
    const-string v2, "bindmcontact_mobile"

    iget-object v3, p0, Lcom/tencent/mm/ui/account/fe;->gsg:Lcom/tencent/mm/ui/account/fd;

    iget-object v3, v3, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v3}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->m(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v2, "voice_verify_type"

    iget-object v3, p0, Lcom/tencent/mm/ui/account/fe;->gsg:Lcom/tencent/mm/ui/account/fd;

    iget-object v3, v3, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v3}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->o(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 542
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 543
    iget-object v1, p0, Lcom/tencent/mm/ui/account/fe;->gsg:Lcom/tencent/mm/ui/account/fd;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 544
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 545
    const-string v0, "R200_400"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->ie(Ljava/lang/String;)V

    .line 546
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fe;->gsg:Lcom/tencent/mm/ui/account/fd;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    const-class v2, Lcom/tencent/mm/ui/account/FacebookLoginUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 547
    iget-object v1, p0, Lcom/tencent/mm/ui/account/fe;->gsg:Lcom/tencent/mm/ui/account/fd;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
