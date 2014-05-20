.class public final Lcom/tencent/mm/protocal/a/tn;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public Tu:Ljava/lang/String;

.field public Tv:Ljava/lang/String;

.field public cqq:I

.field public cqr:Ljava/lang/String;

.field public cqx:Ljava/lang/String;

.field public cqy:Ljava/lang/String;

.field public eBo:Ljava/lang/String;

.field public fDe:Ljava/lang/String;

.field public fDg:Ljava/lang/String;

.field public fDh:Ljava/lang/String;

.field public fMl:Ljava/lang/String;

.field public fNo:Ljava/lang/String;

.field public fNp:I

.field public fNq:Ljava/lang/String;

.field public fNr:Ljava/lang/String;

.field public fNs:Ljava/lang/String;

.field public fNt:I

.field public fNu:I

.field public fNv:Lcom/tencent/mm/protocal/a/vp;

.field public fNw:Lcom/tencent/mm/protocal/a/dl;

.field public fUE:I

.field public fUF:Lcom/tencent/mm/protocal/a/rv;

.field public fUG:I

.field public fzw:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/tn;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 202
    packed-switch p2, :pswitch_data_0

    .line 342
    :goto_0
    :pswitch_0
    return v0

    .line 204
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/tn;->eBo:Ljava/lang/String;

    move v0, v1

    .line 205
    goto :goto_0

    .line 208
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/tn;->fDe:Ljava/lang/String;

    move v0, v1

    .line 209
    goto :goto_0

    .line 212
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/tn;->Tu:Ljava/lang/String;

    move v0, v1

    .line 213
    goto :goto_0

    .line 216
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/tn;->Tv:Ljava/lang/String;

    move v0, v1

    .line 217
    goto :goto_0

    .line 220
    :pswitch_5
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/tn;->cqr:Ljava/lang/String;

    move v0, v1

    .line 221
    goto :goto_0

    .line 224
    :pswitch_6
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/tn;->fNo:Ljava/lang/String;

    move v0, v1

    .line 225
    goto :goto_0

    .line 228
    :pswitch_7
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/tn;->cqq:I

    move v0, v1

    .line 229
    goto :goto_0

    .line 232
    :pswitch_8
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/tn;->fzw:I

    move v0, v1

    .line 233
    goto :goto_0

    .line 236
    :pswitch_9
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/tn;->fUE:I

    move v0, v1

    .line 237
    goto :goto_0

    .line 240
    :pswitch_a
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 241
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 242
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 243
    new-instance v5, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    .line 244
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/tn;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 247
    :goto_2
    if-eqz v0, :cond_0

    .line 248
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/tn;->a(La/a/a/a/a;)I

    move-result v0

    .line 249
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rv;I)Z

    move-result v0

    goto :goto_2

    .line 251
    :cond_0
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/tn;->fUF:Lcom/tencent/mm/protocal/a/rv;

    .line 241
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 255
    goto :goto_0

    .line 258
    :pswitch_b
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/tn;->fUG:I

    move v0, v1

    .line 259
    goto/16 :goto_0

    .line 262
    :pswitch_c
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/tn;->fNr:Ljava/lang/String;

    move v0, v1

    .line 263
    goto/16 :goto_0

    .line 266
    :pswitch_d
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/tn;->fNs:Ljava/lang/String;

    move v0, v1

    .line 267
    goto/16 :goto_0

    .line 270
    :pswitch_e
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/tn;->fNt:I

    move v0, v1

    .line 271
    goto/16 :goto_0

    .line 274
    :pswitch_f
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/tn;->fNp:I

    move v0, v1

    .line 275
    goto/16 :goto_0

    .line 278
    :pswitch_10
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/tn;->fNq:Ljava/lang/String;

    move v0, v1

    .line 279
    goto/16 :goto_0

    .line 282
    :pswitch_11
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/tn;->fMl:Ljava/lang/String;

    move v0, v1

    .line 283
    goto/16 :goto_0

    .line 286
    :pswitch_12
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/tn;->fNu:I

    move v0, v1

    .line 287
    goto/16 :goto_0

    .line 290
    :pswitch_13
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 291
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 292
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 293
    new-instance v5, Lcom/tencent/mm/protocal/a/vp;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/vp;-><init>()V

    .line 294
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/tn;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 297
    :goto_4
    if-eqz v0, :cond_2

    .line 298
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/tn;->a(La/a/a/a/a;)I

    move-result v0

    .line 299
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/vp;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/vp;I)Z

    move-result v0

    goto :goto_4

    .line 301
    :cond_2
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/tn;->fNv:Lcom/tencent/mm/protocal/a/vp;

    .line 291
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    .line 305
    goto/16 :goto_0

    .line 308
    :pswitch_14
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/tn;->cqx:Ljava/lang/String;

    move v0, v1

    .line 309
    goto/16 :goto_0

    .line 312
    :pswitch_15
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/tn;->fDg:Ljava/lang/String;

    move v0, v1

    .line 313
    goto/16 :goto_0

    .line 316
    :pswitch_16
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/tn;->fDh:Ljava/lang/String;

    move v0, v1

    .line 317
    goto/16 :goto_0

    .line 320
    :pswitch_17
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/tn;->cqy:Ljava/lang/String;

    move v0, v1

    .line 321
    goto/16 :goto_0

    .line 324
    :pswitch_18
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 325
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_5
    if-ge v2, v4, :cond_5

    .line 326
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 327
    new-instance v5, Lcom/tencent/mm/protocal/a/dl;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/dl;-><init>()V

    .line 328
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/tn;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 331
    :goto_6
    if-eqz v0, :cond_4

    .line 332
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/tn;->a(La/a/a/a/a;)I

    move-result v0

    .line 333
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/dl;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/dl;I)Z

    move-result v0

    goto :goto_6

    .line 335
    :cond_4
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/tn;->fNw:Lcom/tencent/mm/protocal/a/dl;

    .line 325
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_5
    move v0, v1

    .line 339
    goto/16 :goto_0

    .line 202
    nop

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
        :pswitch_0
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
    .line 120
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->fUF:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->eBo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->eBo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->fDe:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 127
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fDe:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->Tu:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 130
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->Tu:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->Tv:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 133
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->Tv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->cqr:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 136
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->cqr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 138
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->fNo:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 139
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fNo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 141
    :cond_6
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/tn;->cqq:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 142
    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/protocal/a/tn;->fzw:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 143
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/tn;->fUE:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 144
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->fUF:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_7

    .line 145
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fUF:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 146
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->fUF:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 148
    :cond_7
    const/16 v0, 0xb

    iget v1, p0, Lcom/tencent/mm/protocal/a/tn;->fUG:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 149
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->fNr:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 150
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fNr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 152
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->fNs:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 153
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fNs:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 155
    :cond_9
    const/16 v0, 0xe

    iget v1, p0, Lcom/tencent/mm/protocal/a/tn;->fNt:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 156
    const/16 v0, 0xf

    iget v1, p0, Lcom/tencent/mm/protocal/a/tn;->fNp:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 157
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->fNq:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 158
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fNq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 160
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->fMl:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 161
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fMl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 163
    :cond_b
    const/16 v0, 0x15

    iget v1, p0, Lcom/tencent/mm/protocal/a/tn;->fNu:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 164
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->fNv:Lcom/tencent/mm/protocal/a/vp;

    if-eqz v0, :cond_c

    .line 165
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/vp;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 166
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/vp;->a(La/a/a/c/a;)V

    .line 168
    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->cqx:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 169
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->cqx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 171
    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->fDg:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 172
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fDg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 174
    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->fDh:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 175
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fDh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 177
    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->cqy:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 178
    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->cqy:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 180
    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->fNw:Lcom/tencent/mm/protocal/a/dl;

    if-eqz v0, :cond_11

    .line 181
    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/dl;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 182
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/dl;->a(La/a/a/c/a;)V

    .line 184
    :cond_11
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/tn;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/tn;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/tn;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/tn;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/tn;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tn;->fUF:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_2

    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->eBo:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 59
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->eBo:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fDe:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 62
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tn;->fDe:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->Tu:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 65
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tn;->Tu:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->Tv:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 68
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tn;->Tv:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->cqr:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 71
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tn;->cqr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fNo:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 74
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tn;->fNo:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_5
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/tn;->cqq:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/protocal/a/tn;->fzw:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/tn;->fUE:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fUF:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_6

    .line 80
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tn;->fUF:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_6
    const/16 v1, 0xb

    iget v2, p0, Lcom/tencent/mm/protocal/a/tn;->fUG:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fNr:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 84
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tn;->fNr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fNs:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 87
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tn;->fNs:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_8
    const/16 v1, 0xe

    iget v2, p0, Lcom/tencent/mm/protocal/a/tn;->fNt:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    const/16 v1, 0xf

    iget v2, p0, Lcom/tencent/mm/protocal/a/tn;->fNp:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fNq:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 92
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tn;->fNq:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_9
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fMl:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 95
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tn;->fMl:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_a
    const/16 v1, 0x15

    iget v2, p0, Lcom/tencent/mm/protocal/a/tn;->fNu:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fNv:Lcom/tencent/mm/protocal/a/vp;

    if-eqz v1, :cond_b

    .line 99
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tn;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/vp;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_b
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->cqx:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 102
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tn;->cqx:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_c
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fDg:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 105
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tn;->fDg:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    :cond_d
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fDh:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 108
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tn;->fDh:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_e
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->cqy:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 111
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tn;->cqy:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_f
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tn;->fNw:Lcom/tencent/mm/protocal/a/dl;

    if-eqz v1, :cond_10

    .line 114
    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tn;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/dl;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_10
    return v0
.end method
