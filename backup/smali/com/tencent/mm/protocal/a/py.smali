.class public final Lcom/tencent/mm/protocal/a/py;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public dDf:Ljava/lang/String;

.field public fCV:I

.field public fSh:Ljava/lang/String;

.field public fSi:I

.field public fSn:I

.field public fSo:Ljava/lang/String;

.field public fSp:Ljava/lang/String;

.field public fSq:I

.field public fSr:Ljava/lang/String;

.field public fSs:I

.field public fSt:Ljava/lang/String;

.field public fSu:Ljava/lang/String;

.field public fSv:Ljava/lang/String;

.field public fSw:Ljava/lang/String;

.field public fSx:Ljava/util/LinkedList;

.field public fyV:Ljava/lang/String;

.field public fzy:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/py;->fSx:Ljava/util/LinkedList;

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/py;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 138
    packed-switch p2, :pswitch_data_0

    .line 222
    :goto_0
    return v0

    .line 140
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/py;->fSh:Ljava/lang/String;

    move v0, v1

    .line 141
    goto :goto_0

    .line 144
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/py;->fSn:I

    move v0, v1

    .line 145
    goto :goto_0

    .line 148
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/py;->fSo:Ljava/lang/String;

    move v0, v1

    .line 149
    goto :goto_0

    .line 152
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/py;->fzy:I

    move v0, v1

    .line 153
    goto :goto_0

    .line 156
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/py;->fSp:Ljava/lang/String;

    move v0, v1

    .line 157
    goto :goto_0

    .line 160
    :pswitch_5
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/py;->fSq:I

    move v0, v1

    .line 161
    goto :goto_0

    .line 164
    :pswitch_6
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/py;->fSr:Ljava/lang/String;

    move v0, v1

    .line 165
    goto :goto_0

    .line 168
    :pswitch_7
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/py;->fSs:I

    move v0, v1

    .line 169
    goto :goto_0

    .line 172
    :pswitch_8
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/py;->fSi:I

    move v0, v1

    .line 173
    goto :goto_0

    .line 176
    :pswitch_9
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/py;->fSt:Ljava/lang/String;

    move v0, v1

    .line 177
    goto :goto_0

    .line 180
    :pswitch_a
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/py;->fyV:Ljava/lang/String;

    move v0, v1

    .line 181
    goto :goto_0

    .line 184
    :pswitch_b
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/py;->dDf:Ljava/lang/String;

    move v0, v1

    .line 185
    goto :goto_0

    .line 188
    :pswitch_c
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/py;->fSu:Ljava/lang/String;

    move v0, v1

    .line 189
    goto :goto_0

    .line 192
    :pswitch_d
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/py;->fSv:Ljava/lang/String;

    move v0, v1

    .line 193
    goto :goto_0

    .line 196
    :pswitch_e
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/py;->fSw:Ljava/lang/String;

    move v0, v1

    .line 197
    goto :goto_0

    .line 200
    :pswitch_f
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/py;->fCV:I

    move v0, v1

    .line 201
    goto :goto_0

    .line 204
    :pswitch_10
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 205
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 206
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 207
    new-instance v5, Lcom/tencent/mm/protocal/a/ug;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/ug;-><init>()V

    .line 208
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/py;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 211
    :goto_2
    if-eqz v0, :cond_0

    .line 212
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/py;->a(La/a/a/a/a;)I

    move-result v0

    .line 213
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/ug;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ug;I)Z

    move-result v0

    goto :goto_2

    .line 215
    :cond_0
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/py;->fSx:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 219
    goto/16 :goto_0

    .line 138
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
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 85
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/py;->fSh:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 88
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/py;->fSn:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/py;->fSo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 92
    :cond_1
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/py;->fzy:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/py;->fSp:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 94
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 96
    :cond_2
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/py;->fSq:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 97
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/py;->fSr:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 98
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 100
    :cond_3
    iget v0, p0, Lcom/tencent/mm/protocal/a/py;->fSs:I

    invoke-virtual {p1, v2, v0}, La/a/a/c/a;->by(II)V

    .line 101
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/py;->fSi:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 102
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/py;->fSt:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 103
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/py;->fyV:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 106
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fyV:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/py;->dDf:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 109
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->dDf:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 111
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/py;->fSu:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 112
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSu:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 114
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/py;->fSv:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 115
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 117
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/py;->fSw:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 118
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 120
    :cond_9
    const/16 v0, 0x10

    iget v1, p0, Lcom/tencent/mm/protocal/a/py;->fCV:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 121
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSx:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 122
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/py;->fSx:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/py;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/py;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/py;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/py;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/py;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final ns()I
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 43
    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSh:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 45
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSh:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 47
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/py;->fSn:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSo:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 49
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/py;->fSo:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_1
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/py;->fzy:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSp:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 53
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/py;->fSp:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_2
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/py;->fSq:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSr:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 57
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/py;->fSr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    :cond_3
    iget v1, p0, Lcom/tencent/mm/protocal/a/py;->fSs:I

    invoke-static {v3, v1}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/py;->fSi:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSt:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 62
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/py;->fSt:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fyV:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 65
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/py;->fyV:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->dDf:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 68
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/py;->dDf:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSu:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 71
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/py;->fSu:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSv:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 74
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/py;->fSv:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/py;->fSw:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 77
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/py;->fSw:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_9
    const/16 v1, 0x10

    iget v2, p0, Lcom/tencent/mm/protocal/a/py;->fCV:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/py;->fSx:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    return v0
.end method
