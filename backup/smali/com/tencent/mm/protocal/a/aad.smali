.class public final Lcom/tencent/mm/protocal/a/aad;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fGe:I

.field public fGf:J

.field public fVg:Ljava/lang/String;

.field public fZY:Lcom/tencent/mm/protocal/a/aaf;


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
    .locals 3
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/aad;->fZY:Lcom/tencent/mm/protocal/a/aaf;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/aad;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_1

    .line 38
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/aad;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 39
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/aad;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/aad;->fVg:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 42
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/aad;->fVg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 44
    :cond_2
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/aad;->fGe:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 45
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/tencent/mm/protocal/a/aad;->fGf:J

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->k(IJ)V

    .line 46
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/aad;->fZY:Lcom/tencent/mm/protocal/a/aaf;

    if-eqz v0, :cond_3

    .line 47
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/aad;->fZY:Lcom/tencent/mm/protocal/a/aaf;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/aaf;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 48
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/aad;->fZY:Lcom/tencent/mm/protocal/a/aaf;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/aaf;->a(La/a/a/c/a;)V

    .line 50
    :cond_3
    return-void
.end method

.method public final ns()I
    .locals 4

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/aad;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 20
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/aad;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/aad;->fVg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 23
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/aad;->fVg:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_1
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/aad;->fGe:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/tencent/mm/protocal/a/aad;->fGf:J

    invoke-static {v1, v2, v3}, La/a/a/a;->i(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/aad;->fZY:Lcom/tencent/mm/protocal/a/aaf;

    if-eqz v1, :cond_2

    .line 28
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/aad;->fZY:Lcom/tencent/mm/protocal/a/aaf;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/aaf;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_2
    return v0
.end method
