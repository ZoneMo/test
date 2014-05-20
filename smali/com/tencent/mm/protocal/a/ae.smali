.class public final Lcom/tencent/mm/protocal/a/ae;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public dGR:I

.field public fAA:I

.field public fAB:I

.field public fAu:I

.field public fAv:I

.field public fAw:I

.field public fAx:Ljava/util/LinkedList;

.field public fAy:Ljava/util/LinkedList;

.field public fAz:Lcom/tencent/mm/protocal/a/rv;

.field public fzT:Ljava/lang/String;

.field public fzo:I

.field public fzs:Lcom/tencent/mm/protocal/a/rw;

.field public fzt:Lcom/tencent/mm/protocal/a/rw;

.field public fzv:Lcom/tencent/mm/protocal/a/rw;

.field public fzz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fAx:Ljava/util/LinkedList;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fAy:Ljava/util/LinkedList;

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ae;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 125
    packed-switch p2, :pswitch_data_0

    .line 271
    :goto_0
    return v0

    .line 127
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ae;->dGR:I

    move v0, v1

    .line 128
    goto :goto_0

    .line 131
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ae;->fzT:Ljava/lang/String;

    move v0, v1

    .line 132
    goto :goto_0

    .line 135
    :pswitch_2
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 136
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 137
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 138
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 139
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ae;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 142
    :goto_2
    if-eqz v0, :cond_0

    .line 143
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ae;->a(La/a/a/a/a;)I

    move-result v0

    .line 144
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_2

    .line 146
    :cond_0
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ae;->fzs:Lcom/tencent/mm/protocal/a/rw;

    .line 136
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 150
    goto :goto_0

    .line 153
    :pswitch_3
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 154
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 155
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 156
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 157
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ae;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 160
    :goto_4
    if-eqz v0, :cond_2

    .line 161
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ae;->a(La/a/a/a/a;)I

    move-result v0

    .line 162
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_4

    .line 164
    :cond_2
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ae;->fzt:Lcom/tencent/mm/protocal/a/rw;

    .line 154
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    .line 168
    goto :goto_0

    .line 171
    :pswitch_4
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 172
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_5
    if-ge v2, v4, :cond_5

    .line 173
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 174
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 175
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ae;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 178
    :goto_6
    if-eqz v0, :cond_4

    .line 179
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ae;->a(La/a/a/a/a;)I

    move-result v0

    .line 180
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_6

    .line 182
    :cond_4
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ae;->fzv:Lcom/tencent/mm/protocal/a/rw;

    .line 172
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_5
    move v0, v1

    .line 186
    goto/16 :goto_0

    .line 189
    :pswitch_5
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ae;->fAu:I

    move v0, v1

    .line 190
    goto/16 :goto_0

    .line 193
    :pswitch_6
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ae;->fAv:I

    move v0, v1

    .line 194
    goto/16 :goto_0

    .line 197
    :pswitch_7
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/ae;->fzz:Ljava/lang/String;

    move v0, v1

    .line 198
    goto/16 :goto_0

    .line 201
    :pswitch_8
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ae;->fzo:I

    move v0, v1

    .line 202
    goto/16 :goto_0

    .line 205
    :pswitch_9
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ae;->fAw:I

    move v0, v1

    .line 206
    goto/16 :goto_0

    .line 209
    :pswitch_a
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 210
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_7
    if-ge v2, v4, :cond_7

    .line 211
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 212
    new-instance v5, Lcom/tencent/mm/protocal/a/rw;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rw;-><init>()V

    .line 213
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ae;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 216
    :goto_8
    if-eqz v0, :cond_6

    .line 217
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ae;->a(La/a/a/a/a;)I

    move-result v0

    .line 218
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rw;I)Z

    move-result v0

    goto :goto_8

    .line 220
    :cond_6
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ae;->fAx:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_7
    move v0, v1

    .line 224
    goto/16 :goto_0

    .line 227
    :pswitch_b
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 228
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_9
    if-ge v2, v4, :cond_9

    .line 229
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 230
    new-instance v5, Lcom/tencent/mm/protocal/a/rx;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rx;-><init>()V

    .line 231
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ae;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 234
    :goto_a
    if-eqz v0, :cond_8

    .line 235
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ae;->a(La/a/a/a/a;)I

    move-result v0

    .line 236
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rx;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rx;I)Z

    move-result v0

    goto :goto_a

    .line 238
    :cond_8
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ae;->fAy:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_9
    move v0, v1

    .line 242
    goto/16 :goto_0

    .line 245
    :pswitch_c
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 246
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_b
    if-ge v2, v4, :cond_b

    .line 247
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 248
    new-instance v5, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    .line 249
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ae;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 252
    :goto_c
    if-eqz v0, :cond_a

    .line 253
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ae;->a(La/a/a/a/a;)I

    move-result v0

    .line 254
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/rv;I)Z

    move-result v0

    goto :goto_c

    .line 256
    :cond_a
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ae;->fAz:Lcom/tencent/mm/protocal/a/rv;

    .line 246
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_b
    move v0, v1

    .line 260
    goto/16 :goto_0

    .line 263
    :pswitch_d
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ae;->fAA:I

    move v0, v1

    .line 264
    goto/16 :goto_0

    .line 267
    :pswitch_e
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ae;->fAB:I

    move v0, v1

    .line 268
    goto/16 :goto_0

    .line 125
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
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 71
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fzs:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fzt:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fzv:Lcom/tencent/mm/protocal/a/rw;

    if-nez v0, :cond_1

    .line 72
    :cond_0
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/ae;->dGR:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 75
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fzT:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 76
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ae;->fzT:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fzs:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_3

    .line 79
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ae;->fzs:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 80
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fzs:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fzt:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_4

    .line 83
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ae;->fzt:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 84
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fzt:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 86
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fzv:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_5

    .line 87
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ae;->fzv:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 88
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fzv:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 90
    :cond_5
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/ae;->fAu:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 91
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/ae;->fAv:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 92
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fzz:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fzz:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 95
    :cond_6
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/ae;->fzo:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 96
    const/16 v0, 0xa

    iget v1, p0, Lcom/tencent/mm/protocal/a/ae;->fAw:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 97
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ae;->fAx:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 98
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ae;->fAy:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 99
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fAz:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_7

    .line 100
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ae;->fAz:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fAz:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 103
    :cond_7
    const/16 v0, 0xe

    iget v1, p0, Lcom/tencent/mm/protocal/a/ae;->fAA:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 104
    const/16 v0, 0xf

    iget v1, p0, Lcom/tencent/mm/protocal/a/ae;->fAB:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 105
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fAx:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fAy:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/ae;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/ae;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/ae;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ae;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/ae;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fzs:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fzt:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ae;->fzv:Lcom/tencent/mm/protocal/a/rw;

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
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 39
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/ae;->dGR:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 41
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ae;->fzT:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 42
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ae;->fzT:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ae;->fzs:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_1

    .line 45
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ae;->fzs:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ae;->fzt:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_2

    .line 48
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ae;->fzt:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ae;->fzv:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_3

    .line 51
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ae;->fzv:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    :cond_3
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/ae;->fAu:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/ae;->fAv:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ae;->fzz:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 56
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ae;->fzz:Ljava/lang/String;

    invoke-static {v3, v1}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_4
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/ae;->fzo:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    const/16 v1, 0xa

    iget v2, p0, Lcom/tencent/mm/protocal/a/ae;->fAw:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ae;->fAx:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ae;->fAy:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ae;->fAz:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_5

    .line 63
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ae;->fAz:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_5
    const/16 v1, 0xe

    iget v2, p0, Lcom/tencent/mm/protocal/a/ae;->fAA:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    const/16 v1, 0xf

    iget v2, p0, Lcom/tencent/mm/protocal/a/ae;->fAB:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    return v0
.end method
