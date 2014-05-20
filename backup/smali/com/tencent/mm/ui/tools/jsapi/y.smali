.class final Lcom/tencent/mm/ui/tools/jsapi/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hpx:Lcom/tencent/mm/ui/tools/jsapi/p;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/p;)V
    .locals 0
    .parameter

    .prologue
    .line 2199
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/y;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/y;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->i(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/pluginsdk/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2204
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/y;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->i(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/pluginsdk/m;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/y;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->j(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/pluginsdk/n;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/m;->b(Lcom/tencent/mm/pluginsdk/n;)V

    .line 2207
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/y;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->j(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/pluginsdk/n;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2208
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "already callback"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    :goto_0
    return-void

    .line 2211
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/y;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->k(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/pluginsdk/n;

    .line 2213
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/y;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/y;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->b(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/ui/tools/jsapi/ao;

    move-result-object v1

    const-string v2, "geo_location:fail_timeout"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
