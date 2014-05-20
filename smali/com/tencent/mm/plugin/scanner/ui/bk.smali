.class final Lcom/tencent/mm/plugin/scanner/ui/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic eeR:Lcom/tencent/mm/plugin/scanner/ui/bi;

.field final synthetic eeS:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/bi;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/bk;->eeR:Lcom/tencent/mm/plugin/scanner/ui/bi;

    iput-object p2, p0, Lcom/tencent/mm/plugin/scanner/ui/bk;->eeS:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 261
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bk;->eeR:Lcom/tencent/mm/plugin/scanner/ui/bi;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bk;->eeR:Lcom/tencent/mm/plugin/scanner/ui/bi;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/bi;->e(Lcom/tencent/mm/plugin/scanner/ui/bi;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/tools/n;

    invoke-direct {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/n;-><init>()V

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/y;->a(Lcom/tencent/mm/pluginsdk/ui/tools/z;)V

    .line 265
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 266
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 267
    const-string v2, "jsapi_args_appid"

    const-string v3, "wx751a1acca5688ba3"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v2, "jsapiargs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 269
    const-string v1, "rawUrl"

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/bk;->eeS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v1, "show_bottom"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    const-string v1, "title"

    sget v2, Lcom/tencent/mm/n;->bxj:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    const-string v1, "webview_bg_color_rsID"

    sget v2, Lcom/tencent/mm/f;->black:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    const-string v1, "geta8key_scene"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 275
    invoke-static {}, Lcom/tencent/mm/plugin/scanner/a;->Tm()Lcom/tencent/mm/pluginsdk/e;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/bk;->eeR:Lcom/tencent/mm/plugin/scanner/ui/bi;

    iget-object v2, v2, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/tencent/mm/pluginsdk/e;->h(Landroid/content/Intent;Landroid/content/Context;)V

    .line 276
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bk;->eeR:Lcom/tencent/mm/plugin/scanner/ui/bi;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 277
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bk;->eeR:Lcom/tencent/mm/plugin/scanner/ui/bi;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/bi;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method
