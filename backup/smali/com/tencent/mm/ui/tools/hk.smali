.class final Lcom/tencent/mm/ui/tools/hk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/v;


# instance fields
.field final synthetic eeS:Ljava/lang/String;

.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/hk;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/hk;->eeS:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bo(I)V
    .locals 3
    .parameter

    .prologue
    .line 1361
    packed-switch p1, :pswitch_data_0

    .line 1373
    :goto_0
    return-void

    .line 1363
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/hk;->eeS:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->xJ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1364
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showLoadUrlMenu, canLoadUrl fail, url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/hk;->eeS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/hk;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->j(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    goto :goto_0

    .line 1368
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/hk;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOj:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/hk;->eeS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1372
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/hk;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/hk;->eeS:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/hk;->eeS:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/e/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
