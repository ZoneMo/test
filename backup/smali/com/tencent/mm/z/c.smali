.class final Lcom/tencent/mm/z/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field private cuE:Z

.field final synthetic cuF:Lcom/tencent/mm/z/b;


# direct methods
.method constructor <init>(Lcom/tencent/mm/z/b;)V
    .locals 1
    .parameter

    .prologue
    .line 855
    iput-object p1, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/z/c;->cuE:Z

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 15

    .prologue
    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 861
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v8

    .line 862
    iget-boolean v0, p0, Lcom/tencent/mm/z/c;->cuE:Z

    if-nez v0, :cond_0

    .line 863
    iput-boolean v5, p0, Lcom/tencent/mm/z/c;->cuE:Z

    .line 864
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ap;->aCP()V

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-static {v0}, Lcom/tencent/mm/z/b;->a(Lcom/tencent/mm/z/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-static {v0}, Lcom/tencent/mm/z/b;->b(Lcom/tencent/mm/z/b;)Lcom/tencent/mm/z/i;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    iget-object v1, v1, Lcom/tencent/mm/z/b;->cuy:Lcom/tencent/mm/protocal/ap;

    invoke-virtual {v0}, Lcom/tencent/mm/z/i;->Bw()V

    .line 868
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ap;->aCQ()V

    .line 918
    :goto_0
    return v6

    .line 873
    :cond_1
    new-instance v10, Lcom/tencent/mm/compatible/g/k;

    invoke-direct {v10}, Lcom/tencent/mm/compatible/g/k;-><init>()V

    .line 876
    iget-object v0, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    iget-object v0, v0, Lcom/tencent/mm/z/b;->cuy:Lcom/tencent/mm/protocal/ap;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget v0, v0, Lcom/tencent/mm/protocal/a/oz;->fRg:I

    if-le v0, v5, :cond_a

    .line 877
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ap/i;->ca(J)J

    move-result-wide v0

    move-wide v1, v0

    :goto_1
    move v7, v6

    .line 879
    :goto_2
    const/16 v0, 0x14

    if-ge v7, v0, :cond_9

    .line 880
    iget-object v0, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    iget-object v0, v0, Lcom/tencent/mm/z/b;->cuy:Lcom/tencent/mm/protocal/ap;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/oz;->fRh:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-static {v0}, Lcom/tencent/mm/z/b;->c(Lcom/tencent/mm/z/b;)I

    move-result v0

    iget-object v11, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    iget-object v11, v11, Lcom/tencent/mm/z/b;->cuy:Lcom/tencent/mm/protocal/ap;

    iget-object v11, v11, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget-object v11, v11, Lcom/tencent/mm/protocal/a/oz;->fRh:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-ge v0, v11, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-static {v0}, Lcom/tencent/mm/z/b;->d(Lcom/tencent/mm/z/b;)Lcom/tencent/mm/z/n;

    move-result-object v11

    iget-object v0, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    iget-object v0, v0, Lcom/tencent/mm/z/b;->cuy:Lcom/tencent/mm/protocal/ap;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ap;->fyr:Lcom/tencent/mm/protocal/a/oz;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/oz;->fRh:Ljava/util/LinkedList;

    iget-object v12, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-static {v12}, Lcom/tencent/mm/z/b;->c(Lcom/tencent/mm/z/b;)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/cx;

    invoke-virtual {v11, v0, v5}, Lcom/tencent/mm/z/n;->a(Lcom/tencent/mm/protocal/a/cx;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 881
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-static {v0}, Lcom/tencent/mm/z/b;->b(Lcom/tencent/mm/z/b;)Lcom/tencent/mm/z/i;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    iget-object v5, v5, Lcom/tencent/mm/z/b;->cuy:Lcom/tencent/mm/protocal/ap;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/z/i;->c(Lcom/tencent/mm/protocal/ap;)V

    .line 882
    iget-object v0, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-static {v0}, Lcom/tencent/mm/z/b;->d(Lcom/tencent/mm/z/b;)Lcom/tencent/mm/z/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/z/n;->Bx()V

    .line 885
    iget-object v0, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-static {v0}, Lcom/tencent/mm/z/b;->e(Lcom/tencent/mm/z/b;)Ljava/util/Queue;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    iget-object v5, v5, Lcom/tencent/mm/z/b;->cuy:Lcom/tencent/mm/protocal/ap;

    invoke-interface {v0, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 886
    iget-object v0, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-static {v0}, Lcom/tencent/mm/z/b;->f(Lcom/tencent/mm/z/b;)V

    .line 889
    iget-object v0, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-static {v0}, Lcom/tencent/mm/z/b;->e(Lcom/tencent/mm/z/b;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 890
    iget-object v5, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    iget-object v0, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-static {v0}, Lcom/tencent/mm/z/b;->e(Lcom/tencent/mm/z/b;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ap;

    invoke-virtual {v5, v0}, Lcom/tencent/mm/z/b;->b(Lcom/tencent/mm/protocal/ap;)Z

    .line 896
    :goto_3
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ap;->aCQ()V

    move v0, v6

    .line 910
    :goto_4
    iget-object v5, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-static {v5}, Lcom/tencent/mm/z/b;->g(Lcom/tencent/mm/z/b;)Lcom/tencent/mm/z/a;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 911
    iget-object v5, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-static {v5}, Lcom/tencent/mm/z/b;->g(Lcom/tencent/mm/z/b;)Lcom/tencent/mm/z/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/z/a;->Bm()V

    .line 913
    :cond_3
    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 914
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/tencent/mm/ap/i;->cb(J)I

    .line 916
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/z/b;->a(Lcom/tencent/mm/z/b;J)J

    move v6, v0

    .line 918
    goto/16 :goto_0

    .line 893
    :cond_5
    const-string v0, "MicroMsg.InitRespHandler"

    const-string v5, "init resp list process done"

    invoke-static {v0, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 900
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-static {v0}, Lcom/tencent/mm/z/b;->g(Lcom/tencent/mm/z/b;)Lcom/tencent/mm/z/a;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 901
    iget-object v0, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-static {v0}, Lcom/tencent/mm/z/b;->g(Lcom/tencent/mm/z/b;)Lcom/tencent/mm/z/a;

    move-result-object v0

    iget v11, v0, Lcom/tencent/mm/z/a;->cur:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Lcom/tencent/mm/z/a;->cur:I

    .line 903
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/z/c;->cuF:Lcom/tencent/mm/z/b;

    invoke-static {v0}, Lcom/tencent/mm/z/b;->h(Lcom/tencent/mm/z/b;)I

    .line 905
    invoke-virtual {v10}, Lcom/tencent/mm/compatible/g/k;->qh()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    cmp-long v0, v11, v13

    if-lez v0, :cond_8

    .line 906
    const-string v0, "MicroMsg.InitRespHandler"

    const-string v11, "dksynctime(>1000) : %d cnt:%d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/tencent/mm/compatible/g/k;->qh()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v12, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v12, v5

    invoke-static {v0, v11, v12}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v5

    .line 907
    goto :goto_4

    .line 879
    :cond_8
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_2

    :cond_9
    move v0, v5

    goto/16 :goto_4

    :cond_a
    move-wide v1, v3

    goto/16 :goto_1
.end method
