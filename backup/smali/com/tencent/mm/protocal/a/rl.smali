.class public final Lcom/tencent/mm/protocal/a/rl;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fTx:Lcom/tencent/mm/protocal/a/re;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/protocal/a/rs;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rl;->fTx:Lcom/tencent/mm/protocal/a/re;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rl;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_1

    .line 27
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/rl;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 28
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rl;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rl;->fTx:Lcom/tencent/mm/protocal/a/re;

    if-eqz v0, :cond_2

    .line 31
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/rl;->fTx:Lcom/tencent/mm/protocal/a/re;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/re;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 32
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/rl;->fTx:Lcom/tencent/mm/protocal/a/re;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/re;->a(La/a/a/c/a;)V

    .line 34
    :cond_2
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x0

    .line 13
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/rl;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 14
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/rl;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/rl;->fTx:Lcom/tencent/mm/protocal/a/re;

    if-eqz v1, :cond_1

    .line 17
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/rl;->fTx:Lcom/tencent/mm/protocal/a/re;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/re;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_1
    return v0
.end method
