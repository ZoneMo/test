.class public final Lcom/tencent/mm/protocal/a/yv;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fBM:Ljava/lang/String;

.field public fZi:Lcom/tencent/mm/protocal/a/qh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/yv;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 52
    packed-switch p2, :pswitch_data_0

    .line 76
    :goto_0
    return v0

    .line 54
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/a/yv;->fBM:Ljava/lang/String;

    move v0, v1

    .line 55
    goto :goto_0

    .line 58
    :pswitch_1
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 60
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 61
    new-instance v5, Lcom/tencent/mm/protocal/a/qh;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/qh;-><init>()V

    .line 62
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/yv;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 65
    :goto_2
    if-eqz v0, :cond_0

    .line 66
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/yv;->a(La/a/a/a/a;)I

    move-result v0

    .line 67
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/qh;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/qh;I)Z

    move-result v0

    goto :goto_2

    .line 69
    :cond_0
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/yv;->fZi:Lcom/tencent/mm/protocal/a/qh;

    .line 59
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 73
    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yv;->fZi:Lcom/tencent/mm/protocal/a/qh;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yv;->fBM:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 28
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yv;->fBM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yv;->fZi:Lcom/tencent/mm/protocal/a/qh;

    if-eqz v0, :cond_2

    .line 31
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yv;->fZi:Lcom/tencent/mm/protocal/a/qh;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/qh;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 32
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yv;->fZi:Lcom/tencent/mm/protocal/a/qh;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/qh;->a(La/a/a/c/a;)V

    .line 34
    :cond_2
    return-void
.end method

.method public final ce([B)Lcom/tencent/mm/protocal/a/yv;
    .locals 2
    .parameter

    .prologue
    .line 36
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/yv;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 37
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/yv;->a(La/a/a/a/a;)I

    move-result v0

    .line 39
    :goto_0
    if-lez v0, :cond_1

    .line 40
    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/yv;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/yv;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    .line 43
    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/yv;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yv;->fZi:Lcom/tencent/mm/protocal/a/qh;

    if-nez v0, :cond_2

    .line 47
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    return-object p0
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/yv;->ce([B)Lcom/tencent/mm/protocal/a/yv;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 14
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yv;->fBM:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yv;->fBM:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yv;->fZi:Lcom/tencent/mm/protocal/a/qh;

    if-eqz v1, :cond_1

    .line 18
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yv;->fZi:Lcom/tencent/mm/protocal/a/qh;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/qh;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_1
    return v0
.end method