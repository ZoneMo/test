.class final Lcom/tencent/mm/plugin/webview/stub/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cOv:Landroid/os/Bundle;

.field final synthetic feK:Lcom/tencent/mm/plugin/webview/stub/m;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/webview/stub/m;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/tencent/mm/plugin/webview/stub/ae;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iput-object p2, p0, Lcom/tencent/mm/plugin/webview/stub/ae;->cOv:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/ae;->cOv:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 263
    sget-object v1, Lcom/tencent/mm/plugin/webview/a/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    iget-object v2, p0, Lcom/tencent/mm/plugin/webview/stub/ae;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v2, v2, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-interface {v1, v0, v2}, Lcom/tencent/mm/pluginsdk/e;->p(Landroid/content/Intent;Landroid/content/Context;)V

    .line 264
    return-void
.end method
