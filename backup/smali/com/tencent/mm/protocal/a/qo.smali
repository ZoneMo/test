.class public final Lcom/tencent/mm/protocal/a/qo;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public Tu:Ljava/lang/String;

.field public Tv:Ljava/lang/String;

.field public cqq:I

.field public cqr:Ljava/lang/String;

.field public cqs:I

.field public cqt:Ljava/lang/String;

.field public cqu:I

.field public cqv:I

.field public cqw:Ljava/lang/String;

.field public cqx:Ljava/lang/String;

.field public cqy:Ljava/lang/String;

.field public eBo:Ljava/lang/String;

.field public fDe:Ljava/lang/String;

.field public fDg:Ljava/lang/String;

.field public fDh:Ljava/lang/String;

.field public fNv:Lcom/tencent/mm/protocal/a/vp;

.field public fNw:Lcom/tencent/mm/protocal/a/dl;

.field public fTb:I

.field public fTc:Ljava/lang/String;

.field public fTd:I

.field public fTe:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/qo;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 175
    packed-switch p2, :pswitch_data_0

    .line 289
    :goto_0
    return v0

    .line 177
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/qo;->fTb:I

    move v0, v1

    .line 178
    goto :goto_0

    .line 181
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qo;->eBo:Ljava/lang/String;

    move v0, v1

    .line 182
    goto :goto_0

    .line 185
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qo;->fDe:Ljava/lang/String;

    move v0, v1

    .line 186
    goto :goto_0

    .line 189
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qo;->fTc:Ljava/lang/String;

    move v0, v1

    .line 190
    goto :goto_0

    .line 193
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/qo;->fTd:I

    move v0, v1

    .line 194
    goto :goto_0

    .line 197
    :pswitch_5
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qo;->fTe:Ljava/lang/String;

    move v0, v1

    .line 198
    goto :goto_0

    .line 201
    :pswitch_6
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/qo;->cqq:I

    move v0, v1

    .line 202
    goto :goto_0

    .line 205
    :pswitch_7
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qo;->Tu:Ljava/lang/String;

    move v0, v1

    .line 206
    goto :goto_0

    .line 209
    :pswitch_8
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qo;->Tv:Ljava/lang/String;

    move v0, v1

    .line 210
    goto :goto_0

    .line 213
    :pswitch_9
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qo;->cqr:Ljava/lang/String;

    move v0, v1

    .line 214
    goto :goto_0

    .line 217
    :pswitch_a
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/qo;->cqs:I

    move v0, v1

    .line 218
    goto :goto_0

    .line 221
    :pswitch_b
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qo;->cqt:Ljava/lang/String;

    move v0, v1

    .line 222
    goto :goto_0

    .line 225
    :pswitch_c
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/qo;->cqu:I

    move v0, v1

    .line 226
    goto :goto_0

    .line 229
    :pswitch_d
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/qo;->cqv:I

    move v0, v1

    .line 230
    goto :goto_0

    .line 233
    :pswitch_e
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qo;->cqw:Ljava/lang/String;

    move v0, v1

    .line 234
    goto :goto_0

    .line 237
    :pswitch_f
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 238
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 239
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 240
    new-instance v5, Lcom/tencent/mm/protocal/a/vp;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/vp;-><init>()V

    .line 241
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/qo;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 244
    :goto_2
    if-eqz v0, :cond_0

    .line 245
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/qo;->a(La/a/a/a/a;)I

    move-result v0

    .line 246
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/vp;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/vp;I)Z

    move-result v0

    goto :goto_2

    .line 248
    :cond_0
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/qo;->fNv:Lcom/tencent/mm/protocal/a/vp;

    .line 238
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 252
    goto/16 :goto_0

    .line 255
    :pswitch_10
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qo;->cqx:Ljava/lang/String;

    move v0, v1

    .line 256
    goto/16 :goto_0

    .line 259
    :pswitch_11
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qo;->cqy:Ljava/lang/String;

    move v0, v1

    .line 260
    goto/16 :goto_0

    .line 263
    :pswitch_12
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 264
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 265
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 266
    new-instance v5, Lcom/tencent/mm/protocal/a/dl;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/dl;-><init>()V

    .line 267
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/qo;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 270
    :goto_4
    if-eqz v0, :cond_2

    .line 271
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/qo;->a(La/a/a/a/a;)I

    move-result v0

    .line 272
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/dl;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/dl;I)Z

    move-result v0

    goto :goto_4

    .line 274
    :cond_2
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/qo;->fNw:Lcom/tencent/mm/protocal/a/dl;

    .line 264
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    .line 278
    goto/16 :goto_0

    .line 281
    :pswitch_13
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qo;->fDg:Ljava/lang/String;

    move v0, v1

    .line 282
    goto/16 :goto_0

    .line 285
    :pswitch_14
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/qo;->fDh:Ljava/lang/String;

    move v0, v1

    .line 286
    goto/16 :goto_0

    .line 175
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
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/qo;->fTb:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 108
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qo;->eBo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->eBo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qo;->fDe:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 112
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->fDe:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qo;->fTc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 115
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->fTc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 117
    :cond_2
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/qo;->fTd:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 118
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qo;->fTe:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 119
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->fTe:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 121
    :cond_3
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/qo;->cqq:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 122
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qo;->Tu:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 123
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->Tu:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qo;->Tv:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 126
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->Tv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 128
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qo;->cqr:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 129
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->cqr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 131
    :cond_6
    const/16 v0, 0xb

    iget v1, p0, Lcom/tencent/mm/protocal/a/qo;->cqs:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 132
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qo;->cqt:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 133
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->cqt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 135
    :cond_7
    const/16 v0, 0xd

    iget v1, p0, Lcom/tencent/mm/protocal/a/qo;->cqu:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 136
    const/16 v0, 0xe

    iget v1, p0, Lcom/tencent/mm/protocal/a/qo;->cqv:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 137
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qo;->cqw:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 138
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->cqw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 140
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qo;->fNv:Lcom/tencent/mm/protocal/a/vp;

    if-eqz v0, :cond_9

    .line 141
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/vp;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 142
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qo;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/vp;->a(La/a/a/c/a;)V

    .line 144
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qo;->cqx:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 145
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->cqx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 147
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qo;->cqy:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 148
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->cqy:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 150
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qo;->fNw:Lcom/tencent/mm/protocal/a/dl;

    if-eqz v0, :cond_c

    .line 151
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/dl;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 152
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qo;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/dl;->a(La/a/a/c/a;)V

    .line 154
    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qo;->fDg:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 155
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->fDg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 157
    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/qo;->fDh:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 158
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->fDh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 160
    :cond_e
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/qo;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/qo;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/qo;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/qo;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/qo;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/qo;->fTb:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->eBo:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qo;->eBo:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->fDe:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 57
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qo;->fDe:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->fTc:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 60
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qo;->fTc:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_2
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/qo;->fTd:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->fTe:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 64
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qo;->fTe:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_3
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/qo;->cqq:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->Tu:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 68
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qo;->Tu:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->Tv:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 71
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qo;->Tv:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->cqr:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 74
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qo;->cqr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_6
    const/16 v1, 0xb

    iget v2, p0, Lcom/tencent/mm/protocal/a/qo;->cqs:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->cqt:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 78
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qo;->cqt:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_7
    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/protocal/a/qo;->cqu:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    const/16 v1, 0xe

    iget v2, p0, Lcom/tencent/mm/protocal/a/qo;->cqv:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->cqw:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 83
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qo;->cqw:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->fNv:Lcom/tencent/mm/protocal/a/vp;

    if-eqz v1, :cond_9

    .line 86
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qo;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/vp;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_9
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->cqx:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 89
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qo;->cqx:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->cqy:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 92
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qo;->cqy:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_b
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->fNw:Lcom/tencent/mm/protocal/a/dl;

    if-eqz v1, :cond_c

    .line 95
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qo;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/dl;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_c
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->fDg:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 98
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qo;->fDg:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_d
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/qo;->fDh:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 101
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/qo;->fDh:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_e
    return v0
.end method
