.class public final Lcom/tencent/mm/protocal/a/ev;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fFt:Lcom/tencent/mm/protocal/a/fb;

.field public fFu:Lcom/tencent/mm/protocal/a/ew;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ev;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 53
    packed-switch p2, :pswitch_data_0

    .line 91
    :goto_0
    return v0

    .line 55
    :pswitch_0
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 57
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 58
    new-instance v5, Lcom/tencent/mm/protocal/a/fb;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/fb;-><init>()V

    .line 59
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ev;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 62
    :goto_2
    if-eqz v0, :cond_0

    .line 63
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ev;->a(La/a/a/a/a;)I

    move-result v0

    .line 64
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/fb;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/fb;I)Z

    move-result v0

    goto :goto_2

    .line 66
    :cond_0
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ev;->fFt:Lcom/tencent/mm/protocal/a/fb;

    .line 56
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 70
    goto :goto_0

    .line 73
    :pswitch_1
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_3
    if-ge v2, v4, :cond_3

    .line 75
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 76
    new-instance v5, Lcom/tencent/mm/protocal/a/ew;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/ew;-><init>()V

    .line 77
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/ev;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 80
    :goto_4
    if-eqz v0, :cond_2

    .line 81
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/ev;->a(La/a/a/a/a;)I

    move-result v0

    .line 82
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/ew;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ew;I)Z

    move-result v0

    goto :goto_4

    .line 84
    :cond_2
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/ev;->fFu:Lcom/tencent/mm/protocal/a/ew;

    .line 74
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    .line 88
    goto :goto_0

    .line 53
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
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ev;->fFt:Lcom/tencent/mm/protocal/a/fb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ev;->fFu:Lcom/tencent/mm/protocal/a/ew;

    if-nez v0, :cond_1

    .line 25
    :cond_0
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ev;->fFt:Lcom/tencent/mm/protocal/a/fb;

    if-eqz v0, :cond_2

    .line 28
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ev;->fFt:Lcom/tencent/mm/protocal/a/fb;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/fb;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 29
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ev;->fFt:Lcom/tencent/mm/protocal/a/fb;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/fb;->a(La/a/a/c/a;)V

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ev;->fFu:Lcom/tencent/mm/protocal/a/ew;

    if-eqz v0, :cond_3

    .line 32
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ev;->fFu:Lcom/tencent/mm/protocal/a/ew;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/ew;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 33
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ev;->fFu:Lcom/tencent/mm/protocal/a/ew;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/ew;->a(La/a/a/c/a;)V

    .line 35
    :cond_3
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/ev;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/ev;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/ev;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/ev;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/ev;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ev;->fFt:Lcom/tencent/mm/protocal/a/fb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ev;->fFu:Lcom/tencent/mm/protocal/a/ew;

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
    .line 13
    const/4 v0, 0x0

    .line 14
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ev;->fFt:Lcom/tencent/mm/protocal/a/fb;

    if-eqz v1, :cond_0

    .line 15
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ev;->fFt:Lcom/tencent/mm/protocal/a/fb;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/fb;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ev;->fFu:Lcom/tencent/mm/protocal/a/ew;

    if-eqz v1, :cond_1

    .line 18
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ev;->fFu:Lcom/tencent/mm/protocal/a/ew;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/ew;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_1
    return v0
.end method
