.class public final Lcom/tencent/mm/protocal/a/gm;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fAC:I

.field public fIL:Ljava/lang/String;

.field public fIR:I

.field public fIS:Ljava/util/LinkedList;

.field public fIT:I

.field public fIU:I

.field public fIV:I

.field public fIW:I

.field public fIX:Ljava/util/LinkedList;

.field public fIY:I

.field public fIZ:I

.field public fJa:I

.field public fJb:I

.field public fJc:I

.field public fyR:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/protocal/a/rs;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/gm;->fIS:Ljava/util/LinkedList;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/gm;->fIX:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 70
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gm;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gm;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 72
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gm;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gm;->fyR:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 75
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gm;->fyR:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 77
    :cond_1
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/gm;->fAC:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 78
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gm;->fIS:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 79
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/gm;->fIT:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 80
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/gm;->fIU:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 81
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gm;->fIL:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 82
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gm;->fIL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 84
    :cond_2
    iget v0, p0, Lcom/tencent/mm/protocal/a/gm;->fIV:I

    invoke-virtual {p1, v2, v0}, La/a/a/c/a;->by(II)V

    .line 85
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/gm;->fIW:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 86
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gm;->fIX:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 87
    const/16 v0, 0xb

    iget v1, p0, Lcom/tencent/mm/protocal/a/gm;->fIY:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 88
    const/16 v0, 0xc

    iget v1, p0, Lcom/tencent/mm/protocal/a/gm;->fIZ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 89
    const/16 v0, 0xd

    iget v1, p0, Lcom/tencent/mm/protocal/a/gm;->fJa:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 90
    const/16 v0, 0xe

    iget v1, p0, Lcom/tencent/mm/protocal/a/gm;->fJb:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 91
    const/16 v0, 0xf

    iget v1, p0, Lcom/tencent/mm/protocal/a/gm;->fIR:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 92
    const/16 v0, 0x10

    iget v1, p0, Lcom/tencent/mm/protocal/a/gm;->fJc:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 93
    return-void
.end method

.method public final ba([B)Lcom/tencent/mm/protocal/a/gm;
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 95
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gm;->fIS:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gm;->fIX:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 97
    new-instance v4, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/gm;->fxi:La/a/a/a/a/b;

    invoke-direct {v4, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 98
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/gm;->a(La/a/a/a/a;)I

    move-result v0

    .line 100
    :goto_0
    if-lez v0, :cond_7

    .line 101
    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    .line 102
    invoke-virtual {v4}, La/a/a/a/a;->aPZ()V

    .line 104
    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/gm;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 101
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

    new-instance v7, Lcom/tencent/mm/protocal/a/au;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/au;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/gm;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/gm;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/au;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/gm;->fTY:Lcom/tencent/mm/protocal/a/au;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/gm;->fyR:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/gm;->fAC:I

    move v0, v1

    goto :goto_1

    :pswitch_3
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

    new-instance v7, Lcom/tencent/mm/protocal/a/fc;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/fc;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/gm;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_5
    if-eqz v0, :cond_3

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/gm;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/fc;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/fc;I)Z

    move-result v0

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gm;->fIS:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/gm;->fIT:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/gm;->fIU:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/gm;->fIL:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/gm;->fIV:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/gm;->fIW:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_9
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

    new-instance v7, Lcom/tencent/mm/protocal/a/gj;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/gj;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/gm;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_7
    if-eqz v0, :cond_5

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/gm;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/gj;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/gj;I)Z

    move-result v0

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gm;->fIX:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_6
    move v0, v1

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/gm;->fIY:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/gm;->fIZ:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/gm;->fJa:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/gm;->fJb:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/gm;->fIR:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/gm;->fJc:I

    move v0, v1

    goto/16 :goto_1

    .line 110
    :cond_7
    return-object p0

    .line 101
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
    .end packed-switch
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/gm;->ba([B)Lcom/tencent/mm/protocal/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 40
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gm;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 42
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gm;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gm;->fyR:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 45
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/gm;->fyR:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_1
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/gm;->fAC:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/gm;->fIS:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/gm;->fIT:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/gm;->fIU:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gm;->fIL:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 52
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/gm;->fIL:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_2
    iget v1, p0, Lcom/tencent/mm/protocal/a/gm;->fIV:I

    invoke-static {v3, v1}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/gm;->fIW:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/gm;->fIX:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    const/16 v1, 0xb

    iget v2, p0, Lcom/tencent/mm/protocal/a/gm;->fIY:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    const/16 v1, 0xc

    iget v2, p0, Lcom/tencent/mm/protocal/a/gm;->fIZ:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/protocal/a/gm;->fJa:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    const/16 v1, 0xe

    iget v2, p0, Lcom/tencent/mm/protocal/a/gm;->fJb:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    const/16 v1, 0xf

    iget v2, p0, Lcom/tencent/mm/protocal/a/gm;->fIR:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    const/16 v1, 0x10

    iget v2, p0, Lcom/tencent/mm/protocal/a/gm;->fJc:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    return v0
.end method
