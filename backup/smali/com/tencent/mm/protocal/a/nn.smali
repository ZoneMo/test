.class public final Lcom/tencent/mm/protocal/a/nn;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public cky:I

.field public etE:Ljava/lang/String;

.field public fEA:Ljava/lang/String;

.field public fOD:I

.field public fOH:Lcom/tencent/mm/protocal/a/ni;

.field public fOI:I

.field public fOJ:Ljava/util/LinkedList;

.field public fOK:I

.field public fOL:Ljava/lang/String;

.field public fOM:Ljava/lang/String;

.field public fOp:I

.field public fOu:I

.field public fOv:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nn;->fOJ:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 63
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/nn;->fOu:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 64
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/nn;->fOv:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 65
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/nn;->fOp:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 66
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nn;->fOH:Lcom/tencent/mm/protocal/a/ni;

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nn;->fOH:Lcom/tencent/mm/protocal/a/ni;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/ni;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 68
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nn;->fOH:Lcom/tencent/mm/protocal/a/ni;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/ni;->a(La/a/a/c/a;)V

    .line 70
    :cond_0
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/nn;->fOI:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 71
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nn;->fOJ:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 72
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/nn;->cky:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 73
    iget v0, p0, Lcom/tencent/mm/protocal/a/nn;->fOK:I

    invoke-virtual {p1, v2, v0}, La/a/a/c/a;->by(II)V

    .line 74
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nn;->fEA:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 75
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nn;->fEA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nn;->fOL:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 78
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nn;->fOL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nn;->etE:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 81
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nn;->etE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nn;->fOM:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 84
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nn;->fOM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 86
    :cond_4
    const/16 v0, 0xd

    iget v1, p0, Lcom/tencent/mm/protocal/a/nn;->fOD:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 87
    return-void
.end method

.method public final bv([B)Lcom/tencent/mm/protocal/a/nn;
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nn;->fOJ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 90
    new-instance v4, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/nn;->fxi:La/a/a/a/a/b;

    invoke-direct {v4, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 91
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/nn;->a(La/a/a/a/a;)I

    move-result v0

    .line 93
    :goto_0
    if-lez v0, :cond_5

    .line 94
    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    .line 95
    invoke-virtual {v4}, La/a/a/a/a;->aPZ()V

    .line 97
    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/nn;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 94
    :pswitch_0
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/nn;->fOu:I

    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/nn;->fOv:I

    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/nn;->fOp:I

    move v0, v1

    goto :goto_1

    :pswitch_3
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

    new-instance v7, Lcom/tencent/mm/protocal/a/ni;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/ni;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/nn;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/nn;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/ni;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ni;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/nn;->fOH:Lcom/tencent/mm/protocal/a/ni;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/nn;->fOI:I

    move v0, v1

    goto :goto_1

    :pswitch_5
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

    new-instance v7, Lcom/tencent/mm/protocal/a/ni;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/ni;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/nn;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_5
    if-eqz v0, :cond_3

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/nn;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/ni;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ni;I)Z

    move-result v0

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/nn;->fOJ:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_4
    move v0, v1

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/nn;->cky:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/nn;->fOK:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nn;->fEA:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nn;->fOL:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nn;->etE:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/nn;->fOM:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/nn;->fOD:I

    move v0, v1

    goto/16 :goto_1

    .line 100
    :cond_5
    return-object p0

    .line 94
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
    .end packed-switch
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/nn;->bv([B)Lcom/tencent/mm/protocal/a/nn;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 35
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/nn;->fOu:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 37
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/nn;->fOv:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/nn;->fOp:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nn;->fOH:Lcom/tencent/mm/protocal/a/ni;

    if-eqz v1, :cond_0

    .line 40
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nn;->fOH:Lcom/tencent/mm/protocal/a/ni;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/ni;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_0
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/nn;->fOI:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nn;->fOJ:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/nn;->cky:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    iget v1, p0, Lcom/tencent/mm/protocal/a/nn;->fOK:I

    invoke-static {v3, v1}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nn;->fEA:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 47
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nn;->fEA:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nn;->fOL:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 50
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nn;->fOL:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nn;->etE:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 53
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nn;->etE:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/nn;->fOM:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 56
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/nn;->fOM:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_4
    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/protocal/a/nn;->fOD:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    return v0
.end method
