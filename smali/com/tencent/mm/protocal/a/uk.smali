.class public final Lcom/tencent/mm/protocal/a/uk;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fVl:J

.field public fVm:J

.field public fVn:Lcom/tencent/mm/protocal/a/uj;

.field public fVo:Lcom/tencent/mm/protocal/a/uj;

.field public fzj:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/uk;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 69
    packed-switch p2, :pswitch_data_0

    .line 119
    :goto_0
    return v0

    .line 71
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPW()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/tencent/mm/protocal/a/uk;->fVl:J

    move v0, v1

    .line 72
    goto :goto_0

    .line 75
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPW()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/tencent/mm/protocal/a/uk;->fVm:J

    move v0, v1

    .line 76
    goto :goto_0

    .line 79
    :pswitch_2
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 81
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 82
    new-instance v5, Lcom/tencent/mm/protocal/a/uj;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/uj;-><init>()V

    .line 83
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/uk;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 86
    :goto_2
    if-eqz v0, :cond_0

    .line 87
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/uk;->a(La/a/a/a/a;)I

    move-result v0

    .line 88
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/uj;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/uj;I)Z

    move-result v0

    goto :goto_2

    .line 90
    :cond_0
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/uk;->fVn:Lcom/tencent/mm/protocal/a/uj;

    .line 80
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 94
    goto :goto_0

    .line 97
    :pswitch_3
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 99
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 100
    new-instance v5, Lcom/tencent/mm/protocal/a/uj;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/uj;-><init>()V

    .line 101
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/uk;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 104
    :goto_4
    if-eqz v0, :cond_2

    .line 105
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/uk;->a(La/a/a/a/a;)I

    move-result v0

    .line 106
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/uj;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/uj;I)Z

    move-result v0

    goto :goto_4

    .line 108
    :cond_2
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/uk;->fVo:Lcom/tencent/mm/protocal/a/uj;

    .line 98
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    .line 112
    goto :goto_0

    .line 115
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/uk;->fzj:Ljava/lang/String;

    move v0, v1

    .line 116
    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/uk;->fVn:Lcom/tencent/mm/protocal/a/uj;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/tencent/mm/protocal/a/uk;->fVl:J

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->k(IJ)V

    .line 39
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/tencent/mm/protocal/a/uk;->fVm:J

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->k(IJ)V

    .line 40
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/uk;->fVn:Lcom/tencent/mm/protocal/a/uj;

    if-eqz v0, :cond_1

    .line 41
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/uk;->fVn:Lcom/tencent/mm/protocal/a/uj;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/uj;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 42
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/uk;->fVn:Lcom/tencent/mm/protocal/a/uj;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/uj;->a(La/a/a/c/a;)V

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/uk;->fVo:Lcom/tencent/mm/protocal/a/uj;

    if-eqz v0, :cond_2

    .line 45
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/uk;->fVo:Lcom/tencent/mm/protocal/a/uj;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/uj;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 46
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/uk;->fVo:Lcom/tencent/mm/protocal/a/uj;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/uj;->a(La/a/a/c/a;)V

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/uk;->fzj:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 49
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/uk;->fzj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 51
    :cond_3
    return-void
.end method

.method public final bT([B)Lcom/tencent/mm/protocal/a/uk;
    .locals 2
    .parameter

    .prologue
    .line 53
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/uk;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 54
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/uk;->a(La/a/a/a/a;)I

    move-result v0

    .line 56
    :goto_0
    if-lez v0, :cond_1

    .line 57
    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/uk;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/uk;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    .line 60
    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/uk;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/uk;->fVn:Lcom/tencent/mm/protocal/a/uj;

    if-nez v0, :cond_2

    .line 64
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_2
    return-object p0
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/uk;->bT([B)Lcom/tencent/mm/protocal/a/uk;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 4

    .prologue
    .line 19
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/tencent/mm/protocal/a/uk;->fVl:J

    invoke-static {v0, v1, v2}, La/a/a/a;->i(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 21
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/tencent/mm/protocal/a/uk;->fVm:J

    invoke-static {v1, v2, v3}, La/a/a/a;->i(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/uk;->fVn:Lcom/tencent/mm/protocal/a/uj;

    if-eqz v1, :cond_0

    .line 23
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/uk;->fVn:Lcom/tencent/mm/protocal/a/uj;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/uj;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/uk;->fVo:Lcom/tencent/mm/protocal/a/uj;

    if-eqz v1, :cond_1

    .line 26
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/uk;->fVo:Lcom/tencent/mm/protocal/a/uj;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/uj;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/uk;->fzj:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 29
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/uk;->fzj:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_2
    return v0
.end method
