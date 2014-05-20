.class final Lcom/tencent/mm/ui/tools/jsapi/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/n;


# instance fields
.field final synthetic hpx:Lcom/tencent/mm/ui/tools/jsapi/p;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/p;)V
    .locals 0
    .parameter

    .prologue
    .line 2169
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/x;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(DDIDD)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2173
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doGeoLocation.onGetLocation, fLongitude:%f, fLatitude:%f, locType:%d, speed:%f, accuracy:%f"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p8, p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2175
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/x;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->i(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/pluginsdk/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/x;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->i(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/pluginsdk/m;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/x;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->j(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/pluginsdk/n;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/m;->b(Lcom/tencent/mm/pluginsdk/n;)V

    .line 2179
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/x;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->j(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/pluginsdk/n;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2180
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "already callback"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    :goto_0
    return-void

    .line 2183
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/x;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->k(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/pluginsdk/n;

    .line 2185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2186
    const-string v1, "longitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2187
    const-string v1, "latitude"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2188
    const-string v1, "speed"

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2189
    const-string v1, "accuracy"

    invoke-static {p8, p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/x;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/x;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->b(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/ui/tools/jsapi/ao;

    move-result-object v2

    const-string v3, "geo_location:ok"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
