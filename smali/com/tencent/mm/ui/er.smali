.class final Lcom/tencent/mm/ui/er;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/applet/aa;


# instance fields
.field final synthetic gpa:Lcom/tencent/mm/ui/RoomInfoUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/RoomInfoUI;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/tencent/mm/ui/er;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aiC()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/tencent/mm/ui/er;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/RoomInfoUI;->e(Lcom/tencent/mm/ui/RoomInfoUI;)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/tencent/mm/ui/er;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/RoomInfoUI;->e(Lcom/tencent/mm/ui/RoomInfoUI;)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->asb()V

    .line 510
    :cond_0
    return-void
.end method

.method public final jd(I)V
    .locals 1
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/tencent/mm/ui/er;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v0, p1}, Lcom/tencent/mm/ui/RoomInfoUI;->a(Lcom/tencent/mm/ui/RoomInfoUI;I)V

    .line 459
    return-void
.end method

.method public final je(I)V
    .locals 1
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lcom/tencent/mm/ui/er;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/RoomInfoUI;->h(Lcom/tencent/mm/ui/RoomInfoUI;)V

    .line 515
    return-void
.end method

.method public final jf(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 463
    iget-object v0, p0, Lcom/tencent/mm/ui/er;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/RoomInfoUI;->e(Lcom/tencent/mm/ui/RoomInfoUI;)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->kr(I)Ljava/lang/String;

    move-result-object v1

    .line 464
    iget-object v0, p0, Lcom/tencent/mm/ui/er;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/RoomInfoUI;->e(Lcom/tencent/mm/ui/RoomInfoUI;)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->kt(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sv()Lcom/tencent/mm/storage/cf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/cf;->vF(Ljava/lang/String;)Lcom/tencent/mm/storage/ce;

    move-result-object v2

    .line 467
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ce;->aAs()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 468
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ce;->ru()Ljava/lang/String;

    move-result-object v0

    .line 472
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 473
    iget-object v3, p0, Lcom/tencent/mm/ui/er;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    const-class v4, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 474
    const-string v3, "Contact_User"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v3, "Contact_RemarkName"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    iget-object v0, p0, Lcom/tencent/mm/ui/er;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/RoomInfoUI;->f(Lcom/tencent/mm/ui/RoomInfoUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/er;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/RoomInfoUI;->c(Lcom/tencent/mm/ui/RoomInfoUI;)Lcom/tencent/mm/storage/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 478
    const-string v0, "Contact_RoomNickname"

    iget-object v3, p0, Lcom/tencent/mm/ui/er;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/RoomInfoUI;->c(Lcom/tencent/mm/ui/RoomInfoUI;)Lcom/tencent/mm/storage/b;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/mm/storage/b;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    :cond_1
    const-string v0, "Contact_Nick"

    iget-object v3, p0, Lcom/tencent/mm/ui/er;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/RoomInfoUI;->e(Lcom/tencent/mm/ui/RoomInfoUI;)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->ks(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string v0, "Contact_RoomMember"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 483
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 485
    invoke-static {v2, v1}, Lcom/tencent/mm/ui/contact/bh;->b(Landroid/content/Intent;Ljava/lang/String;)V

    .line 487
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/er;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/RoomInfoUI;->f(Lcom/tencent/mm/ui/RoomInfoUI;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 488
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 489
    sget-object v1, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v3, 0x283a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",14"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 491
    :cond_3
    const-string v0, "Contact_Scene"

    const/16 v1, 0xe

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/er;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-virtual {v0, v2, v5}, Lcom/tencent/mm/ui/RoomInfoUI;->startActivityForResult(Landroid/content/Intent;I)V

    .line 503
    return-void

    .line 492
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/ui/er;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/RoomInfoUI;->g(Lcom/tencent/mm/ui/RoomInfoUI;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 493
    const-string v1, "Contact_Scene"

    const/16 v3, 0x2c

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/v;->cm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 495
    const-string v0, "Contact_IsLBSFriend"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 498
    :cond_6
    const-string v0, "Kdel_from"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method
