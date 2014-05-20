.class public final Lcom/tencent/mm/protocal/a/qm;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public Th:Ljava/lang/String;

.field public dGR:I

.field public fAC:I

.field public fFO:Ljava/lang/String;

.field public fLQ:Ljava/lang/String;

.field public fSQ:I

.field public fSR:Ljava/util/LinkedList;

.field public fSS:I

.field public fST:Ljava/lang/String;

.field public fSU:Ljava/lang/String;

.field public fSV:Ljava/lang/String;

.field public fSW:I

.field public fSX:Ljava/lang/String;

.field public fSY:I

.field public fSZ:Ljava/util/LinkedList;

.field public fyJ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/qm;->fSR:Ljava/util/LinkedList;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/qm;->fSZ:Ljava/util/LinkedList;

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/qm;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 123
    packed-switch p2, :pswitch_data_0

    .line 217
    :goto_0
    return v0

    .line 125
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/qm;->fSQ:I

    move v0, v1

    .line 126
    goto :goto_0

    .line 129
    :pswitch_1
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 130
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 131
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 132
    new-instance v5, Lcom/tencent/mm/protocal/a/me;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/me;-><init>()V

    .line 133
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/qm;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 136
    :goto_2
    if-eqz v0, :cond_0

    .line 137
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/qm;->a(La/a/a/a/a;)I

    move-result v0

    .line 138
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/me;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/me;I)Z

    move-result v0

    goto :goto_2

    .line 140
    :cond_0
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/qm;->fSR:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 144
    goto :goto_0

    .line 147
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/qm;->fAC:I

    move v0, v1

    .line 148
    goto :goto_0

    .line 151
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/qm;->fSS:I

    move v0, v1

    .line 152
    goto :goto_0

    .line 155
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qm;->fFO:Ljava/lang/String;

    move v0, v1

    .line 156
    goto :goto_0

    .line 159
    :pswitch_5
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qm;->fLQ:Ljava/lang/String;

    move v0, v1

    .line 160
    goto :goto_0

    .line 163
    :pswitch_6
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qm;->fST:Ljava/lang/String;

    move v0, v1

    .line 164
    goto :goto_0

    .line 167
    :pswitch_7
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qm;->fSU:Ljava/lang/String;

    move v0, v1

    .line 168
    goto :goto_0

    .line 171
    :pswitch_8
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/qm;->dGR:I

    move v0, v1

    .line 172
    goto :goto_0

    .line 175
    :pswitch_9
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qm;->Th:Ljava/lang/String;

    move v0, v1

    .line 176
    goto :goto_0

    .line 179
    :pswitch_a
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qm;->fSV:Ljava/lang/String;

    move v0, v1

    .line 180
    goto/16 :goto_0

    .line 183
    :pswitch_b
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/qm;->fSW:I

    move v0, v1

    .line 184
    goto/16 :goto_0

    .line 187
    :pswitch_c
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/qm;->fyJ:I

    move v0, v1

    .line 188
    goto/16 :goto_0

    .line 191
    :pswitch_d
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qm;->fSX:Ljava/lang/String;

    move v0, v1

    .line 192
    goto/16 :goto_0

    .line 195
    :pswitch_e
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/qm;->fSY:I

    move v0, v1

    .line 196
    goto/16 :goto_0

    .line 199
    :pswitch_f
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 200
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 201
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 202
    new-instance v5, Lcom/tencent/mm/protocal/a/ec;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/ec;-><init>()V

    .line 203
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/qm;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 206
    :goto_4
    if-eqz v0, :cond_2

    .line 207
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/qm;->a(La/a/a/a/a;)I

    move-result v0

    .line 208
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/ec;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ec;I)Z

    move-result v0

    goto :goto_4

    .line 210
    :cond_2
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/qm;->fSZ:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    .line 214
    goto/16 :goto_0

    .line 123
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
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 76
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/qm;->fSQ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 77
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qm;->fSR:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 78
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/qm;->fAC:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 79
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/qm;->fSS:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 80
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qm;->fFO:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qm;->fFO:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qm;->fLQ:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 84
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qm;->fLQ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qm;->fST:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 87
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qm;->fST:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qm;->fSU:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qm;->fSU:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 92
    :cond_3
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/qm;->dGR:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qm;->Th:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 94
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qm;->Th:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qm;->fSV:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 97
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qm;->fSV:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 99
    :cond_5
    const/16 v0, 0xc

    iget v1, p0, Lcom/tencent/mm/protocal/a/qm;->fSW:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 100
    const/16 v0, 0xd

    iget v1, p0, Lcom/tencent/mm/protocal/a/qm;->fyJ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qm;->fSX:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 102
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qm;->fSX:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 104
    :cond_6
    const/16 v0, 0xf

    iget v1, p0, Lcom/tencent/mm/protocal/a/qm;->fSY:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 105
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qm;->fSZ:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 106
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qm;->fSR:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qm;->fSZ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/qm;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/qm;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/qm;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/qm;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/qm;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final ns()I
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 41
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/qm;->fSQ:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 43
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qm;->fSR:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/qm;->fAC:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/qm;->fSS:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qm;->fFO:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 47
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qm;->fFO:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qm;->fLQ:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 50
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qm;->fLQ:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qm;->fST:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 53
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qm;->fST:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qm;->fSU:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 56
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qm;->fSU:Ljava/lang/String;

    invoke-static {v3, v1}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_3
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/qm;->dGR:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qm;->Th:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 60
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qm;->Th:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qm;->fSV:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 63
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qm;->fSV:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_5
    const/16 v1, 0xc

    iget v2, p0, Lcom/tencent/mm/protocal/a/qm;->fSW:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/protocal/a/qm;->fyJ:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qm;->fSX:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 68
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qm;->fSX:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_6
    const/16 v1, 0xf

    iget v2, p0, Lcom/tencent/mm/protocal/a/qm;->fSY:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qm;->fSZ:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    return v0
.end method
