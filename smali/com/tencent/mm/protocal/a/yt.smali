.class public final Lcom/tencent/mm/protocal/a/yt;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fYT:Lcom/tencent/mm/protocal/a/yr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/yt;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 44
    packed-switch p2, :pswitch_data_0

    .line 64
    :goto_0
    return v0

    .line 46
    :pswitch_0
    invoke-virtual {p0, p2}, La/a/a/a/a;->oL(I)Ljava/util/LinkedList;

    move-result-object v3

    .line 47
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 48
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 49
    new-instance v5, Lcom/tencent/mm/protocal/a/yr;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/a/yr;-><init>()V

    .line 50
    new-instance v6, La/a/a/a/a;

    sget-object v7, Lcom/tencent/mm/protocal/a/yt;->fxi:La/a/a/a/a/b;

    invoke-direct {v6, v0, v7}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    move v0, v1

    .line 53
    :goto_2
    if-eqz v0, :cond_0

    .line 54
    invoke-static {v6}, Lcom/tencent/mm/protocal/a/yt;->a(La/a/a/a/a;)I

    move-result v0

    .line 55
    invoke-static {v6, v5, v0}, Lcom/tencent/mm/protocal/a/yr;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/yr;I)Z

    move-result v0

    goto :goto_2

    .line 57
    :cond_0
    iput-object v5, p1, Lcom/tencent/mm/protocal/a/yt;->fYT:Lcom/tencent/mm/protocal/a/yr;

    .line 47
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 61
    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yt;->fYT:Lcom/tencent/mm/protocal/a/yr;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yt;->fYT:Lcom/tencent/mm/protocal/a/yr;

    if-eqz v0, :cond_1

    .line 23
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yt;->fYT:Lcom/tencent/mm/protocal/a/yr;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/yr;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 24
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yt;->fYT:Lcom/tencent/mm/protocal/a/yr;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/yr;->a(La/a/a/c/a;)V

    .line 26
    :cond_1
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/yt;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/yt;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/yt;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/yt;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/yt;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yt;->fYT:Lcom/tencent/mm/protocal/a/yr;

    if-nez v0, :cond_2

    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p0
.end method

.method public final ns()I
    .locals 2

    .prologue
    .line 11
    const/4 v0, 0x0

    .line 12
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yt;->fYT:Lcom/tencent/mm/protocal/a/yr;

    if-eqz v1, :cond_0

    .line 13
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yt;->fYT:Lcom/tencent/mm/protocal/a/yr;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/yr;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 15
    :cond_0
    return v0
.end method
