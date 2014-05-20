.class public final Lcom/tencent/mm/protocal/a/np;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public Tu:Ljava/lang/String;

.field public Tv:Ljava/lang/String;

.field public cqq:I

.field public cqr:Ljava/lang/String;

.field public cqs:I

.field public cqx:Ljava/lang/String;

.field public fEG:Lcom/tencent/mm/protocal/a/rw;

.field public fEH:Lcom/tencent/mm/protocal/a/rw;

.field public fEL:Lcom/tencent/mm/protocal/a/rw;

.field public fEp:I

.field public fNa:Lcom/tencent/mm/protocal/a/rw;

.field public fNp:I

.field public fNq:Ljava/lang/String;

.field public fON:I

.field public fOO:Lcom/tencent/mm/protocal/a/rw;

.field public fOP:Lcom/tencent/mm/protocal/a/rw;

.field public fOQ:Lcom/tencent/mm/protocal/a/rw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/np;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 158
    packed-switch p2, :pswitch_data_0

    .line 326
    :goto_0
    :pswitch_0
    return v0

    .line 160
    :pswitch_1
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 161
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 162
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 163
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 164
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/np;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 167
    :goto_2
    if-eqz v0, :cond_0

    .line 168
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/np;->a(La/a/a/a/a;)I

    move-result v0

    .line 169
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_2

    .line 171
    :cond_0
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    .line 161
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 175
    goto :goto_0

    .line 178
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/np;->fON:I

    move v0, v1

    .line 179
    goto :goto_0

    .line 182
    :pswitch_3
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 183
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 184
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 185
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 186
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/np;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 189
    :goto_4
    if-eqz v0, :cond_2

    .line 190
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/np;->a(La/a/a/a/a;)I

    move-result v0

    .line 191
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_4

    .line 193
    :cond_2
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/np;->fNa:Lcom/tencent/mm/protocal/a/rw;

    .line 183
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    .line 197
    goto :goto_0

    .line 200
    :pswitch_4
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 201
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_5
    if-ge v2, v4, :cond_5

    .line 202
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 203
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 204
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/np;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 207
    :goto_6
    if-eqz v0, :cond_4

    .line 208
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/np;->a(La/a/a/a/a;)I

    move-result v0

    .line 209
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_6

    .line 211
    :cond_4
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/np;->fEG:Lcom/tencent/mm/protocal/a/rw;

    .line 201
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_5
    move v0, v1

    .line 215
    goto/16 :goto_0

    .line 218
    :pswitch_5
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 219
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_7
    if-ge v2, v4, :cond_7

    .line 220
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 221
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 222
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/np;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 225
    :goto_8
    if-eqz v0, :cond_6

    .line 226
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/np;->a(La/a/a/a/a;)I

    move-result v0

    .line 227
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_8

    .line 229
    :cond_6
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/np;->fEH:Lcom/tencent/mm/protocal/a/rw;

    .line 219
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_7
    move v0, v1

    .line 233
    goto/16 :goto_0

    .line 236
    :pswitch_6
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/np;->cqq:I

    move v0, v1

    .line 237
    goto/16 :goto_0

    .line 240
    :pswitch_7
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 241
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_9
    if-ge v2, v4, :cond_9

    .line 242
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 243
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 244
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/np;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 247
    :goto_a
    if-eqz v0, :cond_8

    .line 248
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/np;->a(La/a/a/a/a;)I

    move-result v0

    .line 249
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_a

    .line 251
    :cond_8
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/np;->fOO:Lcom/tencent/mm/protocal/a/rw;

    .line 241
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_9
    move v0, v1

    .line 255
    goto/16 :goto_0

    .line 258
    :pswitch_8
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 259
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_b
    if-ge v2, v4, :cond_b

    .line 260
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 261
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 262
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/np;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 265
    :goto_c
    if-eqz v0, :cond_a

    .line 266
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/np;->a(La/a/a/a/a;)I

    move-result v0

    .line 267
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_c

    .line 269
    :cond_a
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/np;->fOP:Lcom/tencent/mm/protocal/a/rw;

    .line 259
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_b
    move v0, v1

    .line 273
    goto/16 :goto_0

    .line 276
    :pswitch_9
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 277
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_d
    if-ge v2, v4, :cond_d

    .line 278
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 279
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 280
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/np;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 283
    :goto_e
    if-eqz v0, :cond_c

    .line 284
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/np;->a(La/a/a/a/a;)I

    move-result v0

    .line 285
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_e

    .line 287
    :cond_c
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/np;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    .line 277
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    :cond_d
    move v0, v1

    .line 291
    goto/16 :goto_0

    .line 294
    :pswitch_a
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/np;->fEp:I

    move v0, v1

    .line 295
    goto/16 :goto_0

    .line 298
    :pswitch_b
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/np;->Tu:Ljava/lang/String;

    move v0, v1

    .line 299
    goto/16 :goto_0

    .line 302
    :pswitch_c
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/np;->Tv:Ljava/lang/String;

    move v0, v1

    .line 303
    goto/16 :goto_0

    .line 306
    :pswitch_d
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/np;->cqr:Ljava/lang/String;

    move v0, v1

    .line 307
    goto/16 :goto_0

    .line 310
    :pswitch_e
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/np;->cqs:I

    move v0, v1

    .line 311
    goto/16 :goto_0

    .line 314
    :pswitch_f
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/np;->fNp:I

    move v0, v1

    .line 315
    goto/16 :goto_0

    .line 318
    :pswitch_10
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/np;->fNq:Ljava/lang/String;

    move v0, v1

    .line 319
    goto/16 :goto_0

    .line 322
    :pswitch_11
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/np;->cqx:Ljava/lang/String;

    move v0, v1

    .line 323
    goto/16 :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
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
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fNa:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fEG:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fEH:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fOO:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fOP:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    if-nez v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    .line 93
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 96
    :cond_2
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/np;->fON:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 97
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fNa:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_3

    .line 98
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 99
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fEG:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_4

    .line 102
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->fEG:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 103
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fEG:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fEH:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_5

    .line 106
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 107
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 109
    :cond_5
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/np;->cqq:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 110
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fOO:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_6

    .line 111
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->fOO:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 112
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fOO:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 114
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fOP:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_7

    .line 115
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->fOP:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 116
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fOP:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 118
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_8

    .line 119
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 120
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 122
    :cond_8
    const/16 v0, 0xc

    iget v1, p0, Lcom/tencent/mm/protocal/a/np;->fEp:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 123
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->Tu:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 124
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->Tu:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 126
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->Tv:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 127
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->Tv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 129
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->cqr:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 130
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->cqr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 132
    :cond_b
    const/16 v0, 0x10

    iget v1, p0, Lcom/tencent/mm/protocal/a/np;->cqs:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 133
    const/16 v0, 0x11

    iget v1, p0, Lcom/tencent/mm/protocal/a/np;->fNp:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 134
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fNq:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 135
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->fNq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 137
    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->cqx:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 138
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->cqx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 140
    :cond_d
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/np;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/np;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/np;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/np;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/np;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fNa:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fEG:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fEH:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fOO:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fOP:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/np;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object p0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_0

    .line 45
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->fEL:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 47
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/np;->fON:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->fNa:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_1

    .line 49
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/np;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->fEG:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_2

    .line 52
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/np;->fEG:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->fEH:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_3

    .line 55
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/np;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :cond_3
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/np;->cqq:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->fOO:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_4

    .line 59
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/np;->fOO:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->fOP:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_5

    .line 62
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/np;->fOP:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_6

    .line 65
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/np;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_6
    const/16 v1, 0xc

    iget v2, p0, Lcom/tencent/mm/protocal/a/np;->fEp:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->Tu:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 69
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/np;->Tu:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->Tv:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 72
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/np;->Tv:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->cqr:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 75
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/np;->cqr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_9
    const/16 v1, 0x10

    iget v2, p0, Lcom/tencent/mm/protocal/a/np;->cqs:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    const/16 v1, 0x11

    iget v2, p0, Lcom/tencent/mm/protocal/a/np;->fNp:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->fNq:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 80
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/np;->fNq:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/np;->cqx:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 83
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/np;->cqx:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_b
    return v0
.end method
