.class final Lcom/tencent/mm/ui/chatting/ih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cd;


# instance fields
.field final synthetic gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 3383
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/MenuItem;I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3387
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/es;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 3388
    if-nez v0, :cond_1

    .line 3389
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "context item select failed, null msg"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3680
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3394
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v5, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v6

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v5, v6, v1}, Lcom/tencent/mm/ui/chatting/es;->o(IZ)Lcom/tencent/mm/ui/chatting/ce;

    move-result-object v1

    .line 3395
    if-eqz v1, :cond_2

    .line 3396
    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1, p1, v5, v0}, Lcom/tencent/mm/ui/chatting/ce;->a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z

    .line 3400
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 3403
    :pswitch_2
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBV()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3404
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v3

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->B(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/chatting/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/v;->aIO()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 3405
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->B(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/chatting/v;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/v;->dI(Z)V

    .line 3410
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/mm/model/bv;->q(J)I

    .line 3411
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->l(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/storage/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    const-string v2, "medianote"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3412
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/bd;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/tencent/mm/storage/bd;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 3394
    goto :goto_1

    .line 3407
    :cond_5
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBT()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3408
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->b(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V

    goto :goto_2

    .line 3418
    :pswitch_3
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCd()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCe()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3421
    :cond_6
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/pluginsdk/i;->n(Lcom/tencent/mm/storage/ak;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3422
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asI()V

    goto/16 :goto_0

    .line 3434
    :pswitch_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v2, 0x7f07025e

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    new-instance v3, Lcom/tencent/mm/ui/chatting/ii;

    invoke-direct {v3, p0, p1}, Lcom/tencent/mm/ui/chatting/ii;-><init>(Lcom/tencent/mm/ui/chatting/ih;Landroid/view/MenuItem;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0

    .line 3446
    :pswitch_5
    const-string v2, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "groupId = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "content: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/tencent/mm/ui/chatting/es;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/storage/ak;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3447
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->C(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/text/ClipboardManager;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/tencent/mm/ui/chatting/es;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/storage/ak;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->at(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 3448
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v2, 0x7f070a25

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3453
    :pswitch_6
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBV()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3455
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3456
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3459
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->J(Lcom/tencent/mm/storage/ak;)V

    goto/16 :goto_0

    .line 3461
    :cond_8
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBY()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3462
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v1

    if-nez v1, :cond_9

    .line 3463
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3466
    :cond_9
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->K(Lcom/tencent/mm/storage/ak;)V

    goto/16 :goto_0

    .line 3468
    :cond_a
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCd()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3469
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v1

    if-nez v1, :cond_b

    .line 3470
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3473
    :cond_b
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->L(Lcom/tencent/mm/storage/ak;)V

    goto/16 :goto_0

    .line 3475
    :cond_c
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCc()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3476
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->M(Lcom/tencent/mm/storage/ak;)V

    goto/16 :goto_0

    .line 3477
    :cond_d
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCb()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3478
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->P(Lcom/tencent/mm/storage/ak;)V

    goto/16 :goto_0

    .line 3479
    :cond_e
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCe()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3480
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->O(Lcom/tencent/mm/storage/ak;)V

    goto/16 :goto_0

    .line 3486
    :pswitch_7
    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ai/r;->gZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3487
    invoke-static {v0}, Lcom/tencent/mm/ai/v;->hi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3488
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3489
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f070600

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3491
    :cond_f
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v5, 0x7f070601

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3492
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->d(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3498
    :pswitch_8
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v1

    if-nez v1, :cond_10

    .line 3499
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3502
    :cond_10
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/ai/v;->hh(Ljava/lang/String;)Lcom/tencent/mm/ai/q;

    move-result-object v1

    .line 3503
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v5, Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3504
    const-string v4, "Retr_length"

    invoke-virtual {v1}, Lcom/tencent/mm/ai/q;->DO()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3505
    const-string v4, "Retr_File_Name"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3506
    const-string v4, "Retr_video_isexport"

    invoke-virtual {v1}, Lcom/tencent/mm/ai/q;->DQ()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3507
    const-string v1, "MicroMsg.ChattingUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dkvideo msg.getType():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3508
    const-string v0, "Retr_Msg_Type"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3509
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3515
    :pswitch_9
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v3, Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3516
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBW()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3517
    const-string v2, "Retr_Msg_content"

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v4, v0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->at(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3518
    const-string v0, "Retr_Msg_Type"

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3523
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3520
    :cond_11
    const-string v2, "Retr_Msg_content"

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v4, v0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->at(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3521
    const-string v0, "Retr_Msg_Type"

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 3527
    :pswitch_a
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/storage/u;->uk(Ljava/lang/String;)Lcom/tencent/mm/storage/u;

    move-result-object v1

    .line 3528
    invoke-virtual {v1}, Lcom/tencent/mm/storage/u;->yK()Ljava/lang/String;

    move-result-object v1

    .line 3529
    if-eqz v1, :cond_12

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3530
    :cond_12
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v1

    .line 3532
    :cond_13
    if-eqz v1, :cond_0

    .line 3535
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v4, Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3536
    const-string v3, "Retr_File_Name"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3537
    const-string v1, "Retr_Msg_Id"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3538
    const-string v0, "Retr_Msg_Type"

    const/4 v1, 0x5

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3539
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3544
    :pswitch_b
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-interface {v1, v2, v0}, Lcom/tencent/mm/pluginsdk/i;->a(Landroid/content/Context;Lcom/tencent/mm/storage/ak;)Z

    goto/16 :goto_0

    .line 3549
    :pswitch_c
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v1

    if-nez v1, :cond_14

    .line 3550
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3554
    :cond_14
    iget-wide v5, v0, Lcom/tencent/mm/storage/ak;->field_msgId:J

    cmp-long v1, v5, v7

    if-lez v1, :cond_2a

    .line 3555
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-wide v4, v0, Lcom/tencent/mm/storage/ak;->field_msgId:J

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/tencent/mm/w/g;->dG(I)Lcom/tencent/mm/w/e;

    move-result-object v1

    .line 3558
    :goto_4
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-gtz v4, :cond_16

    :cond_15
    iget v4, v0, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    if-lez v4, :cond_16

    .line 3559
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget v4, v0, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    invoke-virtual {v1, v4}, Lcom/tencent/mm/w/g;->dF(I)Lcom/tencent/mm/w/e;

    move-result-object v1

    .line 3562
    :cond_16
    if-eqz v1, :cond_0

    .line 3566
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v4

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v5

    if-lt v4, v5, :cond_1b

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v4

    if-eqz v4, :cond_1b

    .line 3567
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v6, Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3568
    const-string v5, "Retr_File_Name"

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v6

    invoke-static {v1}, Lcom/tencent/mm/w/f;->c(Lcom/tencent/mm/w/e;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, ""

    invoke-virtual {v6, v7, v8, v9}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3569
    const-string v5, "Retr_Msg_Id"

    iget-wide v6, v0, Lcom/tencent/mm/storage/ak;->field_msgId:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3570
    const-string v5, "Retr_Msg_Type"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3572
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-ne v0, v2, :cond_19

    .line 3574
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AM()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3588
    :cond_17
    :goto_5
    const-string v0, "Retr_Compress_Type"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3589
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_18
    move v2, v3

    .line 3574
    goto :goto_5

    .line 3576
    :cond_19
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AM()Z

    move-result v0

    if-nez v0, :cond_1a

    move v2, v3

    .line 3577
    goto :goto_5

    .line 3579
    :cond_1a
    invoke-static {v1}, Lcom/tencent/mm/w/f;->a(Lcom/tencent/mm/w/e;)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 3580
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    move v2, v3

    .line 3581
    goto :goto_5

    .line 3591
    :cond_1b
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v4, Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3592
    const-string v3, "img_gallery_msg_id"

    iget-wide v4, v0, Lcom/tencent/mm/storage/ak;->field_msgId:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3593
    const-string v3, "img_gallery_msg_svr_id"

    iget v4, v0, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3594
    const-string v3, "img_gallery_talker"

    iget-object v4, v0, Lcom/tencent/mm/storage/ak;->field_talker:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3595
    const-string v3, "img_gallery_chatroom_name"

    iget-object v0, v0, Lcom/tencent/mm/storage/ak;->field_talker:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3596
    const-string v0, "img_gallery_is_restransmit_after_download"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3597
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3603
    :pswitch_d
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 3604
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3609
    :cond_1c
    new-instance v1, Lcom/tencent/mm/modelvoice/bf;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelvoice/bf;-><init>(Ljava/lang/String;)V

    .line 3610
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v4, Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3611
    const-string v3, "Retr_File_Name"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3612
    const-string v3, "Retr_length"

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bf;->getTime()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3615
    const-string v1, "MicroMsg.ChattingUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "voice msg.getType():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3616
    const-string v0, "Retr_Msg_Type"

    const/4 v1, 0x7

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3617
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3622
    :pswitch_e
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 3623
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3628
    :cond_1d
    iget-wide v1, v0, Lcom/tencent/mm/storage/ak;->field_msgId:J

    cmp-long v1, v1, v7

    if-lez v1, :cond_29

    .line 3629
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget-wide v2, v0, Lcom/tencent/mm/storage/ak;->field_msgId:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/w/g;->dG(I)Lcom/tencent/mm/w/e;

    move-result-object v1

    .line 3632
    :goto_6
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-gtz v2, :cond_28

    :cond_1e
    iget v2, v0, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    if-lez v2, :cond_28

    .line 3633
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    iget v0, v0, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    invoke-virtual {v1, v0}, Lcom/tencent/mm/w/g;->dF(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 3636
    :goto_7
    if-eqz v0, :cond_0

    .line 3640
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3642
    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3643
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f0709de

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/tencent/mm/pluginsdk/e/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3649
    :pswitch_f
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCc()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3650
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v4, v0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->at(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/mm/ui/chatting/kz;->h(Ljava/lang/String;Landroid/content/Context;)V

    .line 3664
    :cond_1f
    :goto_8
    const-string v1, "MicroMsg.ChattingUI"

    const-string v4, "type is %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v4, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3651
    :cond_20
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBV()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3652
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/kz;->b(Lcom/tencent/mm/storage/ak;Landroid/content/Context;)V

    goto :goto_8

    .line 3653
    :cond_21
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBY()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3654
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/kz;->c(Lcom/tencent/mm/storage/ak;Landroid/content/Context;)V

    goto :goto_8

    .line 3655
    :cond_22
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->MP()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3656
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/kz;->d(Lcom/tencent/mm/storage/ak;Landroid/content/Context;)V

    goto :goto_8

    .line 3657
    :cond_23
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCb()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3658
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/mm/ui/chatting/kz;->i(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_8

    .line 3659
    :cond_24
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCa()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3660
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/mm/ui/chatting/kz;->j(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_8

    .line 3661
    :cond_25
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCd()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCe()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3662
    :cond_26
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/kz;->e(Lcom/tencent/mm/storage/ak;Landroid/content/Context;)V

    goto/16 :goto_8

    .line 3669
    :pswitch_10
    new-instance v1, Lcom/tencent/mm/c/a/x;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/x;-><init>()V

    .line 3670
    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/model/b;->a(Lcom/tencent/mm/c/a/x;Lcom/tencent/mm/storage/ak;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, v1, Lcom/tencent/mm/c/a/x;->bMm:Lcom/tencent/mm/c/a/z;

    iget v0, v0, Lcom/tencent/mm/c/a/z;->ret:I

    if-nez v0, :cond_27

    .line 3671
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 3672
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v2, 0x7f070a4d

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 3674
    :cond_27
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, v1, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget v1, v1, Lcom/tencent/mm/c/a/y;->type:I

    const v2, 0x7f070aca

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0

    .line 3679
    :pswitch_11
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->I(Lcom/tencent/mm/storage/ak;)V

    goto/16 :goto_0

    :cond_28
    move-object v0, v1

    goto/16 :goto_7

    :cond_29
    move-object v1, v4

    goto/16 :goto_6

    :cond_2a
    move-object v1, v4

    goto/16 :goto_4

    .line 3400
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_c
        :pswitch_1
        :pswitch_e
        :pswitch_a
        :pswitch_f
        :pswitch_4
        :pswitch_10
        :pswitch_b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_11
    .end packed-switch
.end method
