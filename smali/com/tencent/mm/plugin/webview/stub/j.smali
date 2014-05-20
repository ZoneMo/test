.class final Lcom/tencent/mm/plugin/webview/stub/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic feA:Ljava/lang/String;

.field final synthetic feB:Landroid/os/Bundle;

.field final synthetic feC:Lcom/tencent/mm/plugin/webview/stub/i;

.field final synthetic fez:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/webview/stub/i;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/tencent/mm/plugin/webview/stub/j;->feC:Lcom/tencent/mm/plugin/webview/stub/i;

    iput-object p2, p0, Lcom/tencent/mm/plugin/webview/stub/j;->fez:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/plugin/webview/stub/j;->feA:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/mm/plugin/webview/stub/j;->feB:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/j;->feC:Lcom/tencent/mm/plugin/webview/stub/i;

    iget-object v0, v0, Lcom/tencent/mm/plugin/webview/stub/i;->fey:Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;->finish()V

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/j;->feC:Lcom/tencent/mm/plugin/webview/stub/i;

    iget-object v0, v0, Lcom/tencent/mm/plugin/webview/stub/i;->fey:Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubProxyUI;)Lcom/tencent/mm/plugin/webview/stub/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/j;->fez:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/plugin/webview/stub/j;->feA:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/plugin/webview/stub/j;->feB:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/webview/stub/ao;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string v1, "MicroMsg.callbackerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wrapper onHandleEnd, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
