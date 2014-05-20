.class public Lcom/tencent/mm/plugin/base/stub/OAuthUI;
.super Lcom/tencent/mm/ui/tools/WebViewUI;
.source "SourceFile"


# instance fields
.field private appId:Ljava/lang/String;

.field protected cOj:Landroid/webkit/WebView;

.field private cOk:Landroid/widget/ProgressBar;

.field private cOl:Z

.field private cOm:Lcom/tencent/mm/sdk/modelmsg/g;

.field private cOn:Lcom/tencent/mm/plugin/base/stub/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOl:Z

    return-void
.end method

.method private IA()V
    .locals 4

    .prologue
    .line 315
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/z;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOm:Lcom/tencent/mm/sdk/modelmsg/g;

    new-instance v2, Lcom/tencent/mm/plugin/base/stub/n;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/base/stub/n;-><init>(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)V

    iget-object v3, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/plugin/base/stub/e;->a(Lcom/tencent/mm/plugin/base/stub/OAuthUI;Ljava/lang/String;Lcom/tencent/mm/sdk/modelmsg/g;Lcom/tencent/mm/plugin/base/stub/h;Lcom/tencent/mm/plugin/webview/stub/al;)Lcom/tencent/mm/plugin/base/stub/e;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOn:Lcom/tencent/mm/plugin/base/stub/e;

    .line 351
    return-void
.end method

