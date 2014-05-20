.class public final Lcom/tencent/mm/protocal/a/nw;
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

.field public fEp:I

.field public fMl:Ljava/lang/String;

.field public fNa:Lcom/tencent/mm/protocal/a/rw;

.field public fNp:I

.field public fNq:Ljava/lang/String;

.field public fNr:Ljava/lang/String;

.field public fNs:Ljava/lang/String;

.field public fNt:I

.field public fNv:Lcom/tencent/mm/protocal/a/vp;

.field public fNw:Lcom/tencent/mm/protocal/a/dl;

.field public fOO:Lcom/tencent/mm/protocal/a/rw;

.field public fOP:Lcom/tencent/mm/protocal/a/rw;

.field public fOQ:Lcom/tencent/mm/protocal/a/rw;

.field public fOT:I

.field public fzx:Lcom/tencent/mm/protocal/a/rv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fEI:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fNa:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fEG:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fEH:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fzx:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fOO:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fOP:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    if-nez v0, :cond_1

    .line 154
    :cond_0
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fEI:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    .line 157
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 158
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fNa:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_3

    .line 161
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 162
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fEG:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_4

    .line 165
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fEG:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 166
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fEG:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fEH:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_5

    .line 169
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 170
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 172
    :cond_5
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/nw;->cqq:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 173
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fzx:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_6

    .line 174
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fzx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 175
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fzx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 177
    :cond_6
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/nw;->fOT:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 178
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fOO:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_7

    .line 179
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fOO:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 180
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fOO:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 182
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fOP:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_8

    .line 183
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fOP:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 184
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fOP:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 186
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_9

    .line 187
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 188
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 190
    :cond_9
    const/16 v0, 0xb

    iget v1, p0, Lcom/tencent/mm/protocal/a/nw;->fEp:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 191
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->Tu:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 192
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->Tu:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 194
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->Tv:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 195
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->Tv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 197
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->cqr:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 198
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->cqr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 200
    :cond_c
    const/16 v0, 0xf

    iget v1, p0, Lcom/tencent/mm/protocal/a/nw;->cqs:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 201
    const/16 v0, 0x10

    iget v1, p0, Lcom/tencent/mm/protocal/a/nw;->fNp:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 202
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fNq:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 203
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fNq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 205
    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fNr:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 206
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fNr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 208
    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fMl:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 209
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fMl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 211
    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fNs:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 212
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fNs:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 214
    :cond_10
    const/16 v0, 0x15

    iget v1, p0, Lcom/tencent/mm/protocal/a/nw;->fNt:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 215
    const/16 v0, 0x16

    iget v1, p0, Lcom/tencent/mm/protocal/a/nw;->cqv:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 216
    const/16 v0, 0x17

    iget v1, p0, Lcom/tencent/mm/protocal/a/nw;->cqu:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 217
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->cqw:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 218
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->cqw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 220
    :cond_11
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->cqt:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 221
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->cqt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 223
    :cond_12
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fNv:Lcom/tencent/mm/protocal/a/vp;

    if-eqz v0, :cond_13

    .line 224
    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/vp;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 225
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/vp;->a(La/a/a/c/a;)V

    .line 227
    :cond_13
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->cqx:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 228
    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->cqx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 230
    :cond_14
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fDg:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 231
    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fDg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 233
    :cond_15
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fDh:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 234
    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fDh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 236
    :cond_16
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->cqy:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 237
    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->cqy:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 239
    :cond_17
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fNw:Lcom/tencent/mm/protocal/a/dl;

    if-eqz v0, :cond_18

    .line 240
    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/dl;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 241
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/dl;->a(La/a/a/c/a;)V

    .line 243
    :cond_18
    return-void
.end method

