.class public final Lcom/tencent/mm/protocal/a/gn;
.super Lcom/tencent/mm/protocal/a/rt;
.source "SourceFile"


# instance fields
.field public fAC:I

.field public fIM:I

.field public fIN:I

.field public fIR:I

.field public fJd:I

.field public fJe:Ljava/lang/String;

.field public fJf:I

.field public fJg:Ljava/util/LinkedList;

.field public fJh:Ljava/lang/String;

.field public fJi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/protocal/a/rt;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/gn;->fJg:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 54
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gn;->fTZ:Lcom/tencent/mm/protocal/a/av;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gn;->fTZ:Lcom/tencent/mm/protocal/a/av;

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gn;->fTZ:Lcom/tencent/mm/protocal/a/av;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/av;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 59
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gn;->fTZ:Lcom/tencent/mm/protocal/a/av;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/av;->a(La/a/a/c/a;)V

    .line 61
    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/gn;->fJd:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 62
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gn;->fJe:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 63
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gn;->fJe:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 65
    :cond_2
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/gn;->fJf:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 66
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/gn;->fIN:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 67
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/gn;->fIM:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 68
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/gn;->fAC:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 69
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gn;->fJg:Ljava/util/LinkedList;

    invoke-virtual {p1, v2, v2, v0}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 70
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gn;->fJh:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 71
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gn;->fJh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gn;->fJi:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 74
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gn;->fJi:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 76
    :cond_4
    const/16 v0, 0xd

    iget v1, p0, Lcom/tencent/mm/protocal/a/gn;->fIR:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 77
    return-void
.end method

.method public final bb([B)Lcom/tencent/mm/protocal/a/gn;
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gn;->fJg:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 80
    new-instance v4, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/gn;->fxi:La/a/a/a/a/b;

    invoke-direct {v4, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 81
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/gn;->a(La/a/a/a/a;)I

    move-result v0

    .line 83
    :goto_0
    if-lez v0, :cond_5

    .line 84
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    .line 85
    invoke-virtual {v4}, La/a/a/a/a;->aPZ()V

    .line 87
    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/protocal/a/gn;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 84
    :pswitch_1
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

    new-instance v7, Lcom/tencent/mm/protocal/a/av;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/av;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/gn;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/gn;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/av;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/av;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    iput-object v7, p0, Lcom/tencent/mm/protocal/a/gn;->fTZ:Lcom/tencent/mm/protocal/a/av;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/gn;->fJd:I

    move v0, v1

    goto :goto_1

    :pswitch_3
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/gn;->fJe:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/gn;->fJf:I

    move v0, v1

    goto :goto_1

    :pswitch_5
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/gn;->fIN:I

    move v0, v1

    goto :goto_1

    :pswitch_6
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/gn;->fIM:I

    move v0, v1

    goto :goto_1

    :pswitch_7
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/gn;->fAC:I

    move v0, v1

    goto :goto_1

    :pswitch_8
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

    new-instance v7, Lcom/tencent/mm/protocal/a/yq;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/a/yq;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/protocal/a/gn;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_5
    if-eqz v0, :cond_3

    invoke-static {v8}, Lcom/tencent/mm/protocal/a/gn;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/a/yq;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/yq;I)Z

    move-result v0

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gn;->fJg:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_4
    move v0, v1

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/gn;->fJh:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/gn;->fJi:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/a/gn;->fIR:I

    move v0, v1

    goto/16 :goto_1

    .line 90
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/gn;->fTZ:Lcom/tencent/mm/protocal/a/av;

    if-nez v0, :cond_6

    .line 91
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_6
    return-object p0

    .line 84
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
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/gn;->bb([B)Lcom/tencent/mm/protocal/a/gn;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 30
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gn;->fTZ:Lcom/tencent/mm/protocal/a/av;

    if-eqz v1, :cond_0

    .line 32
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gn;->fTZ:Lcom/tencent/mm/protocal/a/av;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/av;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 34
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/gn;->fJd:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gn;->fJe:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 36
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/gn;->fJe:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_1
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/gn;->fJf:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/gn;->fIN:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/gn;->fIM:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/gn;->fAC:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gn;->fJg:Ljava/util/LinkedList;

    invoke-static {v3, v3, v1}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gn;->fJh:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 44
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/gn;->fJh:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/gn;->fJi:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 47
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/gn;->fJi:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_3
    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/protocal/a/gn;->fIR:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    return v0
.end method
