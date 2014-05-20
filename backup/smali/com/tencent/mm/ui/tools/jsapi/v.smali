.class final Lcom/tencent/mm/ui/tools/jsapi/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/model/downloader/c;


# instance fields
.field final synthetic hpB:Lcom/tencent/mm/pluginsdk/model/downloader/e;

.field final synthetic hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

.field final synthetic hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/pluginsdk/model/downloader/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1861
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/v;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/jsapi/v;->hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;

    iput-object p3, p0, Lcom/tencent/mm/ui/tools/jsapi/v;->hpB:Lcom/tencent/mm/pluginsdk/model/downloader/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1869
    if-nez p3, :cond_0

    .line 1870
    const-string v0, "MicroMsg.MsgHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCheckFinished fail, origMD5 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", checkedMD5 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/v;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/v;->hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v0, "install_download_task:fail_checkmd5"

    .line 1874
    :goto_0
    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 1876
    return-void

    .line 1873
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/v;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/v;->hpB:Lcom/tencent/mm/pluginsdk/model/downloader/e;

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/model/downloader/e;->fim:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/model/app/u;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    .line 1874
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/v;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/v;->hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;

    if-eqz v0, :cond_1

    const-string v0, "install_download_task:ok"

    goto :goto_0

    :cond_1
    const-string v0, "install_download_task:fail"

    goto :goto_0
.end method
