.class public final Lcom/tencent/mm/protocal/a/ra;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fAe:Ljava/lang/String;

.field public fJk:I

.field public fTn:Ljava/lang/String;

.field public fTo:Ljava/lang/String;

.field public fTp:I

.field public fTq:Ljava/util/LinkedList;

.field public fTr:Ljava/lang/String;

.field public fTs:Ljava/lang/String;

.field public fTt:Ljava/lang/String;

.field public fTu:Ljava/lang/String;

.field public fTv:Ljava/lang/String;

.field public fTw:Ljava/lang/String;

.field public fyR:Ljava/lang/String;

.field public fyS:Ljava/lang/String;

.field public fyT:Ljava/lang/String;

.field public fyU:Ljava/lang/String;

.field public fyV:Ljava/lang/String;

.field public fyW:Ljava/lang/String;

.field public fyX:Ljava/lang/String;

.field public fyY:Ljava/lang/String;

.field public fyZ:Ljava/lang/String;

.field public fza:Lcom/tencent/mm/protocal/a/aal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fTq:Ljava/util/LinkedList;

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ra;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 195
    packed-switch p2, :pswitch_data_0

    .line 313
    :goto_0
    return v0

    .line 197
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fyR:Ljava/lang/String;

    move v0, v1

    .line 198
    goto :goto_0

    .line 201
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fyV:Ljava/lang/String;

    move v0, v1

    .line 202
    goto :goto_0

    .line 205
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fyW:Ljava/lang/String;

    move v0, v1

    .line 206
    goto :goto_0

    .line 209
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fTn:Ljava/lang/String;

    move v0, v1

    .line 210
    goto :goto_0

    .line 213
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fyT:Ljava/lang/String;

    move v0, v1

    .line 214
    goto :goto_0

    .line 217
    :pswitch_5
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fyS:Ljava/lang/String;

    move v0, v1

    .line 218
    goto :goto_0

    .line 221
    :pswitch_6
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fTo:Ljava/lang/String;

    move v0, v1

    .line 222
    goto :goto_0

    .line 225
    :pswitch_7
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ra;->fTp:I

    move v0, v1

    .line 226
    goto :goto_0

    .line 229
    :pswitch_8
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 230
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 231
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 232
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 233
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ra;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 236
    :goto_2
    if-eqz v0, :cond_0

    .line 237
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ra;->a(La/a/a/a/a;)I

    move-result v0

    .line 238
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_2

    .line 240
    :cond_0
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fTq:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 244
    goto :goto_0

    .line 247
    :pswitch_9
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fyX:Ljava/lang/String;

    move v0, v1

    .line 248
    goto :goto_0

    .line 251
    :pswitch_a
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fTr:Ljava/lang/String;

    move v0, v1

    .line 252
    goto/16 :goto_0

    .line 255
    :pswitch_b
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fTs:Ljava/lang/String;

    move v0, v1

    .line 256
    goto/16 :goto_0

    .line 259
    :pswitch_c
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ra;->fJk:I

    move v0, v1

    .line 260
    goto/16 :goto_0

    .line 263
    :pswitch_d
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fAe:Ljava/lang/String;

    move v0, v1

    .line 264
    goto/16 :goto_0

    .line 267
    :pswitch_e
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fyU:Ljava/lang/String;

    move v0, v1

    .line 268
    goto/16 :goto_0

    .line 271
    :pswitch_f
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fyY:Ljava/lang/String;

    move v0, v1

    .line 272
    goto/16 :goto_0

    .line 275
    :pswitch_10
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fTt:Ljava/lang/String;

    move v0, v1

    .line 276
    goto/16 :goto_0

    .line 279
    :pswitch_11
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fTu:Ljava/lang/String;

    move v0, v1

    .line 280
    goto/16 :goto_0

    .line 283
    :pswitch_12
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fyZ:Ljava/lang/String;

    move v0, v1

    .line 284
    goto/16 :goto_0

    .line 287
    :pswitch_13
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fTv:Ljava/lang/String;

    move v0, v1

    .line 288
    goto/16 :goto_0

    .line 291
    :pswitch_14
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ra;->fTw:Ljava/lang/String;

    move v0, v1

    .line 292
    goto/16 :goto_0

    .line 295
    :pswitch_15
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 296
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 297
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 298
    new-instance v5, Lcom/tencent/mm/protocal/a/aal;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/aal;-><init>()V

    .line 299
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ra;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 302
    :goto_4
    if-eqz v0, :cond_2

    .line 303
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ra;->a(La/a/a/a/a;)I

    move-result v0

    .line 304
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/aal;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/aal;I)Z

    move-result v0

    goto :goto_4

    .line 306
    :cond_2
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ra;->fza:Lcom/tencent/mm/protocal/a/aal;

    .line 296
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    .line 310
    goto/16 :goto_0

    .line 195
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
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 118
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fyR:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyR:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fyV:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 122
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyV:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fyW:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 125
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyW:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fTn:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 128
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fyT:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 131
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyT:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fyS:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 134
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyS:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fTo:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 137
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 139
    :cond_6
    iget v0, p0, Lcom/tencent/mm/protocal/a/ra;->fTp:I

    invoke-virtual {p1, v2, v0}, La/a/a/c/a;->by(II)V

    .line 140
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTq:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 141
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fyX:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 142
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyX:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fTr:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 145
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 147
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fTs:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 148
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTs:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 150
    :cond_9
    const/16 v0, 0xd

    iget v1, p0, Lcom/tencent/mm/protocal/a/ra;->fJk:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 151
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fAe:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 152
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fAe:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 154
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fyU:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 155
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyU:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 157
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fyY:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 158
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyY:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 160
    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fTt:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 161
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 163
    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fTu:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 164
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTu:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 166
    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fyZ:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 167
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyZ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 169
    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fTv:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 170
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 172
    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fTw:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 173
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 175
    :cond_11
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fza:Lcom/tencent/mm/protocal/a/aal;

    if-eqz v0, :cond_12

    .line 176
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fza:Lcom/tencent/mm/protocal/a/aal;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/aal;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 177
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fza:Lcom/tencent/mm/protocal/a/aal;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/aal;->a(La/a/a/c/a;)V

    .line 179
    :cond_12
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ra;->fTq:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/ra;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/ra;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/ra;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ra;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/ra;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final ns()I
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 53
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyR:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 55
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyR:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyV:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 58
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fyV:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyW:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 61
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fyW:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTn:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 64
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fTn:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyT:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 67
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fyT:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyS:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 70
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fyS:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTo:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 73
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fTo:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_6
    iget v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTp:I

    invoke-static {v3, v1}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fTq:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyX:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 78
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fyX:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTr:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 81
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fTr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTs:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 84
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fTs:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_9
    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/protocal/a/ra;->fJk:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fAe:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 88
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fAe:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyU:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 91
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fyU:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_b
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyY:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 94
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fyY:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_c
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTt:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 97
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fTt:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_d
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTu:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 100
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fTu:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_e
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fyZ:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 103
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fyZ:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_f
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTv:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 106
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fTv:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_10
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fTw:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 109
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fTw:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_11
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ra;->fza:Lcom/tencent/mm/protocal/a/aal;

    if-eqz v1, :cond_12

    .line 112
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ra;->fza:Lcom/tencent/mm/protocal/a/aal;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/aal;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_12
    return v0
.end method
