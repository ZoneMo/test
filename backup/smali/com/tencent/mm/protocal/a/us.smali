.class public final Lcom/tencent/mm/protocal/a/us;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fBM:Ljava/lang/String;

.field public fNU:Ljava/lang/String;

.field public fRc:I

.field public fVA:I

.field public fVB:I

.field public fVC:Ljava/util/LinkedList;

.field public fVD:I

.field public fVE:I

.field public fVF:Ljava/util/LinkedList;

.field public fVG:I

.field public fVH:I

.field public fVI:Ljava/lang/String;

.field public fVJ:J

.field public fVk:I

.field public fVl:J

.field public fVv:Lcom/tencent/mm/protocal/a/rv;

.field public fVw:I

.field public fVx:I

.field public fVy:I

.field public fVz:Ljava/util/LinkedList;

.field public fzG:Ljava/util/LinkedList;

.field public fzy:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/us;->fVz:Ljava/util/LinkedList;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/us;->fVC:Ljava/util/LinkedList;

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/us;->fVF:Ljava/util/LinkedList;

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/us;->fzG:Ljava/util/LinkedList;

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/us;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 144
    packed-switch p2, :pswitch_data_0

    .line 304
    :goto_0
    return v0

    .line 146
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPW()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/tencent/mm/protocal/a/us;->fVl:J

    move v0, v1

    .line 147
    goto :goto_0

    .line 150
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/us;->fBM:Ljava/lang/String;

    move v0, v1

    .line 151
    goto :goto_0

    .line 154
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/us;->fNU:Ljava/lang/String;

    move v0, v1

    .line 155
    goto :goto_0

    .line 158
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/us;->fzy:I

    move v0, v1

    .line 159
    goto :goto_0

    .line 162
    :pswitch_4
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 163
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 164
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 165
    new-instance v5, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    .line 166
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/us;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 169
    :goto_2
    if-eqz v0, :cond_0

    .line 170
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/us;->a(La/a/a/a/a;)I

    move-result v0

    .line 171
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rv;I)Z

    move-result v0

    goto :goto_2

    .line 173
    :cond_0
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/us;->fVv:Lcom/tencent/mm/protocal/a/rv;

    .line 163
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 177
    goto :goto_0

    .line 180
    :pswitch_5
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/us;->fVw:I

    move v0, v1

    .line 181
    goto :goto_0

    .line 184
    :pswitch_6
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/us;->fVx:I

    move v0, v1

    .line 185
    goto :goto_0

    .line 188
    :pswitch_7
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/us;->fVy:I

    move v0, v1

    .line 189
    goto :goto_0

    .line 192
    :pswitch_8
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 193
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 194
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 195
    new-instance v5, Lcom/tencent/mm/protocal/a/um;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/um;-><init>()V

    .line 196
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/us;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 199
    :goto_4
    if-eqz v0, :cond_2

    .line 200
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/us;->a(La/a/a/a/a;)I

    move-result v0

    .line 201
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/um;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/um;I)Z

    move-result v0

    goto :goto_4

    .line 203
    :cond_2
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/us;->fVz:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    .line 207
    goto/16 :goto_0

    .line 210
    :pswitch_9
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/us;->fVA:I

    move v0, v1

    .line 211
    goto/16 :goto_0

    .line 214
    :pswitch_a
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/us;->fVB:I

    move v0, v1

    .line 215
    goto/16 :goto_0

    .line 218
    :pswitch_b
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 219
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_5
    if-ge v2, v4, :cond_5

    .line 220
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 221
    new-instance v5, Lcom/tencent/mm/protocal/a/um;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/um;-><init>()V

    .line 222
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/us;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 225
    :goto_6
    if-eqz v0, :cond_4

    .line 226
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/us;->a(La/a/a/a/a;)I

    move-result v0

    .line 227
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/um;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/um;I)Z

    move-result v0

    goto :goto_6

    .line 229
    :cond_4
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/us;->fVC:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_5
    move v0, v1

    .line 233
    goto/16 :goto_0

    .line 236
    :pswitch_c
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/us;->fVD:I

    move v0, v1

    .line 237
    goto/16 :goto_0

    .line 240
    :pswitch_d
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/us;->fVE:I

    move v0, v1

    .line 241
    goto/16 :goto_0

    .line 244
    :pswitch_e
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 245
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_7
    if-ge v2, v4, :cond_7

    .line 246
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 247
    new-instance v5, Lcom/tencent/mm/protocal/a/um;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/um;-><init>()V

    .line 248
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/us;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 251
    :goto_8
    if-eqz v0, :cond_6

    .line 252
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/us;->a(La/a/a/a/a;)I

    move-result v0

    .line 253
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/um;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/um;I)Z

    move-result v0

    goto :goto_8

    .line 255
    :cond_6
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/us;->fVF:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_7
    move v0, v1

    .line 259
    goto/16 :goto_0

    .line 262
    :pswitch_f
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/us;->fVG:I

    move v0, v1

    .line 263
    goto/16 :goto_0

    .line 266
    :pswitch_10
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/us;->fVH:I

    move v0, v1

    .line 267
    goto/16 :goto_0

    .line 270
    :pswitch_11
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/us;->fRc:I

    move v0, v1

    .line 271
    goto/16 :goto_0

    .line 274
    :pswitch_12
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 275
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_9
    if-ge v2, v4, :cond_9

    .line 276
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 277
    new-instance v5, Lcom/tencent/mm/protocal/a/ur;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/ur;-><init>()V

    .line 278
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/us;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 281
    :goto_a
    if-eqz v0, :cond_8

    .line 282
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/us;->a(La/a/a/a/a;)I

    move-result v0

    .line 283
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/ur;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ur;I)Z

    move-result v0

    goto :goto_a

    .line 285
    :cond_8
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/us;->fzG:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 275
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_9
    move v0, v1

    .line 289
    goto/16 :goto_0

    .line 292
    :pswitch_13
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/us;->fVk:I

    move v0, v1

    .line 293
    goto/16 :goto_0

    .line 296
    :pswitch_14
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/us;->fVI:Ljava/lang/String;

    move v0, v1

    .line 297
    goto/16 :goto_0

    .line 300
    :pswitch_15
    invoke-virtual {p0}, La/a/a/a/a;->aPW()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/tencent/mm/protocal/a/us;->fVJ:J

    move v0, v1

    .line 301
    goto/16 :goto_0

    .line 144
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
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 88
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/us;->fVv:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/tencent/mm/protocal/a/us;->fVl:J

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->k(IJ)V

    .line 92
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/us;->fBM:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 93
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/us;->fBM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/us;->fNU:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 96
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/us;->fNU:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 98
    :cond_2
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/us;->fzy:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 99
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/us;->fVv:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_3

    .line 100
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/us;->fVv:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/us;->fVv:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 103
    :cond_3
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/us;->fVw:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 104
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/us;->fVx:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 105
    iget v0, p0, Lcom/tencent/mm/protocal/a/us;->fVy:I

    invoke-virtual {p1, v3, v0}, La/a/a/c/a;->by(II)V

    .line 106
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/us;->fVz:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v3, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 107
    const/16 v0, 0xa

    iget v1, p0, Lcom/tencent/mm/protocal/a/us;->fVA:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 108
    const/16 v0, 0xb

    iget v1, p0, Lcom/tencent/mm/protocal/a/us;->fVB:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 109
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/us;->fVC:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v3, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 110
    const/16 v0, 0xd

    iget v1, p0, Lcom/tencent/mm/protocal/a/us;->fVD:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 111
    const/16 v0, 0xe

    iget v1, p0, Lcom/tencent/mm/protocal/a/us;->fVE:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 112
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/us;->fVF:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v3, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 113
    const/16 v0, 0x10

    iget v1, p0, Lcom/tencent/mm/protocal/a/us;->fVG:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 114
    const/16 v0, 0x11

    iget v1, p0, Lcom/tencent/mm/protocal/a/us;->fVH:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 115
    const/16 v0, 0x12

    iget v1, p0, Lcom/tencent/mm/protocal/a/us;->fRc:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 116
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/us;->fzG:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v3, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 117
    const/16 v0, 0x14

    iget v1, p0, Lcom/tencent/mm/protocal/a/us;->fVk:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 118
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/us;->fVI:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 119
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/us;->fVI:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 121
    :cond_4
    const/16 v0, 0x16

    iget-wide v1, p0, Lcom/tencent/mm/protocal/a/us;->fVJ:J

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->k(IJ)V

    .line 122
    return-void
