.class public final Lcom/tencent/mm/protocal/a/fz;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fIw:I

.field public fIx:Lcom/tencent/mm/protocal/a/rv;


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
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fz;->fIx:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/fz;->fIw:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 26
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fz;->fIx:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_1

    .line 27
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fz;->fIx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 28
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fz;->fIx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 30
    :cond_1
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

    sget-object v0, Lcom/tencent/mm/protocal/a/fz;->fxi:La/a/a/a/a/b;

    invoke-direct {v4, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v4}, Lcom/tencent/mm/protocal/a/fz;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_3

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {v4}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/fz;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/fz;->fIw:I

    move v0, v1

    goto :goto_1

    :pswitch_2
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

    new-instance v7, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/fz;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/fz;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rv;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/fz;->fIx:Lcom/tencent/mm/protocal/a/rv;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fz;->fIx:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_4

    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/fz;->fIw:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 15
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fz;->fIx:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_0

    .line 16
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/fz;->fIx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_0
    return v0
.end method
