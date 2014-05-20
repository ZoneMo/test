.class final Lcom/tencent/mm/ui/tools/hm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/tools/ib;


# instance fields
.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

.field public final hnz:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 1
    .parameter

    .prologue
    .line 3564
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/hm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3566
    const-string v0, "weixin://addfriend/"

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/hm;->hnz:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3564
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/hm;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    return-void
.end method


# virtual methods
.method public final aOe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3570
    const-string v0, "weixin://addfriend/"

    return-object v0
.end method

.method public final xL(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 3575
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/hm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/tools/gb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/gb;->aNQ()Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->avP()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3576
    const-string v1, "MicroMsg.WebViewUI"

    const-string v2, "AddFriendHandler, permission fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3597
    :goto_0
    return v0

    .line 3580
    :cond_0
    const/16 v1, 0x13

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3581
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3582
    const/4 v0, 0x0

    goto :goto_0

    .line 3589
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3590
    const-string v3, "from_webview"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3591
    const-string v3, "userName"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3593
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/hm;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const/16 v3, 0x8

    invoke-interface {v1, v3, v2}, Lcom/tencent/mm/plugin/webview/stub/al;->b(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3594
    :catch_0
    move-exception v1

    .line 3595
    const-string v2, "MicroMsg.WebViewUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AddFriendHandler, ex = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
