.class final Lcom/tencent/mm/ui/tools/hx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/tools/ib;


# instance fields
.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 3497
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/hx;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3497
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/hx;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/hx;)V
    .locals 5
    .parameter

    .prologue
    .line 3497
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "shortUrl"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/hx;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "shortUrl"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/hx;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/hx;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const/4 v2, 0x4

    invoke-interface {v1, v2, v0}, Lcom/tencent/mm/plugin/webview/stub/al;->b(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "share fail, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final aOe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3503
    const-string v0, "weixin://readershare/"

    return-object v0
.end method

.method public final xL(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 3508
    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/hx;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    sget v3, Lcom/tencent/mm/n;->buH:I

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3510
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/hx;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    const-string v2, ""

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/ui/tools/hy;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/tools/hy;-><init>(Lcom/tencent/mm/ui/tools/hx;)V

    invoke-static {v1, v2, v0, v3, v4}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    .line 3518
    return v5
.end method
