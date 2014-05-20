.class final Lcom/tencent/mm/plugin/webview/stub/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fex:Lcom/tencent/mm/c/a/ht;

.field final synthetic fey:Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;Lcom/tencent/mm/c/a/ht;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tencent/mm/plugin/webview/stub/g;->fey:Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;

    iput-object p2, p0, Lcom/tencent/mm/plugin/webview/stub/g;->fex:Lcom/tencent/mm/c/a/ht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/g;->fex:Lcom/tencent/mm/c/a/ht;

    iget-object v0, v0, Lcom/tencent/mm/c/a/ht;->bRp:Lcom/tencent/mm/c/a/hv;

    iget-boolean v0, v0, Lcom/tencent/mm/c/a/hv;->bRq:Z

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/g;->fey:Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;->finish()V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/g;->fey:Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;)Lcom/tencent/mm/plugin/webview/stub/ao;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/g;->fey:Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;)Lcom/tencent/mm/plugin/webview/stub/ao;

    move-result-object v0

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/plugin/webview/stub/ao;->a(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/g;->fey:Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;->finish()V

    .line 100
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apo()Lcom/tencent/mm/pluginsdk/p;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/g;->fey:Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;

    iget-object v2, p0, Lcom/tencent/mm/plugin/webview/stub/g;->fex:Lcom/tencent/mm/c/a/ht;

    iget-object v2, v2, Lcom/tencent/mm/c/a/ht;->bRp:Lcom/tencent/mm/c/a/hv;

    iget-object v2, v2, Lcom/tencent/mm/c/a/hv;->bRr:Landroid/content/Intent;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/p;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v1, "MicroMsg.WebViewStubProxyUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealUpdate fail, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
