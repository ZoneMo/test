.class public final Lcom/tencent/mm/protocal/a/pr;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public Th:Ljava/lang/String;

.field public fFC:Ljava/lang/String;

.field public fFT:I

.field public fGp:I

.field public fSd:I

.field public fSe:Lcom/tencent/mm/protocal/a/rv;

.field public fzU:Lcom/tencent/mm/protocal/a/rv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/pr;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 75
    packed-switch p2, :pswitch_data_0

    .line 133
    :goto_0
    return v0

    .line 77
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    move v0, v1

    .line 78
    goto :goto_0

    .line 81
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/pr;->fFT:I

    move v0, v1

    .line 82
    goto :goto_0

    .line 85
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/pr;->Th:Ljava/lang/String;

    move v0, v1

    .line 86
    goto :goto_0

    .line 89
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/pr;->fSd:I

    move v0, v1

    .line 90
    goto :goto_0

    .line 93
    :pswitch_4
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 95
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 96
    new-instance v5, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    .line 97
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/pr;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 100
    :goto_2
    if-eqz v0, :cond_0

    .line 101
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/pr;->a(La/a/a/a/a;)I

    move-result v0

    .line 102
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rv;I)Z

    move-result v0

    goto :goto_2

    .line 104
    :cond_0
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/pr;->fzU:Lcom/tencent/mm/protocal/a/rv;

    .line 94
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 108
    goto :goto_0

    .line 111
    :pswitch_5
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/pr;->fFC:Ljava/lang/String;

    move v0, v1

    .line 112
    goto :goto_0

    .line 115
    :pswitch_6
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 117
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 118
    new-instance v5, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    .line 119
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/pr;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 122
    :goto_4
    if-eqz v0, :cond_2

    .line 123
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/pr;->a(La/a/a/a/a;)I

    move-result v0

    .line 124
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rv;I)Z

    move-result v0

    goto :goto_4

    .line 126
    :cond_2
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/pr;->fSe:Lcom/tencent/mm/protocal/a/rv;

    .line 116
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    .line 130
    goto/16 :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 44
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/pr;->fFT:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 45
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pr;->Th:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pr;->Th:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 48
    :cond_0
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/pr;->fSd:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 49
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pr;->fzU:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_1

    .line 50
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pr;->fzU:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 51
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pr;->fzU:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pr;->fFC:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 54
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pr;->fFC:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pr;->fSe:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_3

    .line 57
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pr;->fSe:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 58
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/pr;->fSe:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 60
    :cond_3
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/pr;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/pr;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/pr;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/pr;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/pr;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/pr;->fGp:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 25
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/pr;->fFT:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pr;->Th:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pr;->Th:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_0
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/pr;->fSd:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pr;->fzU:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_1

    .line 31
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pr;->fzU:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pr;->fFC:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 34
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pr;->fFC:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/pr;->fSe:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_3

    .line 37
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/pr;->fSe:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_3
    return v0
.end method
