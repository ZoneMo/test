.class public final Lcom/tencent/mm/protocal/a/pe;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fAY:I

.field public fIx:Lcom/tencent/mm/protocal/a/rv;

.field public fIy:Lcom/tencent/mm/protocal/a/cy;

.field public fIz:I

.field public fRy:I

.field public fzr:I


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
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pe;->fIx:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_1

    .line 37
    :cond_0
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/pe;->fAY:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 40
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    if-eqz v0, :cond_2

    .line 41
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/cy;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 42
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/cy;->a(La/a/a/c/a;)V

    .line 44
    :cond_2
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/pe;->fIz:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 45
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pe;->fIx:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_3

    .line 46
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pe;->fIx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 47
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pe;->fIx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 49
    :cond_3
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/pe;->fzr:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 50
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/pe;->fRy:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 51
    return-void
.end method

.method public final bI([B)Lcom/tencent/mm/protocal/a/pe;
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 53
    new-instance v4, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/pe;->fxi:La/a/a/a/a/b;

    invoke-direct {v4, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 54
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/pe;->a(La/a/a/a/a;)I

    move-result v0

    .line 56
    :goto_0
    if-lez v0, :cond_5

    .line 57
    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    .line 58
    invoke-virtual {v4}, La/a/a/a/a;->aPZ()V

    .line 60
    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/pe;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 57
    :pswitch_0
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/pe;->fAY:I

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

    new-instance v7, Lcom/tencent/mm/protocal/a/cy;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/cy;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/pe;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/pe;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/cy;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/cy;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/pe;->fIz:I

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

    new-instance v7, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/pe;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_5
    if-eqz v0, :cond_3

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/pe;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rv;I)Z

    move-result v0

    goto :goto_5

    :cond_3
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/pe;->fIx:Lcom/tencent/mm/protocal/a/rv;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/pe;->fzr:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/pe;->fRy:I

    move v0, v1

    goto/16 :goto_1

    .line 63
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pe;->fIx:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_7

    .line 64
    :cond_6
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_7
    return-object p0

    .line 57
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

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/pe;->bI([B)Lcom/tencent/mm/protocal/a/pe;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/pe;->fAY:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 23
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    if-eqz v1, :cond_0

    .line 24
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pe;->fIy:Lcom/tencent/mm/protocal/a/cy;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/cy;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_0
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/pe;->fIz:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pe;->fIx:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_1

    .line 28
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pe;->fIx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_1
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/pe;->fzr:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/pe;->fRy:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    return v0
.end method
