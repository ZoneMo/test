.class public final Lcom/tencent/mm/model/ds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/j;


# instance fields
.field private cjZ:Ljava/util/Map;

.field private cka:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/ds;->cjZ:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/ds;->cka:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/tencent/mm/protocal/a/l;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 172
    const-string v0, "MicroMsg.SysCmdMsgExtension"

    const-string v1, "key is %s, content is %s, isNewXml : %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    iget-object v3, p2, Lcom/tencent/mm/protocal/a/l;->fzv:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v3}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/model/ds;->cka:Ljava/util/Map;

    .line 174
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 175
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    :cond_0
    const-string v0, "MicroMsg.SysCmdMsgExtension"

    const-string v1, "listener list is empty, return now"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_1
    return-void

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/model/ds;->cjZ:Ljava/util/Map;

    goto :goto_0

    .line 180
    :cond_3
    const-string v1, "MicroMsg.SysCmdMsgExtension"

    const-string v2, "listener list size is %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/dt;

    .line 182
    invoke-interface {v0, p2}, Lcom/tencent/mm/model/dt;->b(Lcom/tencent/mm/protocal/a/l;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/protocal/a/l;)Lcom/tencent/mm/n/k;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 77
    iget v0, p1, Lcom/tencent/mm/protocal/a/l;->fzu:I

    packed-switch v0, :pswitch_data_0

    .line 166
    const-string v0, "MicroMsg.SysCmdMsgExtension"

    const-string v1, "cmdAM msgType is %d, ignore, return now"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p1, Lcom/tencent/mm/protocal/a/l;->fzu:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 167
    :goto_0
    return-object v0

    .line 79
    :pswitch_0
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/l;->fzs:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p1, Lcom/tencent/mm/protocal/a/l;->fzv:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    .line 81
    invoke-direct {p0, v0, p1, v8}, Lcom/tencent/mm/model/ds;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/a/l;Z)V

    .line 82
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x289b

    iget v3, p1, Lcom/tencent/mm/protocal/a/l;->fzo:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    move-object v0, v2

    .line 83
    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/l;->fzv:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v5

    .line 88
    const-string v0, "~SEMI_XML~"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    invoke-static {v5}, Lcom/tencent/mm/sdk/platformtools/by;->sM(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    const-string v0, "MicroMsg.SysCmdMsgExtension"

    const-string v1, "SemiXml values is null, msgContent %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v5, v3, v8

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 94
    goto :goto_0

    .line 96
    :cond_0
    const-string v1, "brand_service"

    move-object v3, v0

    .line 105
    :goto_1
    const-string v0, "MicroMsg.SysCmdMsgExtension"

    const-string v4, "recieve a syscmd_newxml %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v5, v6, v8

    invoke-static {v0, v4, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    if-eqz v1, :cond_1

    .line 108
    invoke-direct {p0, v1, p1, v7}, Lcom/tencent/mm/model/ds;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/a/l;Z)V

    .line 112
    :cond_1
    if-eqz v1, :cond_8

    const-string v0, "addcontact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 113
    const-string v0, ".sysmsg.addcontact.content"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->hQ(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/l;->fzv:Lcom/tencent/mm/protocal/a/rw;

    .line 116
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/n/l;->T(Ljava/lang/Object;)Lcom/tencent/mm/n/j;

    move-result-object v0

    .line 117
    if-nez v0, :cond_7

    move-object v4, v2

    .line 124
    :goto_2
    if-eqz v1, :cond_2

    const-string v0, "dynacfg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-static {}, Lcom/tencent/mm/e/d;->qA()Lcom/tencent/mm/e/c;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Lcom/tencent/mm/e/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 126
    invoke-static {}, Lcom/tencent/mm/e/d;->qB()Lcom/tencent/mm/e/a;

    invoke-static {}, Lcom/tencent/mm/e/a;->qo()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 127
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v2, 0x2a7f

    const-string v5, ""

    invoke-virtual {v0, v2, v5}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 131
    :cond_2
    if-eqz v1, :cond_4

    const-string v0, "banner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    const-string v0, ".sysmsg.mainframebanner.$type"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    const-string v1, ".sysmsg.mainframebanner.showtype"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 135
    const-string v2, ".sysmsg.mainframebanner.data"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 138
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/br;->uP()Lcom/tencent/mm/model/br;

    move-result-object v5

    new-instance v6, Lcom/tencent/mm/platformtools/ac;

    invoke-direct {v6}, Lcom/tencent/mm/platformtools/ac;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/tencent/mm/platformtools/ac;->eP(I)Lcom/tencent/mm/platformtools/ac;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/platformtools/ac;->eO(I)Lcom/tencent/mm/platformtools/ac;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/platformtools/ac;->hO(Ljava/lang/String;)Lcom/tencent/mm/platformtools/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/ac;->FA()Lcom/tencent/mm/platformtools/ab;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/model/br;->a(Lcom/tencent/mm/platformtools/ab;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_3
    :goto_3
    const-string v0, ".sysmsg.friendrecommand.fromuser"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    const-string v1, ".sysmsg.friendrecommand.touser"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 153
    :try_start_1
    invoke-static {}, Lcom/tencent/mm/model/s;->te()Lcom/tencent/mm/model/s;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/model/s;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_4
    move-object v0, v4

    .line 159
    goto/16 :goto_0

    .line 98
    :cond_5
    const-string v0, "sysmsg"

    invoke-static {v5, v0}, Lcom/tencent/mm/sdk/platformtools/u;->aL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 99
    if-nez v1, :cond_6

    .line 100
    const-string v0, "MicroMsg.SysCmdMsgExtension"

    const-string v1, "KVConfig values is null, msgContent %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v5, v3, v8

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 101
    goto/16 :goto_0

    .line 103
    :cond_6
    const-string v0, ".sysmsg.$type"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_1

    .line 120
    :cond_7
    invoke-interface {v0, p1}, Lcom/tencent/mm/n/j;->a(Lcom/tencent/mm/protocal/a/l;)Lcom/tencent/mm/n/k;

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string v1, "MicroMsg.SysCmdMsgExtension"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 154
    :catch_1
    move-exception v0

    .line 155
    const-string v1, "MicroMsg.SysCmdMsgExtension"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object v4, v2

    goto/16 :goto_2

    .line 77
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/mm/model/dt;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/mm/model/ds;->a(Ljava/lang/String;Lcom/tencent/mm/model/dt;Z)V

    .line 53
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/mm/model/dt;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/model/ds;->cka:Ljava/util/Map;

    move-object v1, v0

    .line 41
    :goto_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 42
    if-nez v0, :cond_2

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 44
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/model/ds;->cjZ:Ljava/util/Map;

    move-object v1, v0

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Lcom/tencent/mm/model/dt;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/model/ds;->cka:Ljava/util/Map;

    .line 60
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final c(Lcom/tencent/mm/storage/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    return-void
.end method

.method public final c(Ljava/lang/String;Lcom/tencent/mm/model/dt;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/mm/model/ds;->a(Ljava/lang/String;Lcom/tencent/mm/model/dt;Z)V

    .line 68
    return-void
.end method
