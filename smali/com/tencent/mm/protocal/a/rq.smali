.class public final Lcom/tencent/mm/protocal/a/rq;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public dGR:I

.field public fGl:Ljava/lang/String;

.field public fQu:I

.field public fTT:Lcom/tencent/mm/protocal/a/yv;

.field public fTU:Lcom/tencent/mm/protocal/a/xd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/protocal/a/rs;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rq;->fTT:Lcom/tencent/mm/protocal/a/yv;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rq;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/rq;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 44
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rq;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rq;->fGl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 47
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/rq;->fGl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 49
    :cond_2
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/rq;->dGR:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 50
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rq;->fTT:Lcom/tencent/mm/protocal/a/yv;

    if-eqz v0, :cond_3

    .line 51
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/rq;->fTT:Lcom/tencent/mm/protocal/a/yv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/yv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 52
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rq;->fTT:Lcom/tencent/mm/protocal/a/yv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/yv;->a(La/a/a/c/a;)V

    .line 54
    :cond_3
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/rq;->fQu:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 55
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rq;->fTU:Lcom/tencent/mm/protocal/a/xd;

    if-eqz v0, :cond_4

    .line 56
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/rq;->fTU:Lcom/tencent/mm/protocal/a/xd;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/xd;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 57
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rq;->fTU:Lcom/tencent/mm/protocal/a/xd;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/xd;->a(La/a/a/c/a;)V

    .line 59
    :cond_4
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6
    new-instance v4, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/rq;->fxi:La/a/a/a/a/b;

    invoke-direct {v4, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v4}, Lcom/tencent/mm/protocal/a/rq;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_7

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {v4}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/rq;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

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

    new-instance v7, Lcom/tencent/mm/protocal/a/au;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/au;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/rq;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/rq;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/au;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/rq;->fTY:Lcom/tencent/mm/protocal/a/au;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/rq;->fGl:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/rq;->dGR:I

    move v0, v1

    goto :goto_1

    :pswitch_3
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_4
    if-ge v3, v6, :cond_4

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/yv;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/yv;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/rq;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_5
    if-eqz v0, :cond_3

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/rq;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/yv;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/yv;I)Z

    move-result v0

    goto :goto_5

    :cond_3
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/rq;->fTT:Lcom/tencent/mm/protocal/a/yv;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/rq;->fQu:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_6
    if-ge v3, v6, :cond_6

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/xd;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/xd;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/rq;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_7
    if-eqz v0, :cond_5

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/rq;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/xd;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/xd;I)Z

    move-result v0

    goto :goto_7

    :cond_5
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/rq;->fTU:Lcom/tencent/mm/protocal/a/xd;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_6
    move v0, v1

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rq;->fTT:Lcom/tencent/mm/protocal/a/yv;

    if-nez v0, :cond_8

    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 21
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/rq;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 22
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/rq;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/rq;->fGl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 25
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/rq;->fGl:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_1
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/rq;->dGR:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/rq;->fTT:Lcom/tencent/mm/protocal/a/yv;

    if-eqz v1, :cond_2

    .line 29
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/rq;->fTT:Lcom/tencent/mm/protocal/a/yv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/yv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_2
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/rq;->fQu:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/rq;->fTU:Lcom/tencent/mm/protocal/a/xd;

    if-eqz v1, :cond_3

    .line 33
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/rq;->fTU:Lcom/tencent/mm/protocal/a/xd;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/xd;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_3
    return v0
.end method
