.class public final Lcom/tencent/mm/protocal/a/dq;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fEI:Lcom/tencent/mm/protocal/a/rw;

.field public fEK:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/dq;->fEI:Lcom/tencent/mm/protocal/a/rw;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/dq;->fEI:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_1

    .line 26
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/dq;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 27
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/dq;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 29
    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/dq;->fEK:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 30
    return-void
.end method

.method public final aP([B)Lcom/tencent/mm/protocal/a/dq;
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 32
    new-instance v4, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/dq;->fxi:La/a/a/a/a/b;

    invoke-direct {v4, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 33
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/dq;->a(La/a/a/a/a;)I

    move-result v0

    .line 35
    :goto_0
    if-lez v0, :cond_3

    .line 36
    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    .line 37
    invoke-virtual {v4}, La/a/a/a/a;->aPZ()V

    .line 39
    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/dq;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 36
    :pswitch_0
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_2
    if-ge v3, v6, :cond_2

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/dq;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/dq;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/dq;->fEI:Lcom/tencent/mm/protocal/a/rw;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/dq;->fEK:I

    move v0, v1

    goto :goto_1

    .line 42
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/dq;->fEI:Lcom/tencent/mm/protocal/a/rw;

    if-nez v0, :cond_4

    .line 43
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_4
    return-object p0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/dq;->aP([B)Lcom/tencent/mm/protocal/a/dq;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 14
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/dq;->fEI:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_0

    .line 15
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/dq;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 17
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/dq;->fEK:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    return v0
.end method
