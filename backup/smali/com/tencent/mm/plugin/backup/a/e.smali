.class public final Lcom/tencent/mm/plugin/backup/a/e;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public cIK:I

.field public cIZ:I

.field public cJa:Ljava/lang/String;

.field public cJb:I

.field public cJg:I

.field public cJl:Ljava/util/LinkedList;

.field public cJm:Ljava/util/LinkedList;

.field public cJn:Ljava/util/LinkedList;

.field public cJo:Ljava/lang/String;

.field public cJp:I

.field public cJq:I

.field public cJr:I

.field public cJs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJl:Ljava/util/LinkedList;

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJm:Ljava/util/LinkedList;

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJn:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final E([B)Lcom/tencent/mm/plugin/backup/a/e;
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 76
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJl:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 77
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 78
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJn:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 79
    new-instance v4, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/plugin/backup/a/e;->fxi:La/a/a/a/a/b;

    invoke-direct {v4, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 80
    invoke-static {v4}, Lcom/tencent/mm/plugin/backup/a/e;->a(La/a/a/a/a;)I

    move-result v0

    .line 82
    :goto_0
    if-lez v0, :cond_5

    .line 83
    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    .line 84
    invoke-virtual {v4}, La/a/a/a/a;->aPZ()V

    .line 86
    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/plugin/backup/a/e;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 83
    :pswitch_0
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cIZ:I

    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJa:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJb:I

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

    new-instance v7, Lcom/tencent/mm/plugin/backup/a/d;

    invoke-direct {v7}, Lcom/tencent/mm/plugin/backup/a/d;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/plugin/backup/a/e;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/plugin/backup/a/e;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/plugin/backup/a/d;->a(La/a/a/a/a;Lcom/tencent/mm/plugin/backup/a/d;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJl:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_4
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

    new-instance v7, Lcom/tencent/mm/plugin/backup/a/g;

    invoke-direct {v7}, Lcom/tencent/mm/plugin/backup/a/g;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/plugin/backup/a/e;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_5
    if-eqz v0, :cond_3

    invoke-static {v8}, Lcom/tencent/mm/plugin/backup/a/e;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/plugin/backup/a/g;->a(La/a/a/a/a;Lcom/tencent/mm/plugin/backup/a/g;I)Z

    move-result v0

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJm:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_4
    move v0, v1

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJn:Ljava/util/LinkedList;

    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJo:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJp:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJq:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cIK:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJg:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJr:I

    move v0, v1

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJs:I

    move v0, v1

    goto/16 :goto_1

    .line 89
    :cond_5
    return-object p0

    .line 83
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
    .end packed-switch
.end method

.method public final a(La/a/a/c/a;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    .line 57
    iget v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cIZ:I

    invoke-virtual {p1, v3, v0}, La/a/a/c/a;->by(II)V

    .line 58
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJa:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJa:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 61
    :cond_0
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJb:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 62
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJl:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 63
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJm:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 64
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJn:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v3, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 65
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 66
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 68
    :cond_1
    iget v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJp:I

    invoke-virtual {p1, v2, v0}, La/a/a/c/a;->by(II)V

    .line 69
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJq:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 70
    const/16 v0, 0xa

    iget v1, p0, Lcom/tencent/mm/plugin/backup/a/e;->cIK:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 71
    const/16 v0, 0xb

    iget v1, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJg:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 72
    const/16 v0, 0xc

    iget v1, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJr:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 73
    const/16 v0, 0xd

    iget v1, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJs:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 74
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/backup/a/e;->E([B)Lcom/tencent/mm/plugin/backup/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 35
    iget v0, p0, Lcom/tencent/mm/plugin/backup/a/e;->cIZ:I

    invoke-static {v4, v0}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 37
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJa:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 38
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJa:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_0
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJb:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJl:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJm:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJn:Ljava/util/LinkedList;

    invoke-static {v1, v4, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    iget-object v1, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJo:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 45
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJo:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_1
    iget v1, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJp:I

    invoke-static {v3, v1}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJq:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    const/16 v1, 0xa

    iget v2, p0, Lcom/tencent/mm/plugin/backup/a/e;->cIK:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    const/16 v1, 0xb

    iget v2, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJg:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    const/16 v1, 0xc

    iget v2, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJr:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/plugin/backup/a/e;->cJs:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    return v0
.end method
