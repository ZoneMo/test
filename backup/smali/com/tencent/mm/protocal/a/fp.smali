.class public final Lcom/tencent/mm/protocal/a/fp;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fGs:I

.field public fGt:Ljava/lang/String;

.field public fGu:Ljava/lang/String;


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
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fp;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fp;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 36
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fp;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 38
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/fp;->fGs:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 39
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fp;->fGt:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 40
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fp;->fGt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/fp;->fGu:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 43
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fp;->fGu:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 45
    :cond_2
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 17
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fp;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 18
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fp;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 20
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/fp;->fGs:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fp;->fGt:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 22
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/fp;->fGt:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/fp;->fGu:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 25
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/fp;->fGu:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_2
    return v0
.end method
