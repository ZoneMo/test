.class public final Lcom/tencent/mm/ui/tools/jsapi/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/model/app/x;


# instance fields
.field private context:Landroid/content/Context;

.field private hoQ:Ljava/util/HashMap;

.field private hoR:Ljava/util/HashMap;

.field private hoS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoQ:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoR:Ljava/util/HashMap;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoS:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/tencent/mm/protocal/a/bw;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/tools/jsapi/h;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    if-nez p1, :cond_1

    .line 166
    sget-object v1, Lcom/tencent/mm/ui/tools/jsapi/i;->hpa:Lcom/tencent/mm/ui/tools/jsapi/i;

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/h;->a(Lcom/tencent/mm/ui/tools/jsapi/i;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 170
    :cond_2
    const-string v1, "MicroMsg.JSOAuthHelper"

    const-string v2, "JSOAUTH showDlgForJSOAuth wrong args"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v1, Lcom/tencent/mm/ui/tools/jsapi/i;->hpa:Lcom/tencent/mm/ui/tools/jsapi/i;

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/h;->a(Lcom/tencent/mm/ui/tools/jsapi/i;)V

    goto :goto_0

    .line 174
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->context:Landroid/content/Context;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->context:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_5

    .line 175
    :cond_4
    const-string v1, "MicroMsg.JSOAuthHelper"

    const-string v2, "JSOAUTH context not activity"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v1, Lcom/tencent/mm/ui/tools/jsapi/i;->hpa:Lcom/tencent/mm/ui/tools/jsapi/i;

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/h;->a(Lcom/tencent/mm/ui/tools/jsapi/i;)V

    goto :goto_0

    .line 180
    :cond_5
    iget-object v8, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->context:Landroid/content/Context;

    const/4 v10, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p3 .. p3}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/tencent/mm/protocal/a/bw;->fCC:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->context:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/n;->bpr:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->context:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/n;->bpq:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lcom/tencent/mm/ui/tools/jsapi/f;

    move-object v2, p0

    move-object/from16 v3, p2

    move-object v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mm/ui/tools/jsapi/f;-><init>(Lcom/tencent/mm/ui/tools/jsapi/e;Lcom/tencent/mm/protocal/a/bw;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/tools/jsapi/h;)V

    new-instance v9, Lcom/tencent/mm/ui/tools/jsapi/g;

    move-object/from16 v0, p5

    invoke-direct {v9, p0, v0}, Lcom/tencent/mm/ui/tools/jsapi/g;-><init>(Lcom/tencent/mm/ui/tools/jsapi/e;Lcom/tencent/mm/ui/tools/jsapi/h;)V

    move-object v2, v8

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v8, v1

    invoke-static/range {v2 .. v9}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v1

    .line 204
    if-nez v1, :cond_0

    .line 205
    sget-object v1, Lcom/tencent/mm/ui/tools/jsapi/i;->hpa:Lcom/tencent/mm/ui/tools/jsapi/i;

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/h;->a(Lcom/tencent/mm/ui/tools/jsapi/i;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(IILcom/tencent/mm/pluginsdk/model/app/z;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    const-string v0, "MicroMsg.JSOAuthHelper"

    const-string v1, "JSOAUTH onSceneEnd: type[%d], errType[%s], errCode[%s], currentApi[%s]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/tencent/mm/pluginsdk/model/app/z;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoS:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p3}, Lcom/tencent/mm/pluginsdk/model/app/z;->getType()I

    move-result v0

    .line 215
    packed-switch v0, :pswitch_data_0

    .line 226
    const-string v1, "MicroMsg.JSOAuthHelper"

    const-string v2, "onSceneEnd, unknown type = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    :goto_0
    return-void

    .line 218
    :pswitch_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->PE()Lcom/tencent/mm/pluginsdk/model/app/c;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/pluginsdk/model/app/c;->b(ILcom/tencent/mm/pluginsdk/model/app/x;)V

    check-cast p3, Lcom/tencent/mm/plugin/webview/b/c;

    invoke-virtual {p3}, Lcom/tencent/mm/plugin/webview/b/c;->ge()Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lcom/tencent/mm/ui/tools/jsapi/h;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/tencent/mm/ui/tools/jsapi/h;

    move-object v5, v0

    :goto_1
    if-nez v5, :cond_0

    const-string v2, "MicroMsg.JSOAuthHelper"

    const-string v3, "dealJSOAuth, cb is null, userdata class = %s"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-nez v1, :cond_3

    const-string v0, "null"

    :goto_2
    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_4

    :cond_1
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/i;->hpa:Lcom/tencent/mm/ui/tools/jsapi/i;

    invoke-interface {v5, v0}, Lcom/tencent/mm/ui/tools/jsapi/h;->a(Lcom/tencent/mm/ui/tools/jsapi/i;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Lcom/tencent/mm/plugin/webview/b/c;->Cm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/tencent/mm/plugin/webview/b/c;->aoP()Lcom/tencent/mm/protocal/a/mb;

    move-result-object v3

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v3, :cond_5

    iget-object v0, v3, Lcom/tencent/mm/protocal/a/mb;->fJZ:Ljava/util/LinkedList;

    if-nez v0, :cond_6

    :cond_5
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/i;->hpa:Lcom/tencent/mm/ui/tools/jsapi/i;

    invoke-interface {v5, v0}, Lcom/tencent/mm/ui/tools/jsapi/h;->a(Lcom/tencent/mm/ui/tools/jsapi/i;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoQ:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoQ:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoQ:Ljava/util/HashMap;

    iget-object v1, v3, Lcom/tencent/mm/protocal/a/mb;->fJZ:Ljava/util/LinkedList;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoR:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoR:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoR:Ljava/util/HashMap;

    iget-object v1, v3, Lcom/tencent/mm/protocal/a/mb;->fNh:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoS:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/i;->hpa:Lcom/tencent/mm/ui/tools/jsapi/i;

    invoke-interface {v5, v0}, Lcom/tencent/mm/ui/tools/jsapi/h;->a(Lcom/tencent/mm/ui/tools/jsapi/i;)V

    goto/16 :goto_0

    :cond_9
    :try_start_0
    iget-object v0, v3, Lcom/tencent/mm/protocal/a/mb;->fJZ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/a/bw;

    if-nez v2, :cond_b

    const-string v0, "MicroMsg.JSOAuthHelper"

    const-string v2, "dealJSOAuth, scopeInfo is null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.JSOAuthHelper"

    const-string v2, "JSOAUTH exception %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/i;->hpa:Lcom/tencent/mm/ui/tools/jsapi/i;

    invoke-interface {v5, v0}, Lcom/tencent/mm/ui/tools/jsapi/h;->a(Lcom/tencent/mm/ui/tools/jsapi/i;)V

    goto/16 :goto_0

    :cond_b
    :try_start_1
    iget-object v0, v2, Lcom/tencent/mm/protocal/a/bw;->fCE:Ljava/util/LinkedList;

    if-nez v0, :cond_c

    const-string v0, "MicroMsg.JSOAuthHelper"

    const-string v2, "dealJSOAuth, ApiList is null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const-string v0, "MicroMsg.JSOAuthHelper"

    const-string v6, "JSOAUTH scopeInfo scope:%s, scopeStatus:%d, scopeDesc:%s, apiList size:%d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v2, Lcom/tencent/mm/protocal/a/bw;->fCA:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, v2, Lcom/tencent/mm/protocal/a/bw;->fCB:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, v2, Lcom/tencent/mm/protocal/a/bw;->fCC:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, v2, Lcom/tencent/mm/protocal/a/bw;->fCE:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/tencent/mm/protocal/a/bw;->fCE:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/bu;

    const-string v7, "MicroMsg.JSOAuthHelper"

    const-string v8, "JSOAUTH apiName %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/tencent/mm/protocal/a/bu;->fCk:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoS:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/bu;->fCk:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, v2, Lcom/tencent/mm/protocal/a/bw;->fCB:I

    packed-switch v0, :pswitch_data_1

    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/i;->hpa:Lcom/tencent/mm/ui/tools/jsapi/i;

    invoke-interface {v5, v0}, Lcom/tencent/mm/ui/tools/jsapi/h;->a(Lcom/tencent/mm/ui/tools/jsapi/i;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/i;->hoZ:Lcom/tencent/mm/ui/tools/jsapi/i;

    invoke-interface {v5, v0}, Lcom/tencent/mm/ui/tools/jsapi/h;->a(Lcom/tencent/mm/ui/tools/jsapi/i;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p3, Lcom/tencent/mm/plugin/webview/b/c;->etC:Ljava/lang/String;

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/mb;->fNh:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/jsapi/e;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/a/bw;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/tools/jsapi/h;)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/i;->hpa:Lcom/tencent/mm/ui/tools/jsapi/i;

    invoke-interface {v5, v0}, Lcom/tencent/mm/ui/tools/jsapi/h;->a(Lcom/tencent/mm/ui/tools/jsapi/i;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "MicroMsg.JSOAuthHelper"

    const-string v1, "JSOAUTH onSceneEnd, scopelist is empty %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v3, v3, Lcom/tencent/mm/protocal/a/mb;->fJZ:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/i;->hpa:Lcom/tencent/mm/ui/tools/jsapi/i;

    invoke-interface {v5, v0}, Lcom/tencent/mm/ui/tools/jsapi/h;->a(Lcom/tencent/mm/ui/tools/jsapi/i;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 222
    :pswitch_4
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->PE()Lcom/tencent/mm/pluginsdk/model/app/c;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/pluginsdk/model/app/c;->b(ILcom/tencent/mm/pluginsdk/model/app/x;)V

    check-cast p3, Lcom/tencent/mm/plugin/webview/b/d;

    invoke-virtual {p3}, Lcom/tencent/mm/plugin/webview/b/d;->aoQ()Lcom/tencent/mm/protocal/a/tk;

    move-result-object v1

    invoke-virtual {p3}, Lcom/tencent/mm/plugin/webview/b/d;->aoR()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_f

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/tk;->fJZ:Ljava/util/LinkedList;

    if-eqz v0, :cond_f

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const-string v0, "MicroMsg.JSOAuthHelper"

    const-string v1, "wrong args"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoQ:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_11

    const-string v0, "MicroMsg.JSOAuthHelper"

    const-string v1, "currentUrl not exist in scopeMap"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoQ:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoQ:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/tk;->fJZ:Ljava/util/LinkedList;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MicroMsg.JSOAuthHelper"

    const-string v1, "JSOAUTH SetOAuthScopeProxy ok"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 218
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/util/ArrayList;Lcom/tencent/mm/ui/tools/jsapi/h;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 75
    :cond_0
    const-string v0, "MicroMsg.JSOAuthHelper"

    const-string v1, "handleJSOAuth fail, invalid argument, currentUrl = %s, jsApi = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/i;->hpa:Lcom/tencent/mm/ui/tools/jsapi/i;

    invoke-interface {p5, v0}, Lcom/tencent/mm/ui/tools/jsapi/h;->a(Lcom/tencent/mm/ui/tools/jsapi/i;)V

    .line 162
    :goto_0
    return-void

    .line 80
    :cond_1
    const/4 v4, 0x0

    .line 81
    const/4 v1, 0x0

    .line 82
    const/4 v0, -0x1

    .line 83
    if-eqz p4, :cond_d

    .line 84
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 86
    new-instance v3, Lcom/tencent/mm/protocal/a/bw;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/a/bw;-><init>()V

    .line 88
    :try_start_0
    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/a/bw;->aJ([B)Lcom/tencent/mm/protocal/a/bw;

    .line 89
    iget-object v0, v3, Lcom/tencent/mm/protocal/a/bw;->fCE:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/bu;

    .line 90
    iget-object v7, v0, Lcom/tencent/mm/protocal/a/bu;->fCk:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/bu;->fCk:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iget v1, v3, Lcom/tencent/mm/protocal/a/bw;->fCB:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :try_start_1
    const-string v0, "MicroMsg.JSOAuthHelper"

    const-string v2, "JSOAUTH found scope in scopeList"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    move-object v1, v3

    .line 97
    :goto_2
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    move v2, v0

    move-object v3, v1

    .line 104
    :goto_3
    const/4 v0, -0x1

    if-ne v2, v0, :cond_a

    .line 108
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoQ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 109
    if-eqz v0, :cond_a

    .line 110
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoR:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v3

    move v3, v2

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/bw;

    .line 112
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/bw;->fCE:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/a/bu;

    .line 113
    iget-object v7, v2, Lcom/tencent/mm/protocal/a/bu;->fCk:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/bu;->fCk:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    iget v3, v0, Lcom/tencent/mm/protocal/a/bw;->fCB:I

    .line 116
    const-string v2, "MicroMsg.JSOAuthHelper"

    const-string v4, "JSOAUTH found scope in scopeMap"

    invoke-static {v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    move v0, v3

    .line 120
    :goto_5
    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    .line 121
    :goto_6
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 127
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->context:Landroid/content/Context;

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_7
    move-object v3, v1

    .line 129
    :goto_8
    const-string v1, "MicroMsg.JSOAuthHelper"

    const-string v4, "JSOAUTH jsApi = %s, scopeStatus = %s currentUrl = %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    invoke-static {v1, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v1, p3, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v4, "appId"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    packed-switch v0, :pswitch_data_0

    .line 149
    iget-object v0, p3, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "scope"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 150
    iget-object v0, p3, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "addrSign"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 151
    iget-object v0, p3, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "signType"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 152
    iget-object v0, p3, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "timeStamp"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 153
    iget-object v0, p3, Lcom/tencent/mm/ui/tools/jsapi/ao;->dOk:Ljava/util/Map;

    const-string v2, "nonceStr"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoS:Ljava/lang/String;

    .line 156
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->PE()Lcom/tencent/mm/pluginsdk/model/app/c;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p0}, Lcom/tencent/mm/pluginsdk/model/app/c;->a(ILcom/tencent/mm/pluginsdk/model/app/x;)V

    .line 157
    new-instance v0, Lcom/tencent/mm/plugin/webview/b/c;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/plugin/webview/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p5}, Lcom/tencent/mm/plugin/webview/b/c;->H(Ljava/lang/Object;)V

    .line 159
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->PE()Lcom/tencent/mm/pluginsdk/model/app/c;

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/model/app/c;->a(ILcom/tencent/mm/pluginsdk/model/app/z;)V

    goto/16 :goto_0

    :cond_4
    move-object v2, v1

    move v1, v0

    .line 103
    goto/16 :goto_1

    .line 101
    :catch_0
    move-exception v0

    move v0, v1

    move-object v1, v3

    :goto_9
    move-object v2, v1

    move v1, v0

    goto/16 :goto_1

    .line 127
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->bpp:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    .line 136
    :pswitch_0
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/i;->hoZ:Lcom/tencent/mm/ui/tools/jsapi/i;

    invoke-interface {p5, v0}, Lcom/tencent/mm/ui/tools/jsapi/h;->a(Lcom/tencent/mm/ui/tools/jsapi/i;)V

    goto/16 :goto_0

    :pswitch_1
    move-object v0, p0

    move-object v4, p1

    move-object v5, p5

    .line 140
    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/jsapi/e;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/a/bw;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/tools/jsapi/h;)V

    goto/16 :goto_0

    .line 144
    :pswitch_2
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/i;->hpa:Lcom/tencent/mm/ui/tools/jsapi/i;

    invoke-interface {p5, v0}, Lcom/tencent/mm/ui/tools/jsapi/h;->a(Lcom/tencent/mm/ui/tools/jsapi/i;)V

    goto/16 :goto_0

    .line 101
    :catch_1
    move-exception v0

    move v0, v1

    move-object v1, v2

    goto :goto_9

    :cond_6
    move-object v3, v1

    goto/16 :goto_8

    :cond_7
    move v3, v0

    move-object v4, v2

    goto/16 :goto_4

    :cond_8
    move v0, v3

    move-object v2, v4

    goto/16 :goto_5

    :cond_9
    move v0, v3

    move-object v2, v4

    goto/16 :goto_6

    :cond_a
    move v0, v2

    move-object v1, v4

    move-object v2, v3

    goto/16 :goto_6

    :cond_b
    move v0, v1

    move-object v1, v2

    goto/16 :goto_2

    :cond_c
    move-object v3, v2

    move v2, v1

    goto/16 :goto_3

    :cond_d
    move v2, v0

    move-object v3, v1

    goto/16 :goto_3

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final detach()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "MicroMsg.JSOAuthHelper"

    const-string v1, "detach"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoQ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 68
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->hoR:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->context:Landroid/content/Context;

    .line 70
    return-void
.end method

.method final setContext(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/e;->context:Landroid/content/Context;

    .line 63
    return-void
.end method
