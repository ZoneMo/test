.class public final Lcom/tencent/mm/protocal/a/et;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public dGR:I

.field public fAL:I

.field public fEd:I

.field public fFn:Ljava/lang/String;

.field public fFo:Lcom/tencent/mm/protocal/a/rv;

.field public fFp:Ljava/lang/String;

.field public fFq:Ljava/lang/String;

.field public fFr:Ljava/lang/String;

.field public fzq:Ljava/lang/String;

.field public fzz:Ljava/lang/String;


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
    .line 58
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/et;->fFo:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/et;->fFn:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 62
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/et;->fFn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 64
    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/et;->fEd:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 65
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/et;->fAL:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 66
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/et;->fFo:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_2

    .line 67
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/et;->fFo:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 68
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/et;->fFo:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 70
    :cond_2
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/et;->dGR:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 71
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/et;->fzq:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 72
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/et;->fzq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/et;->fFp:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 75
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/et;->fFp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/et;->fFq:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 78
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/et;->fFq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 80
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/et;->fFr:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 81
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/et;->fFr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 83
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/et;->fzz:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 84
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/et;->fzz:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 86
    :cond_7
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

    sget-object v0, Lcom/tencent/mm/protocal/a/et;->fxi:La/a/a/a/a/b;

    invoke-direct {v4, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v4}, Lcom/tencent/mm/protocal/a/et;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_3

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {v4}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/et;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/et;->fFn:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/et;->fEd:I

    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/et;->fAL:I

    move v0, v1

    goto :goto_1

    :pswitch_3
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

    sget-object v9, Lcom/tencent/mm/protocal/a/et;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/et;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rv;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/et;->fFo:Lcom/tencent/mm/protocal/a/rv;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/et;->dGR:I

    move v0, v1

    goto :goto_1

    :pswitch_5
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/et;->fzq:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_6
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/et;->fFp:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_7
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/et;->fFq:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_8
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/et;->fFr:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_9
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/et;->fzz:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/et;->fFo:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_4

    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/et;->fFn:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 31
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/et;->fFn:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 33
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/et;->fEd:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/et;->fAL:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/et;->fFo:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_1

    .line 36
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/et;->fFo:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_1
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/et;->dGR:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/et;->fzq:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 40
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/et;->fzq:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/et;->fFp:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 43
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/et;->fFp:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/et;->fFq:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 46
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/et;->fFq:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/et;->fFr:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 49
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/et;->fFr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/et;->fzz:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 52
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/et;->fzz:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_6
    return v0
.end method