.end method

.method public final bU([B)Lcom/tencent/mm/protocal/a/us;
    .locals 2
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/us;->fVz:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 125
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/us;->fVC:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 126
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/us;->fVF:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 127
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/us;->fzG:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 128
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/us;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 129
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/us;->a(La/a/a/a/a;)I

    move-result v0

    .line 131
    :goto_0
    if-lez v0, :cond_1

    .line 132
    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/us;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/us;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    .line 135
    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/us;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/us;->fVv:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_2

    .line 139
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_2
    return-object p0
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/us;->bU([B)Lcom/tencent/mm/protocal/a/us;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 53
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/tencent/mm/protocal/a/us;->fVl:J

    invoke-static {v0, v1, v2}, La/a/a/a;->i(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 55
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/us;->fBM:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 56
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/us;->fBM:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/us;->fNU:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 59
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/us;->fNU:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_1
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/us;->fzy:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/us;->fVv:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_2

    .line 63
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/us;->fVv:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_2
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/us;->fVw:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/us;->fVx:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    iget v1, p0, Lcom/tencent/mm/protocal/a/us;->fVy:I

    invoke-static {v3, v1}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/us;->fVz:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    const/16 v1, 0xa

    iget v2, p0, Lcom/tencent/mm/protocal/a/us;->fVA:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    const/16 v1, 0xb

    iget v2, p0, Lcom/tencent/mm/protocal/a/us;->fVB:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/us;->fVC:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/protocal/a/us;->fVD:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    const/16 v1, 0xe

    iget v2, p0, Lcom/tencent/mm/protocal/a/us;->fVE:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/us;->fVF:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    const/16 v1, 0x10

    iget v2, p0, Lcom/tencent/mm/protocal/a/us;->fVG:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    const/16 v1, 0x11

    iget v2, p0, Lcom/tencent/mm/protocal/a/us;->fVH:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    const/16 v1, 0x12

    iget v2, p0, Lcom/tencent/mm/protocal/a/us;->fRc:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/us;->fzG:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    const/16 v1, 0x14

    iget v2, p0, Lcom/tencent/mm/protocal/a/us;->fVk:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/us;->fVI:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 81
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/us;->fVI:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_3
    const/16 v1, 0x16

    iget-wide v2, p0, Lcom/tencent/mm/protocal/a/us;->fVJ:J

    invoke-static {v1, v2, v3}, La/a/a/a;->i(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    return v0
.end method
