.class final Lcom/tencent/mm/t/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic cso:Lcom/tencent/mm/t/c;


# direct methods
.method constructor <init>(Lcom/tencent/mm/t/c;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tencent/mm/t/d;->cso:Lcom/tencent/mm/t/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/tencent/mm/t/d;->cso:Lcom/tencent/mm/t/c;

    invoke-static {v0}, Lcom/tencent/mm/t/c;->a(Lcom/tencent/mm/t/c;)Lcom/tencent/mm/protocal/a/il;

    move-result-object v0

    iget-object v3, v0, Lcom/tencent/mm/protocal/a/il;->fKI:Ljava/util/LinkedList;

    .line 91
    iget-object v0, p0, Lcom/tencent/mm/t/d;->cso:Lcom/tencent/mm/t/c;

    invoke-static {v0}, Lcom/tencent/mm/t/c;->a(Lcom/tencent/mm/t/c;)Lcom/tencent/mm/protocal/a/il;

    move-result-object v0

    iget-object v4, v0, Lcom/tencent/mm/protocal/a/il;->fKJ:Ljava/util/LinkedList;

    .line 92
    iget-object v0, p0, Lcom/tencent/mm/t/d;->cso:Lcom/tencent/mm/t/c;

    invoke-static {v0}, Lcom/tencent/mm/t/c;->b(Lcom/tencent/mm/t/c;)I

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/tencent/mm/ap/i;->ca(J)J

    move-result-wide v5

    move v1, v2

    .line 94
    :goto_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 95
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ob;

    .line 96
    invoke-static {}, Lcom/tencent/mm/t/l;->Ax()Lcom/tencent/mm/t/b;

    move-result-object v8

    iget-object v9, v0, Lcom/tencent/mm/protocal/a/ob;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v9}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tencent/mm/t/b;->fN(Ljava/lang/String;)Z

    .line 97
    invoke-static {}, Lcom/tencent/mm/t/l;->Ax()Lcom/tencent/mm/t/b;

    move-result-object v8

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ob;->cqt:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/tencent/mm/t/b;->fN(Ljava/lang/String;)Z

    .line 94
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/tencent/mm/ap/i;->cb(J)I

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/t/d;->cso:Lcom/tencent/mm/t/c;

    invoke-static {v0}, Lcom/tencent/mm/t/c;->b(Lcom/tencent/mm/t/c;)I

    move-result v0

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 102
    const-string v0, "MicroMsg.GetContactService"

    const-string v1, "resp proc fin respIndex:%d size:%d"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/t/d;->cso:Lcom/tencent/mm/t/c;

    invoke-static {v5}, Lcom/tencent/mm/t/c;->b(Lcom/tencent/mm/t/c;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v7

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/tencent/mm/t/d;->cso:Lcom/tencent/mm/t/c;

    invoke-static {v0}, Lcom/tencent/mm/t/c;->c(Lcom/tencent/mm/t/c;)Lcom/tencent/mm/protocal/a/il;

    .line 104
    iget-object v0, p0, Lcom/tencent/mm/t/d;->cso:Lcom/tencent/mm/t/c;

    invoke-static {v0}, Lcom/tencent/mm/t/c;->d(Lcom/tencent/mm/t/c;)I

    .line 105
    iget-object v0, p0, Lcom/tencent/mm/t/d;->cso:Lcom/tencent/mm/t/c;

    invoke-static {v0}, Lcom/tencent/mm/t/c;->e(Lcom/tencent/mm/t/c;)Z

    .line 106
    iget-object v0, p0, Lcom/tencent/mm/t/d;->cso:Lcom/tencent/mm/t/c;

    invoke-static {v0}, Lcom/tencent/mm/t/c;->f(Lcom/tencent/mm/t/c;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 175
    :goto_1
    return v2

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/t/d;->cso:Lcom/tencent/mm/t/c;

    invoke-static {v0}, Lcom/tencent/mm/t/c;->b(Lcom/tencent/mm/t/c;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ob;

    .line 111
    iget-object v1, p0, Lcom/tencent/mm/t/d;->cso:Lcom/tencent/mm/t/c;

    invoke-static {v1}, Lcom/tencent/mm/t/c;->b(Lcom/tencent/mm/t/c;)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 112
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/ob;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v3}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v3

    .line 113
    iget-object v6, v0, Lcom/tencent/mm/protocal/a/ob;->cqt:Ljava/lang/String;

    .line 114
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 118
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->sT()Lcom/tencent/mm/as/a;

    move-result-object v5

    new-instance v8, Lcom/tencent/mm/as/d;

    const/16 v9, 0x7d1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v9, v4}, Lcom/tencent/mm/as/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/tencent/mm/as/a;->a(Lcom/tencent/mm/as/d;)I

    .line 131
    packed-switch v1, :pswitch_data_0

    .line 149
    const-string v0, "MicroMsg.GetContactService"

    const-string v1, "onSceneEnd getFailed ErrName: %s %s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object v6, v4, v7

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-static {v3}, Lcom/tencent/mm/model/r;->cc(Ljava/lang/String;)Z

    move v4, v2

    .line 155
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/t/d;->cso:Lcom/tencent/mm/t/c;

    invoke-static {v0}, Lcom/tencent/mm/t/c;->g(Lcom/tencent/mm/t/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/model/au;

    .line 156
    invoke-static {v6}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v5, 0x0

    .line 158
    :goto_3
    if-nez v2, :cond_3

    if-eqz v5, :cond_4

    .line 159
    :cond_3
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/tencent/mm/t/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/t/e;-><init>(Lcom/tencent/mm/t/d;Lcom/tencent/mm/model/au;Ljava/lang/String;ZLcom/tencent/mm/model/au;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/t/d;->cso:Lcom/tencent/mm/t/c;

    invoke-static {v0}, Lcom/tencent/mm/t/c;->h(Lcom/tencent/mm/t/c;)I

    move v2, v7

    .line 175
    goto/16 :goto_1

    .line 133
    :pswitch_0
    const-string v1, "MicroMsg.GetContactService"

    const-string v4, "onSceneEnd mod contact: %s %s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v6, v5, v7

    invoke-static {v1, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-static {v0}, Lcom/tencent/mm/z/n;->a(Lcom/tencent/mm/protocal/a/ob;)V

    .line 135
    invoke-static {}, Lcom/tencent/mm/t/l;->Ax()Lcom/tencent/mm/t/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/t/b;->fN(Ljava/lang/String;)Z

    .line 136
    invoke-static {}, Lcom/tencent/mm/t/l;->Ax()Lcom/tencent/mm/t/b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/mm/t/b;->fN(Ljava/lang/String;)Z

    move v4, v7

    .line 138
    goto :goto_2

    .line 141
    :pswitch_1
    const-string v0, "MicroMsg.GetContactService"

    const-string v1, "onSceneEnd getFailed ErrName: %s %s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object v6, v4, v7

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-static {}, Lcom/tencent/mm/t/l;->Ax()Lcom/tencent/mm/t/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/t/b;->fN(Ljava/lang/String;)Z

    .line 143
    invoke-static {}, Lcom/tencent/mm/t/l;->Ax()Lcom/tencent/mm/t/b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/mm/t/b;->fN(Ljava/lang/String;)Z

    .line 144
    invoke-static {v3}, Lcom/tencent/mm/model/r;->cc(Ljava/lang/String;)Z

    move v4, v2

    .line 146
    goto :goto_2

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/t/d;->cso:Lcom/tencent/mm/t/c;

    invoke-static {v0}, Lcom/tencent/mm/t/c;->g(Lcom/tencent/mm/t/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/au;

    move-object v5, v0

    goto :goto_3

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
