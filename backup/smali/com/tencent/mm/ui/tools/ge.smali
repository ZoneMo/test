.class final Lcom/tencent/mm/ui/tools/ge;
.super Lcom/tencent/mm/plugin/webview/stub/ap;
.source "SourceFile"


# instance fields
.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/webview/stub/ap;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 229
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callback, actionCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    packed-switch p1, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->finish()V

    goto :goto_0

    .line 238
    :pswitch_1
    const-string v0, "download_manager_downloadid"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 239
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v2, v2, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/tools/gb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/gb;->aNQ()Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v2, v2, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    const-string v3, "download_succ"

    invoke-virtual {v2, v0, v1, v3}, Lcom/tencent/mm/ui/tools/jsapi/j;->f(JLjava/lang/String;)V

    goto :goto_0

    .line 245
    :pswitch_2
    const-string v0, "download_manager_downloadid"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 246
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v2, v2, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/tools/gb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/gb;->aNQ()Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->awu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v2, v2, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    const-string v3, "download_fail"

    invoke-virtual {v2, v0, v1, v3}, Lcom/tencent/mm/ui/tools/jsapi/j;->f(JLjava/lang/String;)V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final aoR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final aoV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->bQI:Ljava/lang/String;

    return-object v0
.end method

.method public final aoW()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "srcUsername"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aoX()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/jsapi/j;->aoX()V

    .line 331
    :cond_0
    return-void
.end method

.method public final b(Lcom/tencent/mm/plugin/webview/stub/d;)Z
    .locals 2
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnl:Lcom/tencent/mm/ui/tools/hu;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/hu;->aOh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->b(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/tools/gf;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/tools/gf;-><init>(Lcom/tencent/mm/ui/tools/ge;Lcom/tencent/mm/plugin/webview/stub/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->hnc:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-static {p3}, Lcom/tencent/mm/ui/tools/jsapi/ao;->B(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/mm/ui/tools/jsapi/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 286
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final cb(Z)V
    .locals 2
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->b(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/tools/gh;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/tools/gh;-><init>(Lcom/tencent/mm/ui/tools/ge;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    return-void
.end method

.method public final cc(Z)V
    .locals 2
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->b(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/tools/gi;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/tools/gi;-><init>(Lcom/tencent/mm/ui/tools/ge;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method

.method public final jQ(I)Z
    .locals 2
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->b(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/tools/gg;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/tools/gg;-><init>(Lcom/tencent/mm/ui/tools/ge;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public final n(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 335
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "IUIController, closeWindow"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    if-eqz p1, :cond_0

    .line 337
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 338
    const-string v1, "result_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 339
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->setResult(ILandroid/content/Intent;)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->finish()V

    .line 342
    return-void
.end method

.method public final pU(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 346
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 354
    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 355
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "setFontSizeCb fail, viewWV is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_1
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    const-string v1, "MicroMsg.WebViewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setFontSizeCb, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/4 v0, 0x0

    goto :goto_0

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;I)V

    goto :goto_1
.end method
