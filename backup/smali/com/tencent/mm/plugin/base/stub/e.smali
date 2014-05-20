.class final Lcom/tencent/mm/plugin/base/stub/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cOb:Z

.field private cOc:Z

.field private final cOd:Lcom/tencent/mm/plugin/base/stub/h;

.field private cOe:Lcom/tencent/mm/ui/base/ch;

.field private cOf:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

.field private cOg:Lcom/tencent/mm/plugin/webview/stub/al;

.field private ckr:Lcom/tencent/mm/sdk/platformtools/ay;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/plugin/base/stub/OAuthUI;Lcom/tencent/mm/plugin/base/stub/h;Lcom/tencent/mm/plugin/webview/stub/al;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOb:Z

    .line 451
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOc:Z

    .line 457
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v1, Lcom/tencent/mm/plugin/base/stub/f;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/base/stub/f;-><init>(Lcom/tencent/mm/plugin/base/stub/e;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/base/stub/e;->ckr:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 484
    iput-object p1, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOf:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    .line 485
    iput-object p2, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOd:Lcom/tencent/mm/plugin/base/stub/h;

    .line 486
    iput-object p3, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    .line 487
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/base/stub/e;)Lcom/tencent/mm/plugin/base/stub/OAuthUI;
    .locals 1
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOf:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    return-object v0
.end method

.method public static a(Lcom/tencent/mm/plugin/base/stub/OAuthUI;Ljava/lang/String;Lcom/tencent/mm/sdk/modelmsg/g;Lcom/tencent/mm/plugin/base/stub/h;Lcom/tencent/mm/plugin/webview/stub/al;)Lcom/tencent/mm/plugin/base/stub/e;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 491
    new-instance v1, Lcom/tencent/mm/plugin/base/stub/e;

    invoke-direct {v1, p0, p3, p4}, Lcom/tencent/mm/plugin/base/stub/e;-><init>(Lcom/tencent/mm/plugin/base/stub/OAuthUI;Lcom/tencent/mm/plugin/base/stub/h;Lcom/tencent/mm/plugin/webview/stub/al;)V

    .line 492
    iget-object v0, p2, Lcom/tencent/mm/sdk/modelmsg/g;->gcb:Ljava/lang/String;

    iget-object v2, p2, Lcom/tencent/mm/sdk/modelmsg/g;->cnI:Ljava/lang/String;

    iget-boolean v3, v1, Lcom/tencent/mm/plugin/base/stub/e;->cOb:Z

    if-eqz v3, :cond_0

    const-string v0, "MicroMsg.OAuthSession"

    const-string v2, "already getting"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :goto_0
    return-object v1

    .line 492
    :cond_0
    iput-boolean v4, v1, Lcom/tencent/mm/plugin/base/stub/e;->cOc:Z

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "geta8key_data_appid"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "geta8key_data_scope"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "geta8key_data_state"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v1, Lcom/tencent/mm/plugin/base/stub/e;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const/16 v2, 0xe9

    invoke-interface {v0, v2, v3}, Lcom/tencent/mm/plugin/webview/stub/al;->c(ILandroid/os/Bundle;)Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/tencent/mm/plugin/base/stub/e;->cOb:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, v1, Lcom/tencent/mm/plugin/base/stub/e;->ckr:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MicroMsg.OAuthSession"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startGetA8Key, ex = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/base/stub/e;Lcom/tencent/mm/ui/base/ch;)Lcom/tencent/mm/ui/base/ch;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOe:Lcom/tencent/mm/ui/base/ch;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/plugin/webview/stub/d;)V
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 541
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOc:Z

    if-nez v0, :cond_0

    .line 542
    const-string v0, "MicroMsg.OAuthSession"

    const-string v1, "onScenEnd, not listening"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :goto_0
    return-void

    .line 551
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/tencent/mm/plugin/webview/stub/d;->aoT()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 552
    :try_start_1
    invoke-interface {p1}, Lcom/tencent/mm/plugin/webview/stub/d;->aoU()I

    move-result v2

    .line 553
    invoke-interface {p1}, Lcom/tencent/mm/plugin/webview/stub/d;->xl()Ljava/lang/String;

    .line 554
    invoke-interface {p1}, Lcom/tencent/mm/plugin/webview/stub/d;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "geta8key_result_full_url"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 559
    :goto_1
    const-string v6, "MicroMsg.OAuthSession"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onSceneEnd, errType = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", errCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v6, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOe:Lcom/tencent/mm/ui/base/ch;

    if-eqz v6, :cond_1

    .line 562
    iget-object v6, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOe:Lcom/tencent/mm/ui/base/ch;

    invoke-virtual {v6}, Lcom/tencent/mm/ui/base/ch;->dismiss()V

    .line 565
    :cond_1
    iput-boolean v4, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOb:Z

    .line 566
    iget-object v6, p0, Lcom/tencent/mm/plugin/base/stub/e;->ckr:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v6}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 568
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 569
    iget-object v1, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOd:Lcom/tencent/mm/plugin/base/stub/h;

    invoke-interface {v1, p0, v0, v5}, Lcom/tencent/mm/plugin/base/stub/h;->a(Lcom/tencent/mm/plugin/base/stub/e;Ljava/lang/String;Z)V

    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    move-object v3, v0

    move v0, v2

    .line 556
    :goto_2
    const-string v6, "MicroMsg.OAuthSession"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onSceneEnd, ex = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    move v2, v0

    move-object v0, v1

    goto :goto_1

    .line 571
    :cond_2
    const/4 v6, 0x4

    if-ne v3, v6, :cond_3

    const/16 v6, -0x64

    if-ne v2, v6, :cond_3

    .line 573
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOf:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->stopLoading()V

    .line 576
    :try_start_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v0, v3, v2}, Lcom/tencent/mm/plugin/webview/stub/al;->aL(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 577
    :catch_1
    move-exception v0

    .line 578
    const-string v1, "MicroMsg.OAuthSession"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "accountExpired, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 581
    :cond_3
    if-eq v3, v5, :cond_4

    const/4 v2, 0x2

    if-eq v3, v2, :cond_4

    const/4 v2, 0x7

    if-eq v3, v2, :cond_4

    const/16 v2, 0x8

    if-ne v3, v2, :cond_5

    :cond_4
    const-string v2, "MicroMsg.OAuthSession"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isNetworkAvailable false, errType = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    :goto_3
    if-nez v2, :cond_7

    .line 582
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOd:Lcom/tencent/mm/plugin/base/stub/h;

    invoke-interface {v0, p0, v1, v4}, Lcom/tencent/mm/plugin/base/stub/h;->a(Lcom/tencent/mm/plugin/base/stub/e;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 581
    :cond_5
    iget-object v2, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOf:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/ba;->bk(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "MicroMsg.OAuthSession"

    const-string v3, "isNetworkAvailable false, not connected"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    goto :goto_3

    :cond_6
    move v2, v5

    goto :goto_3

    .line 585
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOd:Lcom/tencent/mm/plugin/base/stub/h;

    invoke-interface {v1, p0, v0, v5}, Lcom/tencent/mm/plugin/base/stub/h;->a(Lcom/tencent/mm/plugin/base/stub/e;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 555
    :catch_2
    move-exception v0

    move-object v9, v0

    move v0, v2

    move v2, v3

    move-object v3, v9

    goto/16 :goto_2
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/base/stub/e;->cOc:Z

    .line 538
    return-void
.end method
