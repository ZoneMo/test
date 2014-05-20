.class public final Lcom/tencent/mm/protocal/a/tu;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fBj:I

.field public fNA:Ljava/lang/String;

.field public fNB:Ljava/lang/String;

.field public fNC:I

.field public fNx:F

.field public fNy:F

.field public fNz:I

.field public fUK:I

.field public fUW:I


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
    .line 52
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tu;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tu;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 54
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tu;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 56
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/tu;->fBj:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 57
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/tu;->fNx:F

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->c(IF)V

    .line 58
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/tu;->fNy:F

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->c(IF)V

    .line 59
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/tu;->fNz:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 60
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tu;->fNA:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tu;->fNA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/tu;->fNB:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 64
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tu;->fNB:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 66
    :cond_2
    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/protocal/a/tu;->fUK:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 67
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/tu;->fUW:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 68
    const/16 v0, 0xa

    iget v1, p0, Lcom/tencent/mm/protocal/a/tu;->fNC:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 69
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tu;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 30
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tu;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 32
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/tu;->fBj:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/tu;->fNx:F

    invoke-static {v1}, La/a/a/a;->oK(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/tu;->fNy:F

    invoke-static {v1}, La/a/a/a;->oK(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/tu;->fNz:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tu;->fNA:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 37
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tu;->fNA:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/tu;->fNB:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 40
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/tu;->fNB:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_2
    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/protocal/a/tu;->fUK:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/tu;->fUW:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    const/16 v1, 0xa

    iget v2, p0, Lcom/tencent/mm/protocal/a/tu;->fNC:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    return v0
.end method
