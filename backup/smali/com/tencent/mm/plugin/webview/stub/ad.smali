.class final Lcom/tencent/mm/plugin/webview/stub/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cOv:Landroid/os/Bundle;

.field final synthetic feK:Lcom/tencent/mm/plugin/webview/stub/m;

.field final synthetic feP:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/webview/stub/m;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iput p2, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feP:I

    iput-object p3, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->cOv:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/16 v8, 0xe9

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 174
    iget v0, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feP:I

    packed-switch v0, :pswitch_data_0

    .line 248
    const-string v0, "MicroMsg.WebViewStubService"

    const-string v1, "not support action code:[%d]"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feP:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 176
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v0, v0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->cOv:Landroid/os/Bundle;

    invoke-static {v0, v4, v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 179
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v0, v0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->cOv:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/webview/stub/m;->a(Lcom/tencent/mm/plugin/webview/stub/m;Landroid/os/Bundle;)V

    goto :goto_0

    .line 185
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v0, v0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->cOv:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 188
    :pswitch_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->cOv:Landroid/os/Bundle;

    const-string v1, "scene_end_type"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 189
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->cOv:Landroid/os/Bundle;

    const-string v2, "scene_end_listener_hash_code"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 190
    if-eq v1, v3, :cond_1

    .line 191
    iget-object v2, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v2, v2, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v2}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->b(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_1
    const-string v2, "MicroMsg.WebViewStubService"

    const-string v3, "add Scene end, hashCode:[%d], set size:[%d]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v5, v5, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v5}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->b(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    if-lez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v0, v0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->c(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)I

    .line 197
    const-string v0, "MicroMsg.WebViewStubService"

    const-string v2, "real add Scene end, hashCode:[%d]"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v1, v1, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-virtual {v0, v8, v1}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    goto/16 :goto_0

    .line 203
    :pswitch_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->cOv:Landroid/os/Bundle;

    const-string v1, "scene_end_type"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->cOv:Landroid/os/Bundle;

    const-string v2, "scene_end_listener_hash_code"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 205
    if-eq v1, v3, :cond_2

    .line 206
    iget-object v2, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v2, v2, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v2}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->b(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 208
    :cond_2
    const-string v2, "MicroMsg.WebViewStubService"

    const-string v3, "remove Scene end, hashCode:[%d], set size:[%d]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v5, v5, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v5}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->b(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    if-lez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v0, v0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->d(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)I

    .line 211
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v0, v0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->e(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v0, v0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->b(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 212
    const-string v0, "MicroMsg.WebViewStubService"

    const-string v2, "real remove Scene end, hashCode:[%d]"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v1, v1, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-virtual {v0, v8, v1}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    goto/16 :goto_0

    .line 220
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 221
    const-string v1, "MMActivity.OverrideEnterAnimation"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v1, "MMActivity.OverrideExitAnimation"

    sget v2, Lcom/tencent/mm/b;->YF:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 224
    sget-object v1, Lcom/tencent/mm/plugin/webview/a/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    iget-object v2, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v2, v2, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-interface {v1, v0, v2}, Lcom/tencent/mm/pluginsdk/e;->q(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 229
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->cOv:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 231
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    sget-object v1, Lcom/tencent/mm/plugin/webview/a/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    iget-object v2, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v2, v2, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-interface {v1, v0, v2}, Lcom/tencent/mm/pluginsdk/e;->r(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 237
    :pswitch_8
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iget-object v0, v0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/ad;->cOv:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 243
    :pswitch_9
    invoke-static {}, Lcom/tencent/mm/plugin/webview/b/e;->clear()V

    goto/16 :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
