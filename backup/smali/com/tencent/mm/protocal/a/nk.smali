.class public final Lcom/tencent/mm/protocal/a/nk;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public bMa:Ljava/lang/String;

.field public cyA:I

.field public dGR:I

.field public eAj:Ljava/lang/String;

.field public eun:I

.field public fEA:Ljava/lang/String;

.field public fOm:I

.field public fOn:Ljava/lang/String;

.field public fOo:I

.field public fOp:I

.field public fOq:Lcom/tencent/mm/protocal/a/nm;

.field public fOr:Ljava/lang/String;

.field public fOs:I

.field public fOt:I

.field public fyI:Ljava/lang/String;

.field public fzM:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/nk;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 126
    packed-switch p2, :pswitch_data_0

    .line 206
    :goto_0
    return v0

    .line 128
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nk;->fzM:Ljava/lang/String;

    move v0, v1

    .line 129
    goto :goto_0

    .line 132
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/nk;->dGR:I

    move v0, v1

    .line 133
    goto :goto_0

    .line 136
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nk;->fEA:Ljava/lang/String;

    move v0, v1

    .line 137
    goto :goto_0

    .line 140
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nk;->fyI:Ljava/lang/String;

    move v0, v1

    .line 141
    goto :goto_0

    .line 144
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/nk;->fOm:I

    move v0, v1

    .line 145
    goto :goto_0

    .line 148
    :pswitch_5
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nk;->fOn:Ljava/lang/String;

    move v0, v1

    .line 149
    goto :goto_0

    .line 152
    :pswitch_6
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/nk;->fOo:I

    move v0, v1

    .line 153
    goto :goto_0

    .line 156
    :pswitch_7
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/nk;->fOp:I

    move v0, v1

    .line 157
    goto :goto_0

    .line 160
    :pswitch_8
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nk;->bMa:Ljava/lang/String;

    move v0, v1

    .line 161
    goto :goto_0

    .line 164
    :pswitch_9
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 166
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 167
    new-instance v5, Lcom/tencent/mm/protocal/a/nm;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/nm;-><init>()V

    .line 168
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/nk;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 171
    :goto_2
    if-eqz v0, :cond_0

    .line 172
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/nk;->a(La/a/a/a/a;)I

    move-result v0

    .line 173
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/nm;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/nm;I)Z

    move-result v0

    goto :goto_2

    .line 175
    :cond_0
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/nk;->fOq:Lcom/tencent/mm/protocal/a/nm;

    .line 165
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 179
    goto :goto_0

    .line 182
    :pswitch_a
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nk;->fOr:Ljava/lang/String;

    move v0, v1

    .line 183
    goto/16 :goto_0

    .line 186
    :pswitch_b
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/nk;->fOs:I

    move v0, v1

    .line 187
    goto/16 :goto_0

    .line 190
    :pswitch_c
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/nk;->eun:I

    move v0, v1

    .line 191
    goto/16 :goto_0

    .line 194
    :pswitch_d
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/nk;->fOt:I

    move v0, v1

    .line 195
    goto/16 :goto_0

    .line 198
    :pswitch_e
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nk;->eAj:Ljava/lang/String;

    move v0, v1

    .line 199
    goto/16 :goto_0

    .line 202
    :pswitch_f
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/nk;->cyA:I

    move v0, v1

    .line 203
    goto/16 :goto_0

    .line 126
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nk;->fzM:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nk;->fzM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 81
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/nk;->dGR:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 82
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nk;->fEA:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 83
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nk;->fEA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nk;->fyI:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 86
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nk;->fyI:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 88
    :cond_2
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/nk;->fOm:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nk;->fOn:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 90
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nk;->fOn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 92
    :cond_3
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/nk;->fOo:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 93
    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/protocal/a/nk;->fOp:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nk;->bMa:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 95
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nk;->bMa:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nk;->fOq:Lcom/tencent/mm/protocal/a/nm;

    if-eqz v0, :cond_5

    .line 98
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nk;->fOq:Lcom/tencent/mm/protocal/a/nm;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/nm;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 99
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nk;->fOq:Lcom/tencent/mm/protocal/a/nm;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/nm;->a(La/a/a/c/a;)V

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nk;->fOr:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 102
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nk;->fOr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 104
    :cond_6
    const/16 v0, 0xc

    iget v1, p0, Lcom/tencent/mm/protocal/a/nk;->fOs:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 105
    const/16 v0, 0xd

    iget v1, p0, Lcom/tencent/mm/protocal/a/nk;->eun:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 106
    const/16 v0, 0xe

    iget v1, p0, Lcom/tencent/mm/protocal/a/nk;->fOt:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 107
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nk;->eAj:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 108
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nk;->eAj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 110
    :cond_7
    const/16 v0, 0x10

    iget v1, p0, Lcom/tencent/mm/protocal/a/nk;->cyA:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 111
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/nk;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/nk;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/nk;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/nk;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/nk;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nk;->fzM:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 43
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nk;->fzM:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 45
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/nk;->dGR:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nk;->fEA:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 47
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nk;->fEA:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nk;->fyI:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 50
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nk;->fyI:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    :cond_2
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/nk;->fOm:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nk;->fOn:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 54
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nk;->fOn:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    :cond_3
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/nk;->fOo:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/protocal/a/nk;->fOp:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nk;->bMa:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 59
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nk;->bMa:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nk;->fOq:Lcom/tencent/mm/protocal/a/nm;

    if-eqz v1, :cond_5

    .line 62
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nk;->fOq:Lcom/tencent/mm/protocal/a/nm;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/nm;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nk;->fOr:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 65
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nk;->fOr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_6
    const/16 v1, 0xc

    iget v2, p0, Lcom/tencent/mm/protocal/a/nk;->fOs:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/protocal/a/nk;->eun:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    const/16 v1, 0xe

    iget v2, p0, Lcom/tencent/mm/protocal/a/nk;->fOt:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nk;->eAj:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 71
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nk;->eAj:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_7
    const/16 v1, 0x10

    iget v2, p0, Lcom/tencent/mm/protocal/a/nk;->cyA:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    return v0
.end method
