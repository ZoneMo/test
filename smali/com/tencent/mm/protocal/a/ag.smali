.class public final Lcom/tencent/mm/protocal/a/ag;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public dGR:I

.field public fAE:I

.field public fAF:I

.field public fAG:I

.field public fAH:I

.field public fAi:Ljava/lang/String;

.field public fAj:I

.field public fzT:Ljava/lang/String;


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
    .line 49
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ag;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ag;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 51
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ag;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ag;->fAi:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ag;->fAi:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 56
    :cond_1
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/ag;->fAj:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 57
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ag;->fzT:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 58
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ag;->fzT:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 60
    :cond_2
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/ag;->fAE:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 61
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/ag;->fAF:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 62
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/ag;->fAG:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 63
    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/protocal/a/ag;->dGR:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 64
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/ag;->fAH:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 65
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ag;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 28
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ag;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ag;->fAi:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 31
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ag;->fAi:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_1
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/ag;->fAj:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ag;->fzT:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 35
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ag;->fzT:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_2
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/ag;->fAE:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/ag;->fAF:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/ag;->fAG:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/protocal/a/ag;->dGR:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/ag;->fAH:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    return v0
.end method
