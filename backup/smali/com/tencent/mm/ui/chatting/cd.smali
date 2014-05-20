.class final Lcom/tencent/mm/ui/chatting/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/chat/l;


# instance fields
.field final synthetic gMs:Lcom/tencent/mm/ui/chatting/bv;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Wa()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 467
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->d(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->d(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asK()V

    .line 470
    :cond_0
    new-instance v0, Lcom/tencent/mm/c/a/ia;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ia;-><init>()V

    .line 471
    iget-object v1, v0, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    const/4 v2, 0x5

    iput v2, v1, Lcom/tencent/mm/c/a/ib;->bNk:I

    .line 472
    iget-object v1, v0, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/bv;->aJe()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/c/a/ib;->bNl:Ljava/lang/String;

    .line 473
    iget-object v1, v0, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/c/a/ib;->context:Landroid/content/Context;

    .line 474
    iget-object v1, v0, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput v6, v1, Lcom/tencent/mm/c/a/ib;->bRz:I

    .line 475
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 476
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2b19

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 477
    return-void
.end method

.method public final Wb()V
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 482
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->d(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->d(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asK()V

    .line 485
    :cond_0
    new-instance v0, Lcom/tencent/mm/c/a/ia;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ia;-><init>()V

    .line 486
    iget-object v1, v0, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    const/4 v2, 0x5

    iput v2, v1, Lcom/tencent/mm/c/a/ib;->bNk:I

    .line 487
    iget-object v1, v0, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/bv;->aJe()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/c/a/ib;->bNl:Ljava/lang/String;

    .line 488
    iget-object v1, v0, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/c/a/ib;->context:Landroid/content/Context;

    .line 489
    iget-object v1, v0, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput v3, v1, Lcom/tencent/mm/c/a/ib;->bRz:I

    .line 490
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 491
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2b19

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 492
    return-void
.end method

.method public final Wc()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->d(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asK()V

    .line 569
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dO(Z)V

    .line 570
    return-void
.end method

.method public final Wd()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJM()V

    .line 575
    return-void
.end method

.method public final We()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJL()V

    .line 580
    return-void
.end method

.method public final Wf()V
    .locals 3

    .prologue
    .line 620
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/openapi/AddAppUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 621
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    .line 622
    return-void
.end method

.method public final Wg()V
    .locals 4

    .prologue
    .line 627
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 628
    const-string v1, "key_to_user"

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/bv;->p(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/storage/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string v1, "key_fav_item_id"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v1

    const-string v2, "favorite"

    const-string v3, ".ui.FavSelectUI"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 631
    return-void
.end method

.method public final e(Lcom/tencent/mm/pluginsdk/model/app/k;)V
    .locals 1
    .parameter

    .prologue
    .line 615
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->m(Lcom/tencent/mm/pluginsdk/model/app/k;)V

    .line 616
    return-void
.end method

.method public final gY(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0xd7

    .line 497
    packed-switch p1, :pswitch_data_0

    .line 559
    :goto_0
    return-void

    .line 500
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    const/16 v1, 0xda

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->f(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->d(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asK()V

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    const/16 v1, 0xd0

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->g(Landroid/app/Activity;I)Z

    goto :goto_1

    .line 509
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/bv;->aJe()Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-static {v0}, Lcom/tencent/mm/ai/r;->gY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    const-string v2, "MicroMsg.ChattingFooterEventImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "filename "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    sget-object v2, Lcom/tencent/mm/compatible/c/s;->ceN:Lcom/tencent/mm/compatible/c/m;

    iget v2, v2, Lcom/tencent/mm/compatible/c/m;->cee:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 516
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tencent.mm.action.VIDEO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string v3, "VideoRecorder_ToUser"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const-string v0, "VideoRecorder_FileName"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v0, "VideoRecorder_VideoPath"

    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/ai/r;->DV()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string v0, "VideoRecorder_VideoFullPath"

    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ai/r;->gZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const-string v0, "VideoRecorder_VideoThumbPath"

    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ai/r;->ha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    const/16 v1, 0xd8

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 524
    :catch_1
    move-exception v0

    .line 525
    const-string v1, "MicroMsg.ChattingFooterEventImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/tencent/mm/compatible/h/c;->b(Landroid/app/Activity;I)Z

    goto/16 :goto_0

    .line 531
    :cond_0
    sget-object v2, Lcom/tencent/mm/compatible/c/s;->ceN:Lcom/tencent/mm/compatible/c/m;

    iget v2, v2, Lcom/tencent/mm/compatible/c/m;->cee:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 532
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/tencent/mm/compatible/h/c;->b(Landroid/app/Activity;I)Z

    goto/16 :goto_0

    .line 545
    :cond_1
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tencent.mm.action.VIDEO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    const-string v3, "VideoRecorder_ToUser"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    const-string v0, "VideoRecorder_FileName"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v0, "VideoRecorder_VideoPath"

    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/ai/r;->DV()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    const-string v0, "VideoRecorder_VideoFullPath"

    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ai/r;->gZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string v0, "VideoRecorder_VideoThumbPath"

    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ai/r;->ha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    const/16 v1, 0xd8

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 553
    :catch_2
    move-exception v0

    .line 554
    const-string v1, "MicroMsg.ChattingFooterEventImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/tencent/mm/compatible/h/c;->b(Landroid/app/Activity;I)Z

    goto/16 :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final gZ(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 584
    packed-switch p1, :pswitch_data_0

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 586
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gallery"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->e(Landroid/app/Activity;I)Z

    .line 593
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->d(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asK()V

    goto :goto_0

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->q(Landroid/app/Activity;)V

    goto :goto_1

    .line 597
    :pswitch_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/mm/storage/h;->cfG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 599
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_2

    .line 600
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v1

    const v2, 0x7f0701ed

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/storage/h;->cfG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "microMsg."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc9

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cd;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v1

    const v2, 0x7f07009c

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 584
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
