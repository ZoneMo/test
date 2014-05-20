.class final Lcom/tencent/mm/z/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field cvA:I

.field final synthetic cvB:Lcom/tencent/mm/z/u;


# direct methods
.method constructor <init>(Lcom/tencent/mm/z/u;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/tencent/mm/z/v;->cvB:Lcom/tencent/mm/z/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/tencent/mm/z/v;->cvB:Lcom/tencent/mm/z/u;

    iget v0, v0, Lcom/tencent/mm/z/u;->cvy:I

    iput v0, p0, Lcom/tencent/mm/z/v;->cvA:I

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    iget v0, p0, Lcom/tencent/mm/z/v;->cvA:I

    if-gtz v0, :cond_0

    move v0, v2

    .line 141
    :goto_0
    return v0

    .line 104
    :cond_0
    iget v0, p0, Lcom/tencent/mm/z/v;->cvA:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/z/v;->cvA:I

    .line 106
    new-instance v5, Lcom/tencent/mm/protocal/as;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/as;-><init>()V

    .line 108
    iget-object v0, v5, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    new-instance v1, Lcom/tencent/mm/protocal/a/cy;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/cy;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    .line 109
    iget-object v0, p0, Lcom/tencent/mm/z/v;->cvB:Lcom/tencent/mm/z/u;

    iget v0, v0, Lcom/tencent/mm/z/u;->cvz:I

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/au;->R(II)I

    move-result v6

    move v4, v2

    .line 110
    :goto_1
    if-ge v4, v6, :cond_1

    .line 112
    invoke-static {}, Lcom/tencent/mm/z/t;->BA()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/z/t;->BA()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/au;->R(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/l;

    .line 113
    new-instance v7, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    invoke-static {}, Lcom/tencent/mm/z/t;->Bz()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/z/t;->Bz()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, v2}, Lcom/tencent/mm/platformtools/au;->R(II)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/tencent/mm/protocal/a/rw;->sn(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/rw;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/l;->fzs:Lcom/tencent/mm/protocal/a/rw;

    .line 114
    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FC()J

    move-result-wide v7

    long-to-int v1, v7

    iput v1, v0, Lcom/tencent/mm/protocal/a/l;->fzy:I

    .line 115
    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FD()J

    move-result-wide v7

    long-to-int v1, v7

    const v7, 0x989680

    rem-int/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/l;->fzo:I

    .line 118
    :try_start_0
    new-instance v1, Lcom/tencent/mm/protocal/a/cx;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/cx;-><init>()V

    .line 119
    new-instance v7, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    iput-object v7, v1, Lcom/tencent/mm/protocal/a/cx;->fEa:Lcom/tencent/mm/protocal/a/rv;

    .line 120
    iget-object v7, v1, Lcom/tencent/mm/protocal/a/cx;->fEa:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/l;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    .line 121
    const/4 v7, 0x5

    iput v7, v1, Lcom/tencent/mm/protocal/a/cx;->fDZ:I

    .line 123
    iget-object v7, v5, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget-object v7, v7, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    iget-object v7, v7, Lcom/tencent/mm/protocal/a/cy;->fAD:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, v5, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget-object v1, v1, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    iget v7, v1, Lcom/tencent/mm/protocal/a/cy;->fAC:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lcom/tencent/mm/protocal/a/cy;->fAC:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    const-string v1, "MicroMsg.TestSyncAddMsg"

    const-string v7, "syncAddMsg  loop:%d cnt:[%d,%d] cmdList:%d id:%d u:%s"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p0, Lcom/tencent/mm/z/v;->cvA:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v9, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, v5, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget-object v10, v10, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    iget-object v10, v10, Lcom/tencent/mm/protocal/a/cy;->fAD:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget v10, v0, Lcom/tencent/mm/protocal/a/l;->fzo:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/l;->fzs:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/rw;->getString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v11

    invoke-static {v1, v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string v1, "MicroMsg.TestSyncAddMsg"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 134
    :cond_1
    iget-object v0, v5, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iput v2, v0, Lcom/tencent/mm/protocal/a/pe;->fIz:I

    .line 135
    iget-object v1, v5, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v4, 0x2003

    new-array v6, v2, [B

    invoke-virtual {v0, v4, v6}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->ib(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->y([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/protocal/a/pe;->fIx:Lcom/tencent/mm/protocal/a/rv;

    .line 137
    iget-object v0, v5, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iput v2, v0, Lcom/tencent/mm/protocal/a/pe;->fAY:I

    .line 138
    iget-object v0, v5, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iput v2, v0, Lcom/tencent/mm/protocal/a/pe;->fzr:I

    .line 139
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FC()J

    move-result-wide v6

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/tencent/mm/z/i;-><init>(Lcom/tencent/mm/protocal/as;IJ)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    move v0, v3

    .line 141
    goto/16 :goto_0
.end method
