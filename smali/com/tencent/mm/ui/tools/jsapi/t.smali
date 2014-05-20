.class final Lcom/tencent/mm/ui/tools/jsapi/t;
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
    .line 1549
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/t;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/jsapi/t;->hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/tools/jsapi/i;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1553
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doEditAddress, onJSOAuthEnd, retCode = %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/mm/ui/tools/jsapi/i;->Hr()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1555
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/ag;->hpJ:[I

    invoke-virtual {p1}, Lcom/tencent/mm/ui/tools/jsapi/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1567
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/t;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/t;->hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "edit_address:fail"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 1570
    :cond_0
    :goto_0
    return-void

    .line 1557
    :pswitch_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1558
    const-string v1, "req_url"

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/t;->hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "url"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    const-string v1, "req_app_id"

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/t;->hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "appId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1560
    const-string v0, "launch_from_webview"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1561
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/t;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/mm/ui/MMActivity;

    if-eqz v0, :cond_0

    .line 1562
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/t;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMActivity;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/t;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMActivity;->a(Lcom/tencent/mm/ui/br;)V

    .line 1563
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/t;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "wallet"

    const-string v2, ".address.ui.WalletSelectAddrUI"

    const/4 v4, 0x3

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/ak/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;IZ)V

    goto :goto_0

    .line 1555
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
