.class final Lcom/tencent/mm/plugin/webview/stub/m;
.super Lcom/tencent/mm/plugin/webview/stub/am;
.source "SourceFile"


# instance fields
.field final synthetic feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/webview/stub/am;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/webview/stub/m;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/webview/stub/ae;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/plugin/webview/stub/ae;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static p(Landroid/os/Bundle;)Z
    .locals 5
    .parameter

    .prologue
    .line 443
    const-string v0, "geta8key_data_req_url"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Lcom/tencent/mm/modelsimple/x;

    const-string v2, "geta8key_data_username"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "geta8key_data_scene"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "geta8key_data_reason"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/mm/modelsimple/x;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 452
    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    move-result v0

    return v0

    .line 449
    :cond_0
    new-instance v0, Lcom/tencent/mm/modelsimple/x;

    const-string v1, "geta8key_data_appid"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "geta8key_data_scope"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "geta8key_data_state"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/modelsimple/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic r(Landroid/os/Bundle;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-static {p0}, Lcom/tencent/mm/plugin/webview/stub/m;->p(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final C(Ljava/lang/String;Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 526
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/h;->b(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/ae;)Lcom/tencent/mm/pluginsdk/ad;

    move-result-object v0

    .line 527
    if-eqz v0, :cond_0

    .line 528
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-interface {v0, v1, p1, p2}, Lcom/tencent/mm/pluginsdk/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 531
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final D(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 550
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/h;->b(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/ae;)Lcom/tencent/mm/pluginsdk/ad;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_0

    .line 552
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-interface {v0, v1, p1, p2}, Lcom/tencent/mm/pluginsdk/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 554
    :cond_0
    return-void
.end method

.method public final Dj()Ljava/lang/String;
    .locals 4

    .prologue
    .line 495
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v0

    .line 496
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getToolsPath, needSetUin = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/t;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/webview/stub/t;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;)V

    .line 506
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 509
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/ag/a;->Dj()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final HB()Z
    .locals 4

    .prologue
    .line 149
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v0

    .line 150
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hasSetUin, needSetUin = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/ac;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/plugin/webview/stub/ac;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;Ljava/lang/Boolean;)V

    .line 160
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/plugin/webview/stub/ao;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 766
    const-string v0, "MicroMsg.WebViewStubService"

    const-string v1, "addCallback, cb.hash = %d, id = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 767
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->f(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;

    invoke-direct {v1, p1, p2}, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;-><init>(Lcom/tencent/mm/plugin/webview/stub/ao;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 639
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 640
    new-instance v1, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;-><init>()V

    .line 641
    invoke-virtual {v1, p2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->i(Landroid/os/Bundle;)V

    .line 642
    const-string v2, "proxyui_perm_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 643
    const-string v1, "proxyui_username_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;ILandroid/os/Bundle;)V

    .line 645
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {p2}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->pV(Ljava/lang/String;)Z

    move-result v2

    .line 607
    const-string v0, "MicroMsg.WebViewStubService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "handleMsg, function = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", doInActivity = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    new-instance v4, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;-><init>()V

    .line 609
    invoke-virtual {v4, p4}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->i(Landroid/os/Bundle;)V

    .line 610
    const/4 v1, 0x0

    .line 611
    if-eqz p5, :cond_0

    .line 612
    const-string v0, "geta8key_result_scope_list"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 613
    if-eqz v0, :cond_0

    .line 614
    check-cast v0, Ljava/util/ArrayList;

    .line 615
    const-string v1, "MicroMsg.WebViewStubService"

    const-string v3, "has scopeList size = %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v3, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    .line 619
    :cond_0
    if-eqz v2, :cond_1

    .line 620
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 621
    const/4 v0, 0x1

    .line 634
    :goto_0
    return v0

    .line 624
    :cond_1
    new-instance v2, Lcom/tencent/mm/ui/tools/jsapi/ao;

    invoke-direct {v2}, Lcom/tencent/mm/ui/tools/jsapi/ao;-><init>()V

    .line 625
    iput-object p1, v2, Lcom/tencent/mm/ui/tools/jsapi/ao;->type:Ljava/lang/String;

    .line 626
    iput-object p2, v2, Lcom/tencent/mm/ui/tools/jsapi/ao;->function:Ljava/lang/String;

    .line 627
    iput-object p3, v2, Lcom/tencent/mm/ui/tools/jsapi/ao;->hpK:Ljava/lang/String;

    .line 628
    invoke-static {p6}, Lcom/tencent/mm/ui/tools/jsapi/ao;->B(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    .line 630
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->f(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->f(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v3}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->f(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;->aNT()Lcom/tencent/mm/plugin/webview/stub/ao;

    move-result-object v0

    .line 631
    :goto_1
    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aOA()Lcom/tencent/mm/ui/tools/jsapi/p;

    move-result-object v3

    iget-object v5, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-virtual {v3, v5, v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Landroid/content/Context;Lcom/tencent/mm/plugin/webview/stub/ao;)V

    .line 632
    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aOA()Lcom/tencent/mm/ui/tools/jsapi/p;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/ao;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Ljava/util/ArrayList;)Z

    move-result v0

    .line 633
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleRet = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 630
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final aF(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 601
    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aOA()Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aoZ()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public final aH(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 682
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apk()Lcom/tencent/mm/pluginsdk/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/pluginsdk/q;->aH(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final aJ(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 363
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v0

    .line 364
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getIntConfig, needSetUin = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/ah;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/tencent/mm/plugin/webview/stub/ah;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;Ljava/lang/Integer;II)V

    .line 374
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 377
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, p2}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/lang/Integer;I)I

    move-result v0

    goto :goto_0
.end method

.method public final aK(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/webview/stub/o;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/mm/plugin/webview/stub/o;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method

.method public final aL(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 742
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 743
    const-string v1, "proxyui_expired_errtype"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 744
    const-string v1, "proxyui_expired_errcode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 745
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;ILandroid/os/Bundle;)V

    .line 746
    return-void
.end method

.method public final aoY()V
    .locals 1

    .prologue
    .line 519
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apk()Lcom/tencent/mm/pluginsdk/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apk()Lcom/tencent/mm/pluginsdk/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/q;->detach()V

    .line 522
    :cond_0
    return-void
.end method

.method public final aoZ()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 582
    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aOA()Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aoZ()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final apa()V
    .locals 1

    .prologue
    .line 596
    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aOA()Lcom/tencent/mm/ui/tools/jsapi/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->detach()V

    .line 597
    return-void
.end method

.method public final apb()Ljava/lang/String;
    .locals 2

    .prologue
    .line 801
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, -0x5b88a1de

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final apc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 811
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/z;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILandroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 168
    const-string v0, "MicroMsg.WebViewStubService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "edw, invoke, actionCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/webview/stub/ad;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/mm/plugin/webview/stub/ad;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method

.method public final c(ILjava/util/List;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 514
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/plugin/d/c/m;->b(ILjava/util/List;)V

    .line 515
    return-void
.end method

.method public final c(ILandroid/os/Bundle;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 412
    packed-switch p1, :pswitch_data_0

    .line 438
    :goto_0
    return v0

    .line 415
    :pswitch_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/webview/stub/m;->HB()Z

    move-result v1

    .line 416
    if-nez v1, :cond_0

    .line 417
    const-string v1, "MicroMsg.WebViewStubService"

    const-string v2, "doScene, hasSetUin false"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v1

    .line 422
    const-string v2, "MicroMsg.WebViewStubService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doScene, needSetUin = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    if-eqz v1, :cond_1

    .line 425
    new-instance v1, Lcom/tencent/mm/plugin/webview/stub/q;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, p0, v0, p2}, Lcom/tencent/mm/plugin/webview/stub/q;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;Ljava/lang/Boolean;Landroid/os/Bundle;)V

    .line 432
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 435
    :cond_1
    invoke-static {p2}, Lcom/tencent/mm/plugin/webview/stub/m;->p(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0xe9
        :pswitch_0
    .end packed-switch
.end method

.method public final cu(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 81
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v0

    .line 82
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDisplayName, needSetUin = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/n;

    const-string v1, ""

    invoke-direct {v0, p0, v1, p1}, Lcom/tencent/mm/plugin/webview/stub/n;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    :goto_0
    return-object v0

    .line 96
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rq()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final cv(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 102
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v0

    .line 103
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isContact, needSetUin = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/y;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/tencent/mm/plugin/webview/stub/y;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 116
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/tencent/mm/model/w;->cv(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final cw(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 126
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v0

    .line 127
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isBizContact, needSetUin = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/ab;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/tencent/mm/plugin/webview/stub/ab;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/tencent/mm/model/w;->cw(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final db(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 121
    invoke-static {p1}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isBusy()Z
    .locals 4

    .prologue
    .line 587
    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aOA()Lcom/tencent/mm/ui/tools/jsapi/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->isBusy()Z

    move-result v0

    .line 588
    if-eqz v0, :cond_0

    .line 589
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isBusy, doingFunction = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aOA()Lcom/tencent/mm/ui/tools/jsapi/p;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/mm/ui/tools/jsapi/p;->hpr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_0
    return v0
.end method

.method public final isSDCardAvailable()Z
    .locals 4

    .prologue
    .line 344
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v0

    .line 345
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSDCardAvailable, needSetUin = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    if-eqz v0, :cond_0

    .line 348
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/ag;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/plugin/webview/stub/ag;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;Ljava/lang/Boolean;)V

    .line 355
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 358
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method public final jR(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 687
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v0

    .line 688
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCacheInfo, needSetUin = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    if-eqz v0, :cond_0

    .line 691
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/w;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/plugin/webview/stub/w;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;I)V

    .line 699
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 703
    :goto_0
    return-object v0

    .line 702
    :cond_0
    invoke-static {}, Lcom/tencent/mm/ag/a;->Dl()Lcom/tencent/mm/ag/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ag/d;->et(I)Lcom/tencent/mm/ag/c;

    move-result-object v0

    .line 703
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/tencent/mm/ag/c;->field_value:Ljava/lang/String;

    goto :goto_0
.end method

.method public final jS(I)Z
    .locals 4
    .parameter

    .prologue
    .line 708
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v0

    .line 709
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hasCacheInfo, needSetUin = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    if-eqz v0, :cond_0

    .line 712
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/x;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/plugin/webview/stub/x;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;I)V

    .line 719
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 722
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/ag/a;->Dl()Lcom/tencent/mm/ag/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ag/d;->et(I)Lcom/tencent/mm/ag/c;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final jT(I)V
    .locals 5
    .parameter

    .prologue
    .line 755
    const-string v0, "MicroMsg.WebViewStubService"

    const-string v1, "removeCallback, id = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v0}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->f(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;

    .line 757
    iget v2, v0, Lcom/tencent/mm/ui/tools/WebViewStubCallbackWrapper;->id:I

    if-ne v2, p1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->f(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 762
    :cond_1
    return-void
.end method

.method public final o(Landroid/os/Bundle;)Lcom/tencent/mm/plugin/webview/stub/a;
    .locals 11
    .parameter

    .prologue
    const-wide/high16 v9, -0x8000

    const/4 v8, 0x0

    .line 271
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/aj;

    invoke-direct {v0, v8}, Lcom/tencent/mm/plugin/webview/stub/aj;-><init>(B)V

    .line 273
    const-string v1, "msg_id"

    invoke-virtual {p1, v1, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 274
    const-string v3, "sns_local_id"

    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 275
    const-string v4, "news_svr_id"

    invoke-virtual {p1, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 276
    const-string v5, "news_svr_tweetid"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 278
    new-instance v6, Lcom/tencent/mm/c/a/x;

    invoke-direct {v6}, Lcom/tencent/mm/c/a/x;-><init>()V

    .line 279
    cmp-long v7, v9, v1

    if-eqz v7, :cond_1

    .line 282
    iget-object v3, v6, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    const-string v4, "message_index"

    invoke-virtual {p1, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/tencent/mm/c/a/y;->bMp:I

    .line 284
    invoke-static {v6, v1, v2}, Lcom/tencent/mm/pluginsdk/model/b;->a(Lcom/tencent/mm/c/a/x;J)Z

    move-result v1

    .line 309
    :goto_0
    if-eqz v1, :cond_4

    .line 310
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 317
    :cond_0
    :goto_1
    iput-boolean v1, v0, Lcom/tencent/mm/plugin/webview/stub/aj;->feS:Z

    .line 318
    iget-object v1, v6, Lcom/tencent/mm/c/a/x;->bMm:Lcom/tencent/mm/c/a/z;

    iget v1, v1, Lcom/tencent/mm/c/a/z;->ret:I

    iput v1, v0, Lcom/tencent/mm/plugin/webview/stub/aj;->ret:I

    .line 319
    iget-object v1, v6, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget v1, v1, Lcom/tencent/mm/c/a/y;->type:I

    iput v1, v0, Lcom/tencent/mm/plugin/webview/stub/aj;->type:I

    .line 320
    :goto_2
    return-object v0

    .line 286
    :cond_1
    if-eqz v3, :cond_2

    .line 288
    new-instance v1, Lcom/tencent/mm/c/a/gd;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/gd;-><init>()V

    .line 289
    iget-object v2, v1, Lcom/tencent/mm/c/a/gd;->bQz:Lcom/tencent/mm/c/a/ge;

    iput v3, v2, Lcom/tencent/mm/c/a/ge;->bQB:I

    .line 290
    iget-object v2, v1, Lcom/tencent/mm/c/a/gd;->bQz:Lcom/tencent/mm/c/a/ge;

    iput-object v6, v2, Lcom/tencent/mm/c/a/ge;->bQC:Lcom/tencent/mm/c/a/x;

    .line 291
    iget-object v2, v1, Lcom/tencent/mm/c/a/gd;->bQz:Lcom/tencent/mm/c/a/ge;

    const-string v3, "rawUrl"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/c/a/ge;->url:Ljava/lang/String;

    .line 292
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 293
    iget-object v1, v1, Lcom/tencent/mm/c/a/gd;->bQA:Lcom/tencent/mm/c/a/gf;

    iget-boolean v1, v1, Lcom/tencent/mm/c/a/gf;->bMh:Z

    goto :goto_0

    .line 294
    :cond_2
    if-eqz v4, :cond_3

    .line 296
    new-instance v1, Lcom/tencent/mm/c/a/ew;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/ew;-><init>()V

    .line 297
    iget-object v2, v1, Lcom/tencent/mm/c/a/ew;->bPF:Lcom/tencent/mm/c/a/ex;

    const/4 v3, 0x3

    iput v3, v2, Lcom/tencent/mm/c/a/ex;->bNK:I

    .line 298
    iget-object v2, v1, Lcom/tencent/mm/c/a/ew;->bPF:Lcom/tencent/mm/c/a/ex;

    iput-object v6, v2, Lcom/tencent/mm/c/a/ex;->bPH:Lcom/tencent/mm/c/a/x;

    .line 299
    iget-object v2, v1, Lcom/tencent/mm/c/a/ew;->bPF:Lcom/tencent/mm/c/a/ex;

    iput v4, v2, Lcom/tencent/mm/c/a/ex;->bPI:I

    .line 300
    iget-object v2, v1, Lcom/tencent/mm/c/a/ew;->bPF:Lcom/tencent/mm/c/a/ex;

    iput-object v5, v2, Lcom/tencent/mm/c/a/ex;->bPJ:Ljava/lang/String;

    .line 301
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 302
    iget-object v1, v1, Lcom/tencent/mm/c/a/ew;->bPG:Lcom/tencent/mm/c/a/ey;

    iget-boolean v1, v1, Lcom/tencent/mm/c/a/ey;->bMh:Z

    goto :goto_0

    .line 305
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/mm/plugin/webview/stub/aj;->feR:Z

    goto :goto_2

    .line 312
    :cond_4
    iget-object v2, v6, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget v2, v2, Lcom/tencent/mm/c/a/y;->type:I

    if-nez v2, :cond_0

    .line 313
    iget-object v2, v6, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    sget v3, Lcom/tencent/mm/n;->bkK:I

    iput v3, v2, Lcom/tencent/mm/c/a/y;->type:I

    goto :goto_1
.end method

.method public final pT(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 806
    invoke-static {p1}, Lcom/tencent/mm/plugin/webview/b/e;->pT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final pW(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 325
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v0

    .line 326
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getHeadImgPath, needSetUin = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    if-eqz v0, :cond_0

    .line 329
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/af;

    const-string v1, ""

    invoke-direct {v0, p0, v1, p1}, Lcom/tencent/mm/plugin/webview/stub/af;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/tencent/mm/m/c;->dW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final pX(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 536
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apk()Lcom/tencent/mm/pluginsdk/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apk()Lcom/tencent/mm/pluginsdk/q;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-interface {v0, v1, p1}, Lcom/tencent/mm/pluginsdk/q;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pY(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 545
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;ILandroid/os/Bundle;)V

    .line 546
    return-void
.end method

.method public final pZ(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 577
    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/p;->aOA()Lcom/tencent/mm/ui/tools/jsapi/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/tools/jsapi/p;->pZ(Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method public final q(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 393
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v0

    .line 394
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getStringConfig, needSetUin = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    if-eqz v0, :cond_0

    .line 397
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/mm/plugin/webview/stub/p;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;ILjava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 407
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final q(Landroid/os/Bundle;)Z
    .locals 7
    .parameter

    .prologue
    .line 792
    new-instance v0, Lcom/tencent/mm/c/a/u;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/u;-><init>()V

    .line 793
    iget-object v1, v0, Lcom/tencent/mm/c/a/u;->bMi:Lcom/tencent/mm/c/a/v;

    const-string v2, "fav_local_id"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/mm/c/a/v;->bMk:J

    .line 794
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 795
    const-string v1, "MicroMsg.WebViewStubService"

    const-string v2, "do del fav web url, local id %d, result %B"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/tencent/mm/c/a/u;->bMi:Lcom/tencent/mm/c/a/v;

    iget-wide v5, v5, Lcom/tencent/mm/c/a/v;->bMk:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/tencent/mm/c/a/u;->bMj:Lcom/tencent/mm/c/a/w;

    iget-boolean v5, v5, Lcom/tencent/mm/c/a/w;->bMh:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    iget-object v0, v0, Lcom/tencent/mm/c/a/u;->bMj:Lcom/tencent/mm/c/a/w;

    iget-boolean v0, v0, Lcom/tencent/mm/c/a/w;->bMh:Z

    return v0
.end method

.method public final qa(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 649
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/mm/pluginsdk/model/app/l;->F(Ljava/lang/String;Z)Lcom/tencent/mm/pluginsdk/model/app/k;

    move-result-object v0

    .line 650
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_openId:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    const-string v0, "MicroMsg.WebViewStubService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initView trigger getappsetting, appId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    new-instance v0, Lcom/tencent/mm/c/a/co;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/co;-><init>()V

    .line 654
    iget-object v1, v0, Lcom/tencent/mm/c/a/co;->bNS:Lcom/tencent/mm/c/a/cp;

    iput-object p1, v1, Lcom/tencent/mm/c/a/cp;->appId:Ljava/lang/String;

    .line 655
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 657
    :cond_0
    return-void
.end method

.method public final qb(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 661
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v0

    .line 662
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPackageName, needSetUin = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    if-eqz v0, :cond_0

    .line 665
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/v;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/plugin/webview/stub/v;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 677
    :goto_0
    return-object v0

    .line 676
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/mm/pluginsdk/model/app/l;->F(Ljava/lang/String;Z)Lcom/tencent/mm/pluginsdk/model/app/k;

    move-result-object v0

    .line 677
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final qc(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 750
    invoke-static {p1}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final qd()Z
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/tencent/mm/compatible/g/i;->qd()Z

    move-result v0

    return v0
.end method

.method public final qu()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 772
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v0

    .line 773
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRemoveJsInterfaceList, needSetUin = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    if-eqz v0, :cond_0

    .line 776
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/webview/stub/aa;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;)V

    .line 783
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 786
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/e/d;->qB()Lcom/tencent/mm/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/e/a;->qu()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final r(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 727
    new-instance v0, Lcom/tencent/mm/ag/c;

    invoke-direct {v0}, Lcom/tencent/mm/ag/c;-><init>()V

    .line 728
    iput p1, v0, Lcom/tencent/mm/ag/c;->field_urlHash:I

    .line 729
    iput-object p2, v0, Lcom/tencent/mm/ag/c;->field_value:Ljava/lang/String;

    .line 731
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/webview/stub/z;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/plugin/webview/stub/z;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;Lcom/tencent/mm/ag/c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 738
    return-void
.end method

.method public final tK()Z
    .locals 4

    .prologue
    .line 558
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v0

    .line 559
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hasBindQQ, needSetUin = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    if-eqz v0, :cond_0

    .line 562
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/u;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/plugin/webview/stub/u;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;Ljava/lang/Boolean;)V

    .line 569
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 572
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/v;->tK()Z

    move-result v0

    goto :goto_0
.end method

.method public final xT()Ljava/util/List;
    .locals 4

    .prologue
    .line 476
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v0

    .line 477
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMyAcceptLinkList, needSetUin = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    if-eqz v0, :cond_0

    .line 480
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/s;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/webview/stub/s;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;)V

    .line 487
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 490
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/p/p;->xT()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final xU()Z
    .locals 4

    .prologue
    .line 457
    invoke-static {}, Lcom/tencent/mm/model/be;->uC()Z

    move-result v0

    .line 458
    const-string v1, "MicroMsg.WebViewStubService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hasAcceptLinkList, needSetUin = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Lcom/tencent/mm/plugin/webview/stub/r;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/plugin/webview/stub/r;-><init>(Lcom/tencent/mm/plugin/webview/stub/m;Ljava/lang/Boolean;)V

    .line 468
    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/m;->feJ:Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;->a(Lcom/tencent/mm/plugin/webview/stub/WebViewStubService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 471
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/p/p;->xU()Z

    move-result v0

    goto :goto_0
.end method