.method public final bx([B)Lcom/tencent/mm/protocal/a/nw;
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 245
    new-instance v4, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/nw;->fxi:La/a/a/a/a/b;

    invoke-direct {v4, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 246
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/nw;->a(La/a/a/a/a;)I

    move-result v0

    .line 248
    :goto_0
    if-lez v0, :cond_15

    .line 249
    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    .line 250
    invoke-virtual {v4}, La/a/a/a/a;->aPZ()V

    .line 252
    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/nw;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 249
    :pswitch_0
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_2
    if-ge v3, v6, :cond_2

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/nw;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/nw;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/nw;->fEI:Lcom/tencent/mm/protocal/a/rw;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_4
    if-ge v3, v6, :cond_4

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/nw;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_5
    if-eqz v0, :cond_3

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/nw;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_5

    :cond_3
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/nw;->fNa:Lcom/tencent/mm/protocal/a/rw;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_6
    if-ge v3, v6, :cond_6

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/nw;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_7
    if-eqz v0, :cond_5

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/nw;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_7

    :cond_5
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/nw;->fEG:Lcom/tencent/mm/protocal/a/rw;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_6
    move v0, v1

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_8
    if-ge v3, v6, :cond_8

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/nw;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_9
    if-eqz v0, :cond_7

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/nw;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_9

    :cond_7
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/nw;->fEH:Lcom/tencent/mm/protocal/a/rw;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_8

    :cond_8
    move v0, v1

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/nw;->cqq:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_a
    if-ge v3, v6, :cond_a

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/nw;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_b
    if-eqz v0, :cond_9

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/nw;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rv;I)Z

    move-result v0

    goto :goto_b

    :cond_9
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/nw;->fzx:Lcom/tencent/mm/protocal/a/rv;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a

    :cond_a
    move v0, v1

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/nw;->fOT:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_c
    if-ge v3, v6, :cond_c

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/nw;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_d
    if-eqz v0, :cond_b

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/nw;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_d

    :cond_b
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/nw;->fOO:Lcom/tencent/mm/protocal/a/rw;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c

    :cond_c
    move v0, v1

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_e
    if-ge v3, v6, :cond_e

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/nw;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_f
    if-eqz v0, :cond_d

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/nw;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_f

    :cond_d
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/nw;->fOP:Lcom/tencent/mm/protocal/a/rw;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e

    :cond_e
    move v0, v1

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_10
    if-ge v3, v6, :cond_10

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/nw;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_11
    if-eqz v0, :cond_f

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/nw;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_11

    :cond_f
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/nw;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_10

    :cond_10
    move v0, v1

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/nw;->fEp:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->Tu:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->Tv:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->cqr:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/nw;->cqs:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/nw;->fNp:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fNq:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fNr:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fMl:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fNs:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/nw;->fNt:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/nw;->cqv:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/nw;->cqu:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->cqw:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->cqt:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_12
    if-ge v3, v6, :cond_12

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/vp;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/vp;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/nw;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_13
    if-eqz v0, :cond_11

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/nw;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/vp;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/vp;I)Z

    move-result v0

    goto :goto_13

    :cond_11
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/nw;->fNv:Lcom/tencent/mm/protocal/a/vp;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_12

    :cond_12
    move v0, v1

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->cqx:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fDg:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_1c
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fDh:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_1d
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->cqy:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_1e
    invoke-virtual {v4, v0}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    move v3, v2

    :goto_14
    if-ge v3, v6, :cond_14

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/a/dl;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/dl;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/nw;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_15
    if-eqz v0, :cond_13

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/nw;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/dl;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/dl;I)Z

    move-result v0

    goto :goto_15

    :cond_13
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/nw;->fNw:Lcom/tencent/mm/protocal/a/dl;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_14

    :cond_14
    move v0, v1

    goto/16 :goto_1

    .line 255
    :cond_15
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fEI:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fNa:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fEG:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fEH:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fzx:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fOO:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fOP:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nw;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    if-nez v0, :cond_17

    .line 256
    :cond_16
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_17
    return-object p0

    .line 249
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
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/nw;->bx([B)Lcom/tencent/mm/protocal/a/nw;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fEI:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_0

    .line 73
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fNa:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_1

    .line 76
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fEG:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_2

    .line 79
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->fEG:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fEH:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_3

    .line 82
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_3
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/nw;->cqq:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fzx:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_4

    .line 86
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->fzx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_4
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/nw;->fOT:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fOO:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_5

    .line 90
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->fOO:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fOP:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_6

    .line 93
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->fOP:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_7

    .line 96
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->fOQ:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_7
    const/16 v1, 0xb

    iget v2, p0, Lcom/tencent/mm/protocal/a/nw;->fEp:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->Tu:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 100
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->Tu:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->Tv:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 103
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->Tv:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_9
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->cqr:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 106
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->cqr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_a
    const/16 v1, 0xf

    iget v2, p0, Lcom/tencent/mm/protocal/a/nw;->cqs:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    const/16 v1, 0x10

    iget v2, p0, Lcom/tencent/mm/protocal/a/nw;->fNp:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fNq:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 111
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->fNq:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_b
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fNr:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 114
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->fNr:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_c
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fMl:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 117
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->fMl:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_d
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fNs:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 120
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->fNs:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :cond_e
    const/16 v1, 0x15

    iget v2, p0, Lcom/tencent/mm/protocal/a/nw;->fNt:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    const/16 v1, 0x16

    iget v2, p0, Lcom/tencent/mm/protocal/a/nw;->cqv:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    const/16 v1, 0x17

    iget v2, p0, Lcom/tencent/mm/protocal/a/nw;->cqu:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->cqw:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 126
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->cqw:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_f
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->cqt:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 129
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->cqt:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_10
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fNv:Lcom/tencent/mm/protocal/a/vp;

    if-eqz v1, :cond_11

    .line 132
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->fNv:Lcom/tencent/mm/protocal/a/vp;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/vp;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_11
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->cqx:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 135
    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->cqx:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_12
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fDg:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 138
    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->fDg:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    :cond_13
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fDh:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 141
    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->fDh:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    :cond_14
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->cqy:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 144
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->cqy:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_15
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nw;->fNw:Lcom/tencent/mm/protocal/a/dl;

    if-eqz v1, :cond_16

    .line 147
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nw;->fNw:Lcom/tencent/mm/protocal/a/dl;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/dl;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_16
    return v0
.end method
