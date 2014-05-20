.class final Lcom/tencent/mm/ui/tools/jsapi/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dFm:Lcom/tencent/mm/c/a/er;

.field final synthetic hpI:Ljava/lang/String;

.field final synthetic hpx:Lcom/tencent/mm/ui/tools/jsapi/p;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/c/a/er;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2568
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->dFm:Lcom/tencent/mm/c/a/er;

    iput-object p3, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->hpI:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2571
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "JSOAUTH errCode[%s], isAccept[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->dFm:Lcom/tencent/mm/c/a/er;

    iget-object v4, v4, Lcom/tencent/mm/c/a/er;->bPt:Lcom/tencent/mm/c/a/et;

    iget v4, v4, Lcom/tencent/mm/c/a/et;->bLJ:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->dFm:Lcom/tencent/mm/c/a/er;

    iget-object v4, v4, Lcom/tencent/mm/c/a/er;->bPt:Lcom/tencent/mm/c/a/et;

    iget-boolean v4, v4, Lcom/tencent/mm/c/a/et;->bPu:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2572
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->dFm:Lcom/tencent/mm/c/a/er;

    iget-object v0, v0, Lcom/tencent/mm/c/a/er;->bPt:Lcom/tencent/mm/c/a/et;

    iget v0, v0, Lcom/tencent/mm/c/a/et;->bLJ:I

    const/16 v1, -0x77

    if-ne v0, v1, :cond_0

    .line 2591
    :goto_0
    return-void

    .line 2575
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->dFm:Lcom/tencent/mm/c/a/er;

    iget-object v0, v0, Lcom/tencent/mm/c/a/er;->bPt:Lcom/tencent/mm/c/a/et;

    iget v0, v0, Lcom/tencent/mm/c/a/et;->bLJ:I

    if-eqz v0, :cond_1

    .line 2576
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->b(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/ui/tools/jsapi/ao;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->hpI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 2577
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->dFm:Lcom/tencent/mm/c/a/er;

    iget-object v0, v0, Lcom/tencent/mm/c/a/er;->bPt:Lcom/tencent/mm/c/a/et;

    iget-boolean v0, v0, Lcom/tencent/mm/c/a/et;->bPu:Z

    if-nez v0, :cond_2

    .line 2578
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->b(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/ui/tools/jsapi/ao;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->hpI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 2580
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2581
    const-string v1, "nationalCode"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->dFm:Lcom/tencent/mm/c/a/er;

    iget-object v2, v2, Lcom/tencent/mm/c/a/er;->bPt:Lcom/tencent/mm/c/a/et;

    iget-object v2, v2, Lcom/tencent/mm/c/a/et;->bPv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2582
    const-string v1, "userName"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->dFm:Lcom/tencent/mm/c/a/er;

    iget-object v2, v2, Lcom/tencent/mm/c/a/er;->bPt:Lcom/tencent/mm/c/a/et;

    iget-object v2, v2, Lcom/tencent/mm/c/a/et;->bPx:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2583
    const-string v1, "telNumber"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->dFm:Lcom/tencent/mm/c/a/er;

    iget-object v2, v2, Lcom/tencent/mm/c/a/er;->bPt:Lcom/tencent/mm/c/a/et;

    iget-object v2, v2, Lcom/tencent/mm/c/a/et;->bPw:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2584
    const-string v1, "addressPostalCode"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->dFm:Lcom/tencent/mm/c/a/er;

    iget-object v2, v2, Lcom/tencent/mm/c/a/er;->bPt:Lcom/tencent/mm/c/a/et;

    iget-object v2, v2, Lcom/tencent/mm/c/a/et;->bPy:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2585
    const-string v1, "proviceFirstStageName"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->dFm:Lcom/tencent/mm/c/a/er;

    iget-object v2, v2, Lcom/tencent/mm/c/a/er;->bPt:Lcom/tencent/mm/c/a/et;

    iget-object v2, v2, Lcom/tencent/mm/c/a/et;->bPz:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2586
    const-string v1, "addressCitySecondStageName"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->dFm:Lcom/tencent/mm/c/a/er;

    iget-object v2, v2, Lcom/tencent/mm/c/a/er;->bPt:Lcom/tencent/mm/c/a/et;

    iget-object v2, v2, Lcom/tencent/mm/c/a/et;->bPA:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2587
    const-string v1, "addressCountiesThirdStageName"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->dFm:Lcom/tencent/mm/c/a/er;

    iget-object v2, v2, Lcom/tencent/mm/c/a/er;->bPt:Lcom/tencent/mm/c/a/et;

    iget-object v2, v2, Lcom/tencent/mm/c/a/et;->bPB:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2588
    const-string v1, "addressDetailInfo"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->dFm:Lcom/tencent/mm/c/a/er;

    iget-object v2, v2, Lcom/tencent/mm/c/a/er;->bPt:Lcom/tencent/mm/c/a/et;

    iget-object v2, v2, Lcom/tencent/mm/c/a/et;->bPC:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2589
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->b(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/ui/tools/jsapi/ao;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/jsapi/af;->hpI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ok"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method
