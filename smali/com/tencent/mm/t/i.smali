.class final Lcom/tencent/mm/t/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field private csh:I

.field final synthetic csv:Lcom/tencent/mm/t/c;

.field final synthetic csw:Lcom/tencent/mm/n/a;


# direct methods
.method constructor <init>(Lcom/tencent/mm/t/c;Lcom/tencent/mm/n/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/tencent/mm/t/i;->csv:Lcom/tencent/mm/t/c;

    iput-object p2, p0, Lcom/tencent/mm/t/i;->csw:Lcom/tencent/mm/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/t/i;->csh:I

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 302
    iget-object v0, p0, Lcom/tencent/mm/t/i;->csw:Lcom/tencent/mm/n/a;

    if-nez v0, :cond_0

    .line 303
    const-string v0, "MicroMsg.GetContactService"

    const-string v1, "MMReqRespGetContact is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :goto_0
    return v2

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/t/i;->csw:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    .line 308
    iget-object v0, p0, Lcom/tencent/mm/t/i;->csw:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/il;

    .line 310
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/il;->fKI:Ljava/util/LinkedList;

    .line 311
    iget-object v4, v0, Lcom/tencent/mm/protocal/a/il;->fKJ:Ljava/util/LinkedList;

    .line 313
    iget v0, p0, Lcom/tencent/mm/t/i;->csh:I

    if-nez v0, :cond_2

    .line 314
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

    .line 315
    :goto_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 316
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ob;

    .line 317
    invoke-static {}, Lcom/tencent/mm/t/l;->Ax()Lcom/tencent/mm/t/b;

    move-result-object v8

    iget-object v9, v0, Lcom/tencent/mm/protocal/a/ob;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v9}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tencent/mm/t/b;->fN(Ljava/lang/String;)Z

    .line 319
    invoke-static {}, Lcom/tencent/mm/t/l;->Ax()Lcom/tencent/mm/t/b;

    move-result-object v8

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ob;->cqt:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/tencent/mm/t/b;->fN(Ljava/lang/String;)Z

    .line 315
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 321
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/tencent/mm/ap/i;->cb(J)I

    .line 323
    :cond_2
    iget v0, p0, Lcom/tencent/mm/t/i;->csh:I

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 324
    const-string v0, "MicroMsg.GetContactService"

    const-string v1, "resp proc fin respIndex:%d size:%d"

    new-array v4, v10, [Ljava/lang/Object;

    iget v5, p0, Lcom/tencent/mm/t/i;->csh:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v7

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 328
    :cond_3
    iget v0, p0, Lcom/tencent/mm/t/i;->csh:I

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ob;

    .line 329
    iget v1, p0, Lcom/tencent/mm/t/i;->csh:I

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 330
    iget-object v3, v0, Lcom/tencent/mm/protocal/a/ob;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v3}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v3

    .line 331
    iget-object v6, v0, Lcom/tencent/mm/protocal/a/ob;->cqt:Ljava/lang/String;

    .line 332
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 336
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

    .line 340
    packed-switch v1, :pswitch_data_0

    .line 358
    const-string v0, "MicroMsg.GetContactService"

    const-string v1, "onSceneEnd getFailed ErrName: %s %s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object v6, v4, v7

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    invoke-static {v3}, Lcom/tencent/mm/model/r;->cc(Ljava/lang/String;)Z

    move v4, v2

    .line 364
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/t/i;->csv:Lcom/tencent/mm/t/c;

    invoke-static {v0}, Lcom/tencent/mm/t/c;->g(Lcom/tencent/mm/t/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/model/au;

    .line 365
    invoke-static {v6}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v5, 0x0

    .line 367
    :goto_3
    if-nez v2, :cond_4

    if-eqz v5, :cond_5

    .line 368
    :cond_4
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/tencent/mm/t/j;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/t/j;-><init>(Lcom/tencent/mm/t/i;Lcom/tencent/mm/model/au;Ljava/lang/String;ZLcom/tencent/mm/model/au;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    :cond_5
    iget v0, p0, Lcom/tencent/mm/t/i;->csh:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/t/i;->csh:I

    move v2, v7

    .line 384
    goto/16 :goto_0

    .line 342
    :pswitch_0
    const-string v1, "MicroMsg.GetContactService"

    const-string v4, "onSceneEnd mod contact: %s %s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v6, v5, v7

    invoke-static {v1, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    invoke-static {v0}, Lcom/tencent/mm/z/n;->a(Lcom/tencent/mm/protocal/a/ob;)V

    .line 344
    invoke-static {}, Lcom/tencent/mm/t/l;->Ax()Lcom/tencent/mm/t/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/t/b;->fN(Ljava/lang/String;)Z

    .line 345
    invoke-static {}, Lcom/tencent/mm/t/l;->Ax()Lcom/tencent/mm/t/b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/mm/t/b;->fN(Ljava/lang/String;)Z

    move v4, v7

    .line 347
    goto :goto_2

    .line 350
    :pswitch_1
    const-string v0, "MicroMsg.GetContactService"

    const-string v1, "onSceneEnd getFailed ErrName: %s %s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object v6, v4, v7

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    invoke-static {}, Lcom/tencent/mm/t/l;->Ax()Lcom/tencent/mm/t/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/t/b;->fN(Ljava/lang/String;)Z

    .line 352
    invoke-static {}, Lcom/tencent/mm/t/l;->Ax()Lcom/tencent/mm/t/b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/mm/t/b;->fN(Ljava/lang/String;)Z

    .line 353
    invoke-static {v3}, Lcom/tencent/mm/model/r;->cc(Ljava/lang/String;)Z

    move v4, v2

    .line 355
    goto :goto_2

    .line 365
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/t/i;->csv:Lcom/tencent/mm/t/c;

    invoke-static {v0}, Lcom/tencent/mm/t/c;->g(Lcom/tencent/mm/t/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/au;

    move-object v5, v0

    goto :goto_3

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
