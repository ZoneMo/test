.class final Lcom/tencent/mm/z/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field private cuE:Z

.field final synthetic cvv:Lcom/tencent/mm/z/r;


# direct methods
.method constructor <init>(Lcom/tencent/mm/z/r;)V
    .locals 1
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/z/s;->cuE:Z

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 737
    iget-boolean v0, p0, Lcom/tencent/mm/z/s;->cuE:Z

    if-nez v0, :cond_0

    .line 738
    iput-boolean v2, p0, Lcom/tencent/mm/z/s;->cuE:Z

    .line 739
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ap;->aCP()V

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    invoke-static {v0}, Lcom/tencent/mm/z/r;->a(Lcom/tencent/mm/z/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    invoke-static {v0}, Lcom/tencent/mm/z/r;->b(Lcom/tencent/mm/z/r;)Lcom/tencent/mm/z/i;

    iget-object v0, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    iget-object v0, v0, Lcom/tencent/mm/z/r;->cvs:Lcom/tencent/mm/protocal/as;

    invoke-static {}, Lcom/tencent/mm/z/i;->Bu()V

    .line 743
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ap;->aCQ()V

    move v0, v1

    .line 786
    :goto_0
    return v0

    .line 747
    :cond_1
    new-instance v4, Lcom/tencent/mm/compatible/g/k;

    invoke-direct {v4}, Lcom/tencent/mm/compatible/g/k;-><init>()V

    .line 748
    iget-object v0, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    iget-object v0, v0, Lcom/tencent/mm/z/r;->cvs:Lcom/tencent/mm/protocal/as;

    iget-object v0, v0, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    iget v0, v0, Lcom/tencent/mm/protocal/a/cy;->fAC:I

    if-le v0, v2, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    :cond_2
    move v3, v1

    .line 754
    :goto_1
    const/4 v0, 0x5

    if-ge v3, v0, :cond_8

    .line 755
    iget-object v0, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    invoke-static {v0}, Lcom/tencent/mm/z/r;->c(Lcom/tencent/mm/z/r;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 756
    iget-object v0, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    iget-object v0, v0, Lcom/tencent/mm/z/r;->cvs:Lcom/tencent/mm/protocal/as;

    iget-object v0, v0, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    iget-object v0, v0, Lcom/tencent/mm/z/r;->cvs:Lcom/tencent/mm/protocal/as;

    iget-object v0, v0, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/cy;->fAD:Ljava/util/LinkedList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    invoke-static {v0}, Lcom/tencent/mm/z/r;->d(Lcom/tencent/mm/z/r;)I

    move-result v0

    iget-object v5, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    iget-object v5, v5, Lcom/tencent/mm/z/r;->cvs:Lcom/tencent/mm/protocal/as;

    iget-object v5, v5, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    iget-object v5, v5, Lcom/tencent/mm/protocal/a/cy;->fAD:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    invoke-static {v0}, Lcom/tencent/mm/z/r;->e(Lcom/tencent/mm/z/r;)Lcom/tencent/mm/z/n;

    move-result-object v5

    iget-object v0, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    iget-object v0, v0, Lcom/tencent/mm/z/r;->cvs:Lcom/tencent/mm/protocal/as;

    iget-object v0, v0, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/cy;->fAD:Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    invoke-static {v6}, Lcom/tencent/mm/z/r;->d(Lcom/tencent/mm/z/r;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/cx;

    invoke-virtual {v5, v0, v1}, Lcom/tencent/mm/z/n;->a(Lcom/tencent/mm/protocal/a/cx;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 757
    :cond_3
    const-string v0, "MicroMsg.SyncRespHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sync processingResp.getCmdList() "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    iget-object v6, v6, Lcom/tencent/mm/z/r;->cvs:Lcom/tencent/mm/protocal/as;

    iget-object v6, v6, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget-object v6, v6, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    iget v6, v6, Lcom/tencent/mm/protocal/a/cy;->fAC:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    invoke-static {v0}, Lcom/tencent/mm/z/r;->f(Lcom/tencent/mm/z/r;)Z

    .line 759
    iget-object v0, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    invoke-static {v0}, Lcom/tencent/mm/z/r;->g(Lcom/tencent/mm/z/r;)I

    .line 775
    :goto_2
    invoke-virtual {v4}, Lcom/tencent/mm/compatible/g/k;->qh()J

    move-result-wide v5

    const-wide/16 v7, 0x1f4

    cmp-long v0, v5, v7

    if-lez v0, :cond_7

    .line 776
    const-string v0, "MicroMsg.SyncRespHandler"

    const-string v5, "dksynctime(>500) : %d cnt:%d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/mm/compatible/g/k;->qh()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 780
    :goto_3
    cmp-long v5, v10, v10

    if-lez v5, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    .line 783
    :cond_4
    const-string v5, "MicroMsg.SyncRespHandler"

    const-string v6, "dksynctime : %d cnt:%d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/mm/compatible/g/k;->qh()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v2

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 761
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    invoke-static {v0}, Lcom/tencent/mm/z/r;->h(Lcom/tencent/mm/z/r;)I

    goto :goto_2

    .line 765
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    invoke-static {v0}, Lcom/tencent/mm/z/r;->b(Lcom/tencent/mm/z/r;)Lcom/tencent/mm/z/i;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    iget-object v5, v5, Lcom/tencent/mm/z/r;->cvs:Lcom/tencent/mm/protocal/as;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/z/i;->a(Lcom/tencent/mm/protocal/as;)V

    .line 766
    iget-object v0, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    invoke-static {v0}, Lcom/tencent/mm/z/r;->e(Lcom/tencent/mm/z/r;)Lcom/tencent/mm/z/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/z/n;->Bx()V

    .line 769
    iget-object v0, p0, Lcom/tencent/mm/z/s;->cvv:Lcom/tencent/mm/z/r;

    invoke-static {v0}, Lcom/tencent/mm/z/r;->i(Lcom/tencent/mm/z/r;)V

    .line 770
    const-string v0, "MicroMsg.SyncRespHandler"

    const-string v5, "sync resp list process done"

    invoke-static {v0, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ap;->aCQ()V

    move v0, v1

    .line 773
    goto :goto_3

    .line 754
    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto :goto_3
.end method