.method private Iy()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 251
    const-string v1, "MicroMsg.OAuthUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callbackResultCancel, appId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    iget-object v2, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->appId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/tencent/mm/plugin/webview/stub/al;->qb(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 257
    :try_start_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/webview/stub/al;->apc()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 258
    :try_start_2
    iget-object v3, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const v4, 0x43004

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/tencent/mm/plugin/webview/stub/al;->q(ILjava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 263
    :goto_0
    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    const-string v0, "MicroMsg.OAuthUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callbackResultCancel, get app info failed, appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_1
    return-void

    .line 259
    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v2, v0

    move-object v1, v0

    .line 260
    :goto_2
    const-string v4, "MicroMsg.OAuthUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getPackageName, ex = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_0
    new-instance v3, Lcom/tencent/mm/sdk/modelmsg/h;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/modelmsg/h;-><init>()V

    .line 269
    iget-object v4, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOm:Lcom/tencent/mm/sdk/modelmsg/g;

    iget-object v4, v4, Lcom/tencent/mm/sdk/modelmsg/g;->fhS:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/mm/sdk/modelmsg/h;->fhS:Ljava/lang/String;

    .line 270
    const/4 v4, -0x2

    iput v4, v3, Lcom/tencent/mm/sdk/modelmsg/h;->bLJ:I

    .line 271
    iput-object v1, v3, Lcom/tencent/mm/sdk/modelmsg/h;->doZ:Ljava/lang/String;

    .line 272
    iput-object v0, v3, Lcom/tencent/mm/sdk/modelmsg/h;->dHm:Ljava/lang/String;

    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    invoke-virtual {v3, v0}, Lcom/tencent/mm/sdk/modelmsg/h;->h(Landroid/os/Bundle;)V

    .line 276
    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/app/u;->s(Landroid/os/Bundle;)V

    .line 278
    new-instance v1, Lcom/tencent/mm/sdk/a/b;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/a/b;-><init>()V

    .line 279
    iput-object v2, v1, Lcom/tencent/mm/sdk/a/b;->gbQ:Ljava/lang/String;

    .line 280
    iput-object v0, v1, Lcom/tencent/mm/sdk/a/b;->gbS:Landroid/os/Bundle;

    .line 281
    invoke-static {p0, v1}, Lcom/tencent/mm/sdk/a/a;->a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/b;)Z

    goto :goto_1

    .line 259
    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOk:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/base/stub/OAuthUI;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 41
    const-string v1, "MicroMsg.OAuthUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkUrlAndLoad, url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "MicroMsg.OAuthUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check schema as appId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    iget-object v2, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->appId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/tencent/mm/plugin/webview/stub/al;->qb(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/webview/stub/al;->apc()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :try_start_2
    iget-object v3, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const v5, 0x43004

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Lcom/tencent/mm/plugin/webview/stub/al;->q(ILjava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_1
    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "MicroMsg.OAuthUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "find app info failed, appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v2, v0

    move-object v1, v0

    :goto_2
    const-string v5, "MicroMsg.OAuthUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getPackageName, ex = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "http"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "MicroMsg.OAuthUI"

    const-string v1, "checkUrlAndLoad, http scheme, loadUrl"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance v3, Lcom/tencent/mm/sdk/modelmsg/h;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/modelmsg/h;-><init>()V

    iget-object v5, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOm:Lcom/tencent/mm/sdk/modelmsg/g;

    iget-object v5, v5, Lcom/tencent/mm/sdk/modelmsg/g;->fhS:Ljava/lang/String;

    iput-object v5, v3, Lcom/tencent/mm/sdk/modelmsg/h;->fhS:Ljava/lang/String;

    iput-object v1, v3, Lcom/tencent/mm/sdk/modelmsg/h;->doZ:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/mm/sdk/modelmsg/h;->dHm:Ljava/lang/String;

    const-string v0, "code"

    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroMsg.OAuthUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkUrlAndLoad, code = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, -0x1

    iput v0, v3, Lcom/tencent/mm/sdk/modelmsg/h;->bLJ:I

    :goto_3
    const-string v0, "state"

    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/mm/sdk/modelmsg/h;->cnI:Ljava/lang/String;

    const-string v0, "reason"

    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/mm/sdk/modelmsg/h;->gbZ:Ljava/lang/String;

    iput-object p1, v3, Lcom/tencent/mm/sdk/modelmsg/h;->url:Ljava/lang/String;

    const-string v0, "MicroMsg.OAuthUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "checkUrlAndLoad, code="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/mm/sdk/modelmsg/h;->code:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", errCode="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v3, Lcom/tencent/mm/sdk/modelmsg/h;->bLJ:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", state="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v3, Lcom/tencent/mm/sdk/modelmsg/h;->cnI:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", reason="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v3, Lcom/tencent/mm/sdk/modelmsg/h;->gbZ:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v0}, Lcom/tencent/mm/sdk/modelmsg/h;->h(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/app/u;->s(Landroid/os/Bundle;)V

    new-instance v1, Lcom/tencent/mm/sdk/a/b;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/a/b;-><init>()V

    iput-object v2, v1, Lcom/tencent/mm/sdk/a/b;->gbQ:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/sdk/a/b;->gbS:Landroid/os/Bundle;

    invoke-static {p0, v1}, Lcom/tencent/mm/sdk/a/a;->a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/b;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->finish()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, "authdeny"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, -0x4

    iput v0, v3, Lcom/tencent/mm/sdk/modelmsg/h;->bLJ:I

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    iput v1, v3, Lcom/tencent/mm/sdk/modelmsg/h;->bLJ:I

    iput-object v0, v3, Lcom/tencent/mm/sdk/modelmsg/h;->code:Ljava/lang/String;

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_2

    :catch_2
    move-exception v3

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->Iy()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)Lcom/tencent/mm/plugin/base/stub/e;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOn:Lcom/tencent/mm/plugin/base/stub/e;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0, v0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->s(ZZ)V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->IA()V

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 292
    invoke-super {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->FR()V

    .line 293
    const v0, 0x7f0a00e7

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOk:Landroid/widget/ProgressBar;

    .line 294
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOk:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 301
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    .line 304
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    const v1, 0x7f0c0013

    invoke-static {p0, v1}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    const v0, 0x7f0a0153

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 306
    iget-object v1, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 308
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 312
    return-void
.end method

.method protected final Iw()I
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f0301f6

    return v0
.end method

.method protected final Ix()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-super {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->Ix()V

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/al;->HB()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 92
    :goto_0
    if-nez v0, :cond_0

    .line 93
    const-string v0, "MicroMsg.OAuthUI"

    const-string v2, "start, hasSetUin fail"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const v0, 0x7f070a78

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOk:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 97
    new-instance v0, Lcom/tencent/mm/plugin/base/stub/i;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/base/stub/i;-><init>(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 106
    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->dg(Z)V

    .line 204
    :goto_1
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string v2, "MicroMsg.OAuthUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hasSetUin, ex = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    new-instance v2, Lcom/tencent/mm/plugin/base/stub/OAuthUI$2;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI$2;-><init>(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 123
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    new-instance v2, Lcom/tencent/mm/plugin/base/stub/j;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/base/stub/j;-><init>(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 133
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    new-instance v2, Lcom/tencent/mm/plugin/base/stub/k;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/base/stub/k;-><init>(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 143
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cn;->b(Landroid/webkit/WebView;)V

    .line 145
    new-instance v0, Lcom/tencent/mm/plugin/base/stub/l;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/base/stub/l;-><init>(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 155
    const v0, 0x7f070a2b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/plugin/base/stub/m;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/base/stub/m;-><init>(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->a(ILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 169
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 171
    const-string v0, "_mmessage_content"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 173
    const-string v2, "appid"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->appId:Ljava/lang/String;

    .line 175
    const-string v0, "MicroMsg.OAuthUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initView, appId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    iget-object v2, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->appId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/tencent/mm/plugin/webview/stub/al;->qa(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    :goto_2
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/g;

    invoke-direct {v0, v1}, Lcom/tencent/mm/sdk/modelmsg/g;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOm:Lcom/tencent/mm/sdk/modelmsg/g;

    .line 197
    :try_start_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->hnl:Lcom/tencent/mm/ui/tools/hu;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/hu;->aOf()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 202
    :goto_3
    invoke-direct {p0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->IA()V

    goto/16 :goto_1

    .line 187
    :catch_1
    move-exception v0

    .line 188
    const-string v2, "MicroMsg.OAuthUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkGetAppSetting, ex = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 198
    :catch_2
    move-exception v0

    .line 199
    const-string v1, "MicroMsg.OAuthUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AC_ADD_SCENE_END, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected final Iz()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/tencent/mm/plugin/webview/stub/d;)V
    .locals 1
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOn:Lcom/tencent/mm/plugin/base/stub/e;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOn:Lcom/tencent/mm/plugin/base/stub/e;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/plugin/base/stub/e;->a(Lcom/tencent/mm/plugin/webview/stub/d;)V

    .line 437
    :cond_0
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f03033b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/tools/WebViewUI;->onCreate(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->hnl:Lcom/tencent/mm/ui/tools/hu;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/hu;->aOg()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    .line 230
    invoke-super {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->onDestroy()V

    .line 231
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const-string v1, "MicroMsg.OAuthUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AC_REMOVE_SCENE_END, ex = "

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

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 235
    iget-boolean v1, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOl:Z

    if-nez v1, :cond_0

    if-ne p1, v2, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    .line 246
    :goto_0
    return v0

    .line 240
    :cond_0
    if-ne p1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->Iy()V

    .line 242
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->finish()V

    goto :goto_0

    .line 246
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/tools/WebViewUI;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->onPause()V

    .line 62
    invoke-static {}, Landroid/webkit/WebView;->disablePlatformNotifications()V

    .line 63
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->onResume()V

    .line 55
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 56
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->cOj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 209
    invoke-super {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->onStop()V

    .line 210
    return-void
.end method

.method public final stopLoading()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 429
    invoke-virtual {p0, v0, v0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->s(ZZ)V

    .line 430
    return-void
.end method
