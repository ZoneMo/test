.class public final Lcom/tencent/mm/protocal/a/xb;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public eBo:Ljava/lang/String;

.field public exC:Lcom/tencent/mm/protocal/a/d;

.field public fOp:I

.field public fXS:Ljava/lang/String;

.field public fXT:Lcom/tencent/mm/protocal/a/nb;

.field public fXU:Lcom/tencent/mm/protocal/a/s;

.field public fXV:Lcom/tencent/mm/protocal/a/dg;

.field public fXW:Ljava/lang/String;

.field public fXX:Ljava/lang/String;

.field public fXY:Ljava/lang/String;

.field public fXZ:I

.field public fYa:I

.field public fYb:Ljava/lang/String;

.field public fzM:Ljava/lang/String;

.field public fzy:I


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
    .line 81
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fzM:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fzM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->eBo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->eBo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 87
    :cond_1
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/xb;->fOp:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 88
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/xb;->fzy:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fXS:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 90
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fXS:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fXT:Lcom/tencent/mm/protocal/a/nb;

    if-eqz v0, :cond_3

    .line 93
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fXT:Lcom/tencent/mm/protocal/a/nb;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/nb;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fXT:Lcom/tencent/mm/protocal/a/nb;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/nb;->a(La/a/a/c/a;)V

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fXU:Lcom/tencent/mm/protocal/a/s;

    if-eqz v0, :cond_4

    .line 97
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fXU:Lcom/tencent/mm/protocal/a/s;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/s;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 98
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fXU:Lcom/tencent/mm/protocal/a/s;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/s;->a(La/a/a/c/a;)V

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fXV:Lcom/tencent/mm/protocal/a/dg;

    if-eqz v0, :cond_5

    .line 101
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fXV:Lcom/tencent/mm/protocal/a/dg;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/dg;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 102
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fXV:Lcom/tencent/mm/protocal/a/dg;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/dg;->a(La/a/a/c/a;)V

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fXW:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 105
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fXW:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fXX:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 108
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fXX:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 110
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fXY:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 111
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fXY:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 113
    :cond_8
    const/16 v0, 0xc

    iget v1, p0, Lcom/tencent/mm/protocal/a/xb;->fXZ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 114
    const/16 v0, 0xd

    iget v1, p0, Lcom/tencent/mm/protocal/a/xb;->fYa:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 115
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fYb:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 116
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fYb:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 118
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->exC:Lcom/tencent/mm/protocal/a/d;

    if-eqz v0, :cond_a

    .line 119
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->exC:Lcom/tencent/mm/protocal/a/d;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/d;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 120
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->exC:Lcom/tencent/mm/protocal/a/d;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/d;->a(La/a/a/c/a;)V

    .line 122
    :cond_a
    return-void
.end method

.method public final cb([B)Lcom/tencent/mm/protocal/a/xb;
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    new-instance v4, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/xb;->fxi:La/a/a/a/a/b;

    invoke-direct {v4, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 125
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/xb;->a(La/a/a/a/a;)I

    move-result v0

    .line 127
    :goto_0
    if-lez v0, :cond_9

    .line 128
    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    .line 129
    invoke-virtual {v4}, La/a/a/a/a;->aPZ()V

    .line 131
    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/xb;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 128
    :pswitch_0
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fzM:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->eBo:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/xb;->fOp:I

    move v0, v1

    goto :goto_1

    :pswitch_3
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/xb;->fzy:I

    move v0, v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fXS:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_5
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

    new-instance v7, Lcom/tencent/mm/protocal/a/nb;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/nb;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/xb;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/xb;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/nb;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/nb;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/xb;->fXT:Lcom/tencent/mm/protocal/a/nb;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_6
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

    new-instance v7, Lcom/tencent/mm/protocal/a/s;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/s;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/xb;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_5
    if-eqz v0, :cond_3

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/xb;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/s;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/s;I)Z

    move-result v0

    goto :goto_5

    :cond_3
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/xb;->fXU:Lcom/tencent/mm/protocal/a/s;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_4
    move v0, v1

    goto/16 :goto_1

    :pswitch_7
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

    new-instance v7, Lcom/tencent/mm/protocal/a/dg;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/dg;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/xb;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_7
    if-eqz v0, :cond_5

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/xb;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/dg;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/dg;I)Z

    move-result v0

    goto :goto_7

    :cond_5
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/xb;->fXV:Lcom/tencent/mm/protocal/a/dg;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_6
    move v0, v1

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fXW:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fXX:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fXY:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/xb;->fXZ:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/xb;->fYa:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/xb;->fYb:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_e
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

    new-instance v7, Lcom/tencent/mm/protocal/a/d;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/d;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/xb;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_9
    if-eqz v0, :cond_7

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/xb;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/d;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/d;I)Z

    move-result v0

    goto :goto_9

    :cond_7
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/xb;->exC:Lcom/tencent/mm/protocal/a/d;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_8

    :cond_8
    move v0, v1

    goto/16 :goto_1

    .line 134
    :cond_9
    return-object p0

    .line 128
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

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/xb;->cb([B)Lcom/tencent/mm/protocal/a/xb;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fzM:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 41
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fzM:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->eBo:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 44
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/xb;->eBo:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    :cond_1
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/xb;->fOp:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/xb;->fzy:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fXS:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 49
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/xb;->fXS:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fXT:Lcom/tencent/mm/protocal/a/nb;

    if-eqz v1, :cond_3

    .line 52
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/xb;->fXT:Lcom/tencent/mm/protocal/a/nb;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/nb;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fXU:Lcom/tencent/mm/protocal/a/s;

    if-eqz v1, :cond_4

    .line 55
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/xb;->fXU:Lcom/tencent/mm/protocal/a/s;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/s;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fXV:Lcom/tencent/mm/protocal/a/dg;

    if-eqz v1, :cond_5

    .line 58
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/xb;->fXV:Lcom/tencent/mm/protocal/a/dg;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/dg;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fXW:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 61
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/xb;->fXW:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fXX:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 64
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/xb;->fXX:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fXY:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 67
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/xb;->fXY:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_8
    const/16 v1, 0xc

    iget v2, p0, Lcom/tencent/mm/protocal/a/xb;->fXZ:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/protocal/a/xb;->fYa:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->fYb:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 72
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/xb;->fYb:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_9
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xb;->exC:Lcom/tencent/mm/protocal/a/d;

    if-eqz v1, :cond_a

    .line 75
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/xb;->exC:Lcom/tencent/mm/protocal/a/d;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/d;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_a
    return v0
.end method
