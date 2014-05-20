.class final Lcom/tencent/mm/ui/account/fb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/v;


# instance fields
.field final synthetic gse:Z

.field final synthetic gsf:Lcom/tencent/mm/ui/account/fa;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/fa;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/tencent/mm/ui/account/fb;->gsf:Lcom/tencent/mm/ui/account/fa;

    iput-boolean p2, p0, Lcom/tencent/mm/ui/account/fb;->gse:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bo(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 451
    if-nez p1, :cond_1

    .line 452
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fb;->gsf:Lcom/tencent/mm/ui/account/fa;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->k(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 454
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fb;->gsf:Lcom/tencent/mm/ui/account/fa;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->SM()V

    .line 455
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fb;->gsf:Lcom/tencent/mm/ui/account/fa;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->o(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)I

    move-result v0

    if-nez v0, :cond_3

    .line 456
    const-string v0, "R200_500"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->ie(Ljava/lang/String;)V

    .line 462
    :cond_2
    :goto_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fb;->gsf:Lcom/tencent/mm/ui/account/fa;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    const-class v2, Lcom/tencent/mm/ui/account/RegByMobileVoiceVerifyUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 463
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 464
    const-string v2, "bindmcontact_mobile"

    iget-object v3, p0, Lcom/tencent/mm/ui/account/fb;->gsf:Lcom/tencent/mm/ui/account/fa;

    iget-object v3, v3, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v3}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->m(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v2, "voice_verify_type"

    iget-object v3, p0, Lcom/tencent/mm/ui/account/fb;->gsf:Lcom/tencent/mm/ui/account/fa;

    iget-object v3, v3, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v3}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->o(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 466
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 467
    iget-object v1, p0, Lcom/tencent/mm/ui/account/fb;->gsf:Lcom/tencent/mm/ui/account/fa;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 457
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fb;->gsf:Lcom/tencent/mm/ui/account/fa;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->o(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 458
    const-string v0, "L600_400"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->ie(Ljava/lang/String;)V

    goto :goto_1

    .line 459
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fb;->gsf:Lcom/tencent/mm/ui/account/fa;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->o(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 460
    const-string v0, "F200_300"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->ie(Ljava/lang/String;)V

    goto :goto_1

    .line 469
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/account/fb;->gsf:Lcom/tencent/mm/ui/account/fa;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->n(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    if-ne p1, v1, :cond_6

    .line 471
    const-string v0, "L100_100_logout"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->ie(Ljava/lang/String;)V

    .line 472
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fb;->gsf:Lcom/tencent/mm/ui/account/fa;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    const-class v2, Lcom/tencent/mm/ui/account/FacebookLoginUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 473
    iget-object v1, p0, Lcom/tencent/mm/ui/account/fb;->gsf:Lcom/tencent/mm/ui/account/fa;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 474
    :cond_6
    if-ne p1, v2, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/account/fb;->gse:Z

    if-eqz v0, :cond_0

    .line 475
    const-string v0, "R500_100"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->ie(Ljava/lang/String;)V

    .line 476
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/fb;->gsf:Lcom/tencent/mm/ui/account/fa;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    const-class v2, Lcom/tencent/mm/ui/account/RegByEmailUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    iget-object v1, p0, Lcom/tencent/mm/ui/account/fb;->gsf:Lcom/tencent/mm/ui/account/fa;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/fa;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
