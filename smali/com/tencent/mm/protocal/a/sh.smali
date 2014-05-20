.class public final Lcom/tencent/mm/protocal/a/sh;
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

.field public fDg:Ljava/lang/String;

.field public fDh:Ljava/lang/String;

.field public fEG:Lcom/tencent/mm/protocal/a/rw;

.field public fEH:Lcom/tencent/mm/protocal/a/rw;

.field public fEI:Lcom/tencent/mm/protocal/a/rw;

.field public fNa:Lcom/tencent/mm/protocal/a/rw;

.field public fNp:I

.field public fNq:Ljava/lang/String;

.field public fNr:Ljava/lang/String;

.field public fNs:Ljava/lang/String;

.field public fNt:I

.field public fNv:Lcom/tencent/mm/protocal/a/vp;

.field public fNw:Lcom/tencent/mm/protocal/a/dl;

.field public fzx:Lcom/tencent/mm/protocal/a/rv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/sh;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 218
    packed-switch p2, :pswitch_data_0

    .line 418
    :goto_0
    return v0

    .line 220
    :pswitch_0
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 222
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 223
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 224
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/sh;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 227
    :goto_2
    if-eqz v0, :cond_0

    .line 228
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/sh;->a(La/a/a/a/a;)I

    move-result v0

    .line 229
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_2

    .line 231
    :cond_0
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/sh;->fEI:Lcom/tencent/mm/protocal/a/rw;

    .line 221
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 235
    goto :goto_0

    .line 238
    :pswitch_1
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 239
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 240
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 241
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 242
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/sh;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 245
    :goto_4
    if-eqz v0, :cond_2

    .line 246
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/sh;->a(La/a/a/a/a;)I

    move-result v0

    .line 247
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_4

    .line 249
    :cond_2
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/sh;->fNa:Lcom/tencent/mm/protocal/a/rw;

    .line 239
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    .line 253
    goto :goto_0

    .line 256
    :pswitch_2
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 257
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_5
    if-ge v2, v4, :cond_5

    .line 258
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 259
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 260
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/sh;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 263
    :goto_6
    if-eqz v0, :cond_4

    .line 264
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/sh;->a(La/a/a/a/a;)I

    move-result v0

    .line 265
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_6

    .line 267
    :cond_4
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/sh;->fEG:Lcom/tencent/mm/protocal/a/rw;

    .line 257
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_5
    move v0, v1

    .line 271
    goto/16 :goto_0

    .line 274
    :pswitch_3
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 275
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_7
    if-ge v2, v4, :cond_7

    .line 276
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 277
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 278
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/sh;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 281
    :goto_8
    if-eqz v0, :cond_6

    .line 282
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/sh;->a(La/a/a/a/a;)I

    move-result v0

    .line 283
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_8

    .line 285
    :cond_6
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/sh;->fEH:Lcom/tencent/mm/protocal/a/rw;

    .line 275
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_7
    move v0, v1

    .line 289
    goto/16 :goto_0

    .line 292
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/sh;->cqq:I

    move v0, v1

    .line 293
    goto/16 :goto_0

    .line 296
    :pswitch_5
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 297
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_9
    if-ge v2, v4, :cond_9

    .line 298
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 299
    new-instance v5, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    .line 300
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/sh;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 303
    :goto_a
    if-eqz v0, :cond_8

    .line 304
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/sh;->a(La/a/a/a/a;)I

    move-result v0

    .line 305
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rv;I)Z

    move-result v0

    goto :goto_a

    .line 307
    :cond_8
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/sh;->fzx:Lcom/tencent/mm/protocal/a/rv;

    .line 297
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_9
    move v0, v1

    .line 311
    goto/16 :goto_0

    .line 314
    :pswitch_6
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/sh;->Tu:Ljava/lang/String;

    move v0, v1

    .line 315
    goto/16 :goto_0

    .line 318
    :pswitch_7
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/sh;->Tv:Ljava/lang/String;

    move v0, v1

    .line 319
    goto/16 :goto_0

    .line 322
    :pswitch_8
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/sh;->cqr:Ljava/lang/String;

    move v0, v1

    .line 323
    goto/16 :goto_0

    .line 326
    :pswitch_9
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/sh;->cqs:I

    move v0, v1

    .line 327
    goto/16 :goto_0

    .line 330
    :pswitch_a
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/sh;->fNp:I

    move v0, v1

    .line 331
    goto/16 :goto_0

    .line 334
    :pswitch_b
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/sh;->fNq:Ljava/lang/String;

    move v0, v1

    .line 335
    goto/16 :goto_0

    .line 338
    :pswitch_c
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/sh;->fNr:Ljava/lang/String;

    move v0, v1

    .line 339
    goto/16 :goto_0

    .line 342
    :pswitch_d
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/sh;->cqt:Ljava/lang/String;

    move v0, v1

    .line 343
    goto/16 :goto_0

    .line 346
    :pswitch_e
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/sh;->fNs:Ljava/lang/String;

    move v0, v1

    .line 347
    goto/16 :goto_0

    .line 350
    :pswitch_f
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/sh;->fNt:I

    move v0, v1

    .line 351
    goto/16 :goto_0

    .line 354
    :pswitch_10
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/sh;->cqv:I

    move v0, v1

    .line 355
    goto/16 :goto_0

    .line 358
    :pswitch_11
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/sh;->cqu:I

    move v0, v1

    .line 359
    goto/16 :goto_0

    .line 362
    :pswitch_12
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/sh;->cqw:Ljava/lang/String;

    move v0, v1

    .line 363
    goto/16 :goto_0

    .line 366
    :pswitch_13
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 367
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_b
    if-ge v2, v4, :cond_b

    .line 368
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 369
    new-instance v5, Lcom/tencent/mm/protocal/a/vp;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/vp;-><init>()V

    .line 370
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/sh;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 373
    :goto_c
    if-eqz v0, :cond_a

    .line 374
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/sh;->a(La/a/a/a/a;)I

    move-result v0

    .line 375
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/vp;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/vp;I)Z

    move-result v0

    goto :goto_c

    .line 377
    :cond_a
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/sh;->fNv:Lcom/tencent/mm/protocal/a/vp;

    .line 367
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_b
    move v0, v1

    .line 381
    goto/16 :goto_0

    .line 384
    :pswitch_14
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/sh;->cqx:Ljava/lang/String;

    move v0, v1

    .line 385
    goto/16 :goto_0

    .line 388
    :pswitch_15
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/sh;->cqy:Ljava/lang/String;

    move v0, v1

    .line 389
    goto/16 :goto_0

    .line 392
    :pswitch_16
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 393
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_d
    if-ge v2, v4, :cond_d

    .line 394
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 395
    new-instance v5, Lcom/tencent/mm/protocal/a/dl;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/dl;-><init>()V

    .line 396
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/sh;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 399
    :goto_e
    if-eqz v0, :cond_c

    .line 400
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/sh;->a(La/a/a/a/a;)I

    move-result v0

    .line 401
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/dl;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/dl;I)Z

    move-result v0

    goto :goto_e

    .line 403
    :cond_c
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/sh;->fNw:Lcom/tencent/mm/protocal/a/dl;

    .line 393
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    :cond_d
    move v0, v1

    .line 407
    goto/16 :goto_0

    .line 410
    :pswitch_17
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/sh;->fDg:Ljava/lang/String;

    move v0, v1

    .line 411
    goto/16 :goto_0

    .line 414
    :pswitch_18
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/sh;->fDh:Ljava/lang/String;

    move v0, v1

    .line 415
    goto/16 :goto_0

    .line 218
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
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fEI:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fNa:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fEG:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fEH:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fzx:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_1

    .line 128
    :cond_0
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fEI:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    .line 131
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 132
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fNa:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_3

    .line 135
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 136
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fEG:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_4

    .line 139
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fEG:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 140
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fEG:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fEH:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_5

    .line 143
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 144
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 146
    :cond_5
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/sh;->cqq:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 147
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fzx:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_6

    .line 148
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fzx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 149
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fzx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 151
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->Tu:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 152
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->Tu:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 154
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->Tv:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 155
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->Tv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 157
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->cqr:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 158
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->cqr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 160
    :cond_9
    const/16 v0, 0xa

    iget v1, p0, Lcom/tencent/mm/protocal/a/sh;->cqs:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 161
    const/16 v0, 0xb

    iget v1, p0, Lcom/tencent/mm/protocal/a/sh;->fNp:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 162
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fNq:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 163
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fNq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 165
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fNr:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 166
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fNr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 168
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->cqt:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 169
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->cqt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 171
    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fNs:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 172
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fNs:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 174
    :cond_d
    const/16 v0, 0x10

    iget v1, p0, Lcom/tencent/mm/protocal/a/sh;->fNt:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 175
    const/16 v0, 0x11

    iget v1, p0, Lcom/tencent/mm/protocal/a/sh;->cqv:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 176
    const/16 v0, 0x12

    iget v1, p0, Lcom/tencent/mm/protocal/a/sh;->cqu:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 177
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->cqw:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 178
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->cqw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 180
    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fNv:Lcom/tencent/mm/protocal/a/vp;

    if-eqz v0, :cond_f

    .line 181
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/vp;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 182
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/vp;->a(La/a/a/c/a;)V

    .line 184
    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->cqx:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 185
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->cqx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 187
    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->cqy:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 188
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->cqy:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 190
    :cond_11
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fNw:Lcom/tencent/mm/protocal/a/dl;

    if-eqz v0, :cond_12

    .line 191
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/dl;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 192
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/dl;->a(La/a/a/c/a;)V

    .line 194
    :cond_12
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fDg:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 195
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fDg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 197
    :cond_13
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fDh:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 198
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fDh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 200
    :cond_14
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/sh;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/sh;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/sh;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/sh;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/sh;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fEI:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fNa:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fEG:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fEH:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sh;->fzx:Lcom/tencent/mm/protocal/a/rv;

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
    .line 59
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fEI:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_0

    .line 61
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fNa:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_1

    .line 64
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fEG:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_2

    .line 67
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->fEG:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fEH:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_3

    .line 70
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_3
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/sh;->cqq:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fzx:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_4

    .line 74
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->fzx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->Tu:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 77
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->Tu:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->Tv:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 80
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->Tv:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->cqr:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 83
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->cqr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_7
    const/16 v1, 0xa

    iget v2, p0, Lcom/tencent/mm/protocal/a/sh;->cqs:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    const/16 v1, 0xb

    iget v2, p0, Lcom/tencent/mm/protocal/a/sh;->fNp:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fNq:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 88
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->fNq:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fNr:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 91
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->fNr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_9
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->cqt:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 94
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->cqt:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fNs:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 97
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->fNs:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_b
    const/16 v1, 0x10

    iget v2, p0, Lcom/tencent/mm/protocal/a/sh;->fNt:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    const/16 v1, 0x11

    iget v2, p0, Lcom/tencent/mm/protocal/a/sh;->cqv:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    const/16 v1, 0x12

    iget v2, p0, Lcom/tencent/mm/protocal/a/sh;->cqu:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->cqw:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 103
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->cqw:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_c
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fNv:Lcom/tencent/mm/protocal/a/vp;

    if-eqz v1, :cond_d

    .line 106
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/vp;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_d
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->cqx:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 109
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->cqx:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_e
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->cqy:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 112
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->cqy:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_f
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fNw:Lcom/tencent/mm/protocal/a/dl;

    if-eqz v1, :cond_10

    .line 115
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/dl;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_10
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fDg:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 118
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->fDg:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    :cond_11
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sh;->fDh:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 121
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sh;->fDh:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :cond_12
    return v0
.end method
