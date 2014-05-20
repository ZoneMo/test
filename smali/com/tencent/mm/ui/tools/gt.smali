.class final Lcom/tencent/mm/ui/tools/gt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/gt;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 380
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "edw onServiceConnected"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gt;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 382
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "onServiceConnected, activity destroyed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gt;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {p2}, Lcom/tencent/mm/plugin/webview/stub/am;->q(Landroid/os/IBinder;)Lcom/tencent/mm/plugin/webview/stub/al;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gt;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gt;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->c(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/plugin/webview/stub/ao;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/gt;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/plugin/webview/stub/al;->a(Lcom/tencent/mm/plugin/webview/stub/ao;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gt;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->Ix()V

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    const-string v1, "MicroMsg.WebViewUI"

    const-string v2, "addCallback fail, ex = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 399
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "edw onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gt;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    .line 401
    return-void
.end method
