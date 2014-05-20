.class public final Lcom/tencent/mm/protocal/a/nf;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public Tu:Ljava/lang/String;

.field public Tv:Ljava/lang/String;

.field public cqp:Ljava/lang/String;

.field public cqq:I

.field public cqr:Ljava/lang/String;

.field public cqs:I

.field public cqt:Ljava/lang/String;

.field public cqu:I

.field public cqv:I

.field public cqw:Ljava/lang/String;

.field public cqx:Ljava/lang/String;

.field public cqy:Ljava/lang/String;

.field public fBM:Ljava/lang/String;

.field public fDg:Ljava/lang/String;

.field public fDh:Ljava/lang/String;

.field public fNU:Ljava/lang/String;

.field public fNV:Lcom/tencent/mm/protocal/a/fo;

.field public fNv:Lcom/tencent/mm/protocal/a/vp;

.field public fNw:Lcom/tencent/mm/protocal/a/dl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/nf;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 168
    packed-switch p2, :pswitch_data_0

    .line 288
    :goto_0
    :pswitch_0
    return v0

    .line 170
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nf;->fBM:Ljava/lang/String;

    move v0, v1

    .line 171
    goto :goto_0

    .line 174
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nf;->fNU:Ljava/lang/String;

    move v0, v1

    .line 175
    goto :goto_0

    .line 178
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nf;->cqp:Ljava/lang/String;

    move v0, v1

    .line 179
    goto :goto_0

    .line 182
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/nf;->cqq:I

    move v0, v1

    .line 183
    goto :goto_0

    .line 186
    :pswitch_5
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nf;->Tu:Ljava/lang/String;

    move v0, v1

    .line 187
    goto :goto_0

    .line 190
    :pswitch_6
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nf;->Tv:Ljava/lang/String;

    move v0, v1

    .line 191
    goto :goto_0

    .line 194
    :pswitch_7
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nf;->cqr:Ljava/lang/String;

    move v0, v1

    .line 195
    goto :goto_0

    .line 198
    :pswitch_8
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/nf;->cqs:I

    move v0, v1

    .line 199
    goto :goto_0

    .line 202
    :pswitch_9
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nf;->cqt:Ljava/lang/String;

    move v0, v1

    .line 203
    goto :goto_0

    .line 206
    :pswitch_a
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 207
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 208
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 209
    new-instance v5, Lcom/tencent/mm/protocal/a/fo;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/fo;-><init>()V

    .line 210
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/nf;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 213
    :goto_2
    if-eqz v0, :cond_0

    .line 214
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/nf;->a(La/a/a/a/a;)I

    move-result v0

    .line 215
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/fo;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/fo;I)Z

    move-result v0

    goto :goto_2

    .line 217
    :cond_0
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/nf;->fNV:Lcom/tencent/mm/protocal/a/fo;

    .line 207
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 221
    goto :goto_0

    .line 224
    :pswitch_b
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/nf;->cqu:I

    move v0, v1

    .line 225
    goto/16 :goto_0

    .line 228
    :pswitch_c
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/nf;->cqv:I

    move v0, v1

    .line 229
    goto/16 :goto_0

    .line 232
    :pswitch_d
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nf;->cqw:Ljava/lang/String;

    move v0, v1

    .line 233
    goto/16 :goto_0

    .line 236
    :pswitch_e
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 237
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 238
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 239
    new-instance v5, Lcom/tencent/mm/protocal/a/vp;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/vp;-><init>()V

    .line 240
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/nf;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 243
    :goto_4
    if-eqz v0, :cond_2

    .line 244
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/nf;->a(La/a/a/a/a;)I

    move-result v0

    .line 245
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/vp;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/vp;I)Z

    move-result v0

    goto :goto_4

    .line 247
    :cond_2
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/nf;->fNv:Lcom/tencent/mm/protocal/a/vp;

    .line 237
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    .line 251
    goto/16 :goto_0

    .line 254
    :pswitch_f
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nf;->cqx:Ljava/lang/String;

    move v0, v1

    .line 255
    goto/16 :goto_0

    .line 258
    :pswitch_10
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nf;->cqy:Ljava/lang/String;

    move v0, v1

    .line 259
    goto/16 :goto_0

    .line 262
    :pswitch_11
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 263
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_5
    if-ge v2, v4, :cond_5

    .line 264
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 265
    new-instance v5, Lcom/tencent/mm/protocal/a/dl;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/dl;-><init>()V

    .line 266
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/nf;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 269
    :goto_6
    if-eqz v0, :cond_4

    .line 270
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/nf;->a(La/a/a/a/a;)I

    move-result v0

    .line 271
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/dl;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/dl;I)Z

    move-result v0

    goto :goto_6

    .line 273
    :cond_4
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/nf;->fNw:Lcom/tencent/mm/protocal/a/dl;

    .line 263
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_5
    move v0, v1

    .line 277
    goto/16 :goto_0

    .line 280
    :pswitch_12
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nf;->fDg:Ljava/lang/String;

    move v0, v1

    .line 281
    goto/16 :goto_0

    .line 284
    :pswitch_13
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/nf;->fDh:Ljava/lang/String;

    move v0, v1

    .line 285
    goto/16 :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->fBM:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->fBM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->fNU:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->fNU:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->cqp:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 108
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->cqp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 110
    :cond_2
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/nf;->cqq:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 111
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->Tu:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 112
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->Tu:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->Tv:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 115
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->Tv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->cqr:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 118
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->cqr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 120
    :cond_5
    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/protocal/a/nf;->cqs:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 121
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->cqt:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 122
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->cqt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->fNV:Lcom/tencent/mm/protocal/a/fo;

    if-eqz v0, :cond_7

    .line 125
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->fNV:Lcom/tencent/mm/protocal/a/fo;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/fo;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 126
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->fNV:Lcom/tencent/mm/protocal/a/fo;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/fo;->a(La/a/a/c/a;)V

    .line 128
    :cond_7
    const/16 v0, 0xb

    iget v1, p0, Lcom/tencent/mm/protocal/a/nf;->cqu:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 129
    const/16 v0, 0xc

    iget v1, p0, Lcom/tencent/mm/protocal/a/nf;->cqv:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 130
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->cqw:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 131
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->cqw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 133
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->fNv:Lcom/tencent/mm/protocal/a/vp;

    if-eqz v0, :cond_9

    .line 134
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/vp;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 135
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/vp;->a(La/a/a/c/a;)V

    .line 137
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->cqx:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 138
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->cqx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 140
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->cqy:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 141
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->cqy:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 143
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->fNw:Lcom/tencent/mm/protocal/a/dl;

    if-eqz v0, :cond_c

    .line 144
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/dl;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 145
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/dl;->a(La/a/a/c/a;)V

    .line 147
    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->fDg:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 148
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->fDg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 150
    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nf;->fDh:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 151
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->fDh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 153
    :cond_e
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/nf;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/nf;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/nf;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/nf;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/nf;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->fBM:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 49
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->fBM:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->fNU:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 52
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nf;->fNU:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->cqp:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 55
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nf;->cqp:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :cond_2
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/nf;->cqq:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->Tu:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 59
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nf;->Tu:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->Tv:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 62
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nf;->Tv:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->cqr:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 65
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nf;->cqr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_5
    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/protocal/a/nf;->cqs:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->cqt:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 69
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nf;->cqt:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->fNV:Lcom/tencent/mm/protocal/a/fo;

    if-eqz v1, :cond_7

    .line 72
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nf;->fNV:Lcom/tencent/mm/protocal/a/fo;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/fo;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_7
    const/16 v1, 0xb

    iget v2, p0, Lcom/tencent/mm/protocal/a/nf;->cqu:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    const/16 v1, 0xc

    iget v2, p0, Lcom/tencent/mm/protocal/a/nf;->cqv:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->cqw:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 77
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nf;->cqw:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->fNv:Lcom/tencent/mm/protocal/a/vp;

    if-eqz v1, :cond_9

    .line 80
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nf;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/vp;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_9
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->cqx:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 83
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nf;->cqx:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->cqy:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 86
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nf;->cqy:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_b
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->fNw:Lcom/tencent/mm/protocal/a/dl;

    if-eqz v1, :cond_c

    .line 89
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nf;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/dl;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_c
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->fDg:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 92
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nf;->fDg:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_d
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nf;->fDh:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 95
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nf;->fDh:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_e
    return v0
.end method
