.class public final Lcom/tencent/mm/protocal/a/jo;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public dGR:I

.field public fAC:I

.field public fAD:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/protocal/a/rs;-><init>()V

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/jo;->fAD:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 3
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/jo;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/jo;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 32
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/jo;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 34
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/jo;->fAC:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 35
    const/4 v0, 0x3

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/jo;->fAD:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 36
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/jo;->dGR:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 37
    return-void
.end method

.method public final ns()I
    .locals 4

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 17
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/jo;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 18
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/jo;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 20
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/jo;->fAC:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    const/4 v1, 0x3

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/tencent/mm/protocal/a/jo;->fAD:Ljava/util/LinkedList;

    invoke-static {v1, v2, v3}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/jo;->dGR:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    return v0
.end method
