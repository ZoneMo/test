.class public final Lcom/tencent/mm/protocal/a/wk;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fUZ:I

.field public fVa:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/wk;->fVa:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 3
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/wk;->fUZ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 21
    const/4 v0, 0x2

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/wk;->fVa:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 22
    return-void
.end method

.method public final bX([B)Lcom/tencent/mm/protocal/a/wk;
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 24
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/wk;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 25
    new-instance v4, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/wk;->fxi:La/a/a/a/a/b;

    invoke-direct {v4, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 26
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/wk;->a(La/a/a/a/a;)I

    move-result v0

    .line 28
    :goto_0
    if-lez v0, :cond_3

    .line 29
    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    .line 30
    invoke-virtual {v4}, La/a/a/a/a;->aPZ()V

    .line 32
    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/wk;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 29
    :pswitch_0
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/wk;->fUZ:I

    move v0, v1

    goto :goto_1

    :pswitch_1
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

    new-instance v7, Lcom/tencent/mm/protocal/a/mk;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/mk;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/wk;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/wk;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/mk;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/mk;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/wk;->fVa:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    .line 35
    :cond_3
    return-object p0

    .line 29
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
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/wk;->bX([B)Lcom/tencent/mm/protocal/a/wk;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 4

    .prologue
    .line 13
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/wk;->fUZ:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 15
    const/4 v1, 0x2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/tencent/mm/protocal/a/wk;->fVa:Ljava/util/LinkedList;

    invoke-static {v1, v2, v3}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    return v0
.end method
