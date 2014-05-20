.class public final Lcom/tencent/mm/j/c;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public bQs:Ljava/lang/String;

.field public bQt:Ljava/lang/String;

.field public bXF:Ljava/lang/String;

.field public cgS:Ljava/util/LinkedList;

.field public che:Ljava/util/LinkedList;

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/j/c;->che:Ljava/util/LinkedList;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/j/c;->cgS:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 3
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/j/c;->type:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 48
    iget-object v0, p0, Lcom/tencent/mm/j/c;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/j/c;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/j/c;->bQs:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 52
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/j/c;->bQs:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/j/c;->bQt:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 55
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/j/c;->bQt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/j/c;->bXF:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 58
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/j/c;->bXF:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 60
    :cond_3
    const/4 v0, 0x6

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/j/c;->che:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 61
    return-void
.end method

.method public final m([B)Lcom/tencent/mm/j/c;
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 63
    new-instance v4, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/j/c;->fxi:La/a/a/a/a/b;

    invoke-direct {v4, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 64
    invoke-static {v4}, Lcom/tencent/mm/j/c;->a(La/a/a/a/a;)I

    move-result v0

    .line 66
    :goto_0
    if-lez v0, :cond_3

    .line 67
    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    .line 68
    invoke-virtual {v4}, La/a/a/a/a;->aPZ()V

    .line 70
    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/j/c;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 67
    :pswitch_0
    invoke-virtual {v4}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/j/c;->type:I

    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/j/c;->name:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/j/c;->bQs:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_3
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/j/c;->bQt:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {v4}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/j/c;->bXF:Ljava/lang/String;

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

    new-instance v7, Lcom/tencent/mm/j/d;

    invoke-direct {v7}, Lcom/tencent/mm/j/d;-><init>()V

    new-instance v8, La/a/a/a/a;

    sget-object v9, Lcom/tencent/mm/j/c;->fxi:La/a/a/a/a/b;

    invoke-direct {v8, v0, v9}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/j/c;->a(La/a/a/a/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/j/d;->a(La/a/a/a/a;Lcom/tencent/mm/j/d;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/j/c;->che:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    .line 73
    :cond_3
    return-object p0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/tencent/mm/j/c;->m([B)Lcom/tencent/mm/j/c;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 4

    .prologue
    .line 28
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/j/c;->type:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 30
    iget-object v1, p0, Lcom/tencent/mm/j/c;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 31
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/j/c;->name:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/j/c;->bQs:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 34
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/j/c;->bQs:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/j/c;->bQt:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 37
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/j/c;->bQt:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/j/c;->bXF:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 40
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/j/c;->bXF:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_3
    const/4 v1, 0x6

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/tencent/mm/j/c;->che:Ljava/util/LinkedList;

    invoke-static {v1, v2, v3}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    return v0
.end method
