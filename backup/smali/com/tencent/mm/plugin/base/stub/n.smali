.class final Lcom/tencent/mm/plugin/base/stub/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/plugin/base/stub/h;


# instance fields
.field final synthetic cOo:Lcom/tencent/mm/plugin/base/stub/OAuthUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/tencent/mm/plugin/base/stub/n;->cOo:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/plugin/base/stub/e;Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    const-string v0, "MicroMsg.OAuthUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResult, url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", networkAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p1}, Lcom/tencent/mm/plugin/base/stub/e;->release()V

    .line 327
    :cond_0
    if-nez p3, :cond_2

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/n;->cOo:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    const v1, 0x7f070ba9

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 337
    :goto_0
    const-string v1, "MicroMsg.OAuthUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onResult, html = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/tencent/mm/plugin/base/stub/n;->cOo:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    iget-object v1, v1, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/tencent/mm/plugin/base/stub/n;->cOo:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    iget-object v1, v1, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 349
    :cond_1
    :goto_1
    return-void

    .line 333
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 346
    :cond_2
    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/n;->cOo:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    iget-object v0, v0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/n;->cOo:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    iget-object v0, v0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
