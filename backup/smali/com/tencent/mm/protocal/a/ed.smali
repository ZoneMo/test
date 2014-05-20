.class public final Lcom/tencent/mm/protocal/a/ed;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fES:I

.field public fET:Lcom/tencent/mm/protocal/a/ee;

.field public fEU:I

.field public fEV:Lcom/tencent/mm/protocal/a/ee;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ed;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 61
    packed-switch p2, :pswitch_data_0

    .line 107
    :goto_0
    return v0

    .line 63
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ed;->fES:I

    move v0, v1

    .line 64
    goto :goto_0

    .line 67
    :pswitch_1
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 69
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 70
    new-instance v5, Lcom/tencent/mm/protocal/a/ee;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/ee;-><init>()V

    .line 71
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ed;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 74
    :goto_2
    if-eqz v0, :cond_0

    .line 75
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ed;->a(La/a/a/a/a;)I

    move-result v0

    .line 76
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/ee;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ee;I)Z

    move-result v0

    goto :goto_2

    .line 78
    :cond_0
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ed;->fET:Lcom/tencent/mm/protocal/a/ee;

    .line 68
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 82
    goto :goto_0

    .line 85
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/a/ed;->fEU:I

    move v0, v1

    .line 86
    goto :goto_0

    .line 89
    :pswitch_3
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 90
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 91
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 92
    new-instance v5, Lcom/tencent/mm/protocal/a/ee;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/ee;-><init>()V

    .line 93
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ed;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 96
    :goto_4
    if-eqz v0, :cond_2

    .line 97
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ed;->a(La/a/a/a/a;)I

    move-result v0

    .line 98
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/ee;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ee;I)Z

    move-result v0

    goto :goto_4

    .line 100
    :cond_2
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ed;->fEV:Lcom/tencent/mm/protocal/a/ee;

    .line 90
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    .line 104
    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ed;->fET:Lcom/tencent/mm/protocal/a/ee;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ed;->fEV:Lcom/tencent/mm/protocal/a/ee;

    if-nez v0, :cond_1

    .line 31
    :cond_0
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/ed;->fES:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 34
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ed;->fET:Lcom/tencent/mm/protocal/a/ee;

    if-eqz v0, :cond_2

    .line 35
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ed;->fET:Lcom/tencent/mm/protocal/a/ee;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/ee;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 36
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ed;->fET:Lcom/tencent/mm/protocal/a/ee;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/ee;->a(La/a/a/c/a;)V

    .line 38
    :cond_2
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/ed;->fEU:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 39
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ed;->fEV:Lcom/tencent/mm/protocal/a/ee;

    if-eqz v0, :cond_3

    .line 40
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ed;->fEV:Lcom/tencent/mm/protocal/a/ee;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/ee;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 41
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ed;->fEV:Lcom/tencent/mm/protocal/a/ee;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/ee;->a(La/a/a/c/a;)V

    .line 43
    :cond_3
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/ed;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/ed;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/ed;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ed;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/ed;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ed;->fET:Lcom/tencent/mm/protocal/a/ee;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ed;->fEV:Lcom/tencent/mm/protocal/a/ee;

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
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/ed;->fES:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 19
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ed;->fET:Lcom/tencent/mm/protocal/a/ee;

    if-eqz v1, :cond_0

    .line 20
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ed;->fET:Lcom/tencent/mm/protocal/a/ee;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/ee;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_0
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/ed;->fEU:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ed;->fEV:Lcom/tencent/mm/protocal/a/ee;

    if-eqz v1, :cond_1

    .line 24
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ed;->fEV:Lcom/tencent/mm/protocal/a/ee;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/ee;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_1
    return v0
.end method
