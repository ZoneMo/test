.class public final Lcom/tencent/mm/protocal/a/vy;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fXr:I

.field public fzT:Ljava/lang/String;

.field public fzp:Ljava/lang/String;

.field public fzq:Ljava/lang/String;


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
    .line 39
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vy;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vy;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 41
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vy;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 43
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/vy;->fXr:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 44
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vy;->fzp:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 45
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vy;->fzp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vy;->fzq:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 48
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vy;->fzq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vy;->fzT:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 51
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vy;->fzT:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 53
    :cond_3
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vy;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 20
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vy;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 22
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/vy;->fXr:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vy;->fzp:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 24
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/vy;->fzp:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vy;->fzq:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 27
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/vy;->fzq:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vy;->fzT:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 30
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/vy;->fzT:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_3
    return v0
.end method
