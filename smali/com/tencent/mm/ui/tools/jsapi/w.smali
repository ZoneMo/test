.class final Lcom/tencent/mm/ui/tools/jsapi/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/tools/jsapi/h;


# instance fields
.field final synthetic hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

.field final synthetic hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2141
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/w;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/jsapi/w;->hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/tools/jsapi/i;)V
    .locals 5
    .parameter

    .prologue
    .line 2145
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doGeoLocation, onJSOAuthEnd, retCode = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/tencent/mm/ui/tools/jsapi/i;->Hr()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2147
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/ag;->hpJ:[I

    invoke-virtual {p1}, Lcom/tencent/mm/ui/tools/jsapi/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2153
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/w;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/w;->hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "geo_location:fail"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 2156
    :goto_0
    return-void

    .line 2149
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/w;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->h(Lcom/tencent/mm/ui/tools/jsapi/p;)V

    goto :goto_0

    .line 2147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
