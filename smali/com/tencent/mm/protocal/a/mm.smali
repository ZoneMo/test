.class public final Lcom/tencent/mm/protocal/a/mm;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public Tu:Ljava/lang/String;

.field public Tv:Ljava/lang/String;

.field public cqq:I

.field public cqr:Ljava/lang/String;

.field public cqt:Ljava/lang/String;

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

.field public fzw:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/mm;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 187
    packed-switch p2, :pswitch_data_0

    .line 305
    :goto_0
    :pswitch_0
    return v0

    .line 189
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/mm;->eBo:Ljava/lang/String;

    move v0, v1

    .line 190
    goto :goto_0

    .line 193
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/mm;->fDe:Ljava/lang/String;

    move v0, v1

    .line 194
    goto :goto_0

    .line 197
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/mm;->Tu:Ljava/lang/String;

    move v0, v1

    .line 198
    goto :goto_0

    .line 201
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/mm;->Tv:Ljava/lang/String;

    move v0, v1

    .line 202
    goto :goto_0

    .line 205
    :pswitch_5
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/mm;->cqr:Ljava/lang/String;

    move v0, v1

    .line 206
    goto :goto_0

    .line 209
    :pswitch_6
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/mm;->fNo:Ljava/lang/String;

    move v0, v1

    .line 210
    goto :goto_0

    .line 213
    :pswitch_7
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/mm;->cqq:I

    move v0, v1

    .line 214
    goto :goto_0

    .line 217
    :pswitch_8
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/mm;->fzw:I

    move v0, v1

    .line 218
    goto :goto_0

    .line 221
    :pswitch_9
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/mm;->fNp:I

    move v0, v1

    .line 222
    goto :goto_0

    .line 225
    :pswitch_a
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/mm;->fNq:Ljava/lang/String;

    move v0, v1

    .line 226
    goto :goto_0

    .line 229
    :pswitch_b
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/mm;->fMl:Ljava/lang/String;

    move v0, v1

    .line 230
    goto :goto_0

    .line 233
    :pswitch_c
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/mm;->cqt:Ljava/lang/String;

    move v0, v1

    .line 234
    goto :goto_0

    .line 237
    :pswitch_d
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/mm;->fNr:Ljava/lang/String;

    move v0, v1

    .line 238
    goto :goto_0

    .line 241
    :pswitch_e
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/mm;->fNs:Ljava/lang/String;

    move v0, v1

    .line 242
    goto :goto_0

    .line 245
    :pswitch_f
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/mm;->fNt:I

    move v0, v1

    .line 246
    goto :goto_0

    .line 249
    :pswitch_10
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/mm;->fNu:I

    move v0, v1

    .line 250
    goto :goto_0

    .line 253
    :pswitch_11
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 254
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 255
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 256
    new-instance v5, Lcom/tencent/mm/protocal/a/vp;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/vp;-><init>()V

    .line 257
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/mm;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 260
    :goto_2
    if-eqz v0, :cond_0

    .line 261
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/mm;->a(La/a/a/a/a;)I

    move-result v0

    .line 262
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/vp;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/vp;I)Z

    move-result v0

    goto :goto_2

    .line 264
    :cond_0
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/mm;->fNv:Lcom/tencent/mm/protocal/a/vp;

    .line 254
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 268
    goto/16 :goto_0

    .line 271
    :pswitch_12
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/mm;->cqx:Ljava/lang/String;

    move v0, v1

    .line 272
    goto/16 :goto_0

    .line 275
    :pswitch_13
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/mm;->fDg:Ljava/lang/String;

    move v0, v1

    .line 276
    goto/16 :goto_0

    .line 279
    :pswitch_14
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/mm;->fDh:Ljava/lang/String;

    move v0, v1

    .line 280
    goto/16 :goto_0

    .line 283
    :pswitch_15
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/mm;->cqy:Ljava/lang/String;

    move v0, v1

    .line 284
    goto/16 :goto_0

    .line 287
    :pswitch_16
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 288
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 289
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 290
    new-instance v5, Lcom/tencent/mm/protocal/a/dl;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/dl;-><init>()V

    .line 291
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/mm;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 294
    :goto_4
    if-eqz v0, :cond_2

    .line 295
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/mm;->a(La/a/a/a/a;)I

    move-result v0

    .line 296
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/dl;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/dl;I)Z

    move-result v0

    goto :goto_4

    .line 298
    :cond_2
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/mm;->fNw:Lcom/tencent/mm/protocal/a/dl;

    .line 288
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    .line 302
    goto/16 :goto_0

    .line 187
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->eBo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->eBo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->fDe:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 118
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fDe:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->Tu:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 121
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->Tu:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->Tv:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 124
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->Tv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->cqr:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 127
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->cqr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->fNo:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 130
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fNo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 132
    :cond_5
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/mm;->cqq:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 133
    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/protocal/a/mm;->fzw:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 134
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/mm;->fNp:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 135
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->fNq:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 136
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fNq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->fMl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 139
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fMl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 141
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->cqt:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 142
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->cqt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 144
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->fNr:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 145
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fNr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 147
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->fNs:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 148
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fNs:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 150
    :cond_a
    const/16 v0, 0xf

    iget v1, p0, Lcom/tencent/mm/protocal/a/mm;->fNt:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 151
    const/16 v0, 0x13

    iget v1, p0, Lcom/tencent/mm/protocal/a/mm;->fNu:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 152
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->fNv:Lcom/tencent/mm/protocal/a/vp;

    if-eqz v0, :cond_b

    .line 153
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/vp;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 154
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/vp;->a(La/a/a/c/a;)V

    .line 156
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->cqx:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 157
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->cqx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 159
    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->fDg:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 160
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fDg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 162
    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->fDh:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 163
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fDh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 165
    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->cqy:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 166
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->cqy:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 168
    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->fNw:Lcom/tencent/mm/protocal/a/dl;

    if-eqz v0, :cond_10

    .line 169
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/dl;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 170
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mm;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/dl;->a(La/a/a/c/a;)V

    .line 172
    :cond_10
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/mm;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/mm;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/mm;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/mm;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/mm;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->eBo:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 55
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->eBo:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fDe:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 58
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mm;->fDe:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->Tu:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 61
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mm;->Tu:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->Tv:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 64
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mm;->Tv:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->cqr:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 67
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mm;->cqr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fNo:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 70
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mm;->fNo:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_5
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/mm;->cqq:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/protocal/a/mm;->fzw:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/mm;->fNp:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fNq:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 76
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mm;->fNq:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fMl:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 79
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mm;->fMl:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->cqt:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 82
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mm;->cqt:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fNr:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 85
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mm;->fNr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_9
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fNs:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 88
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mm;->fNs:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_a
    const/16 v1, 0xf

    iget v2, p0, Lcom/tencent/mm/protocal/a/mm;->fNt:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    const/16 v1, 0x13

    iget v2, p0, Lcom/tencent/mm/protocal/a/mm;->fNu:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fNv:Lcom/tencent/mm/protocal/a/vp;

    if-eqz v1, :cond_b

    .line 93
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mm;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/vp;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_b
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->cqx:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 96
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mm;->cqx:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_c
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fDg:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 99
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mm;->fDg:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_d
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fDh:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 102
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mm;->fDh:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_e
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->cqy:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 105
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mm;->cqy:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    :cond_f
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mm;->fNw:Lcom/tencent/mm/protocal/a/dl;

    if-eqz v1, :cond_10

    .line 108
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mm;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/dl;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_10
    return v0
.end method
