.class public final Lcom/tencent/mm/protocal/a/mn;
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
    .line 46
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mn;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mn;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 48
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mn;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 50
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/mn;->fBj:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 51
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/mn;->fNx:F

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->c(IF)V

    .line 52
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/mn;->fNy:F

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->c(IF)V

    .line 53
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/mn;->fNz:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 54
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mn;->fNA:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 55
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mn;->fNA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/mn;->fNB:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 58
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mn;->fNB:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 60
    :cond_2
    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/protocal/a/mn;->fNC:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 61
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mn;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 26
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mn;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 28
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/mn;->fBj:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/mn;->fNx:F

    invoke-static {v1}, La/a/a/a;->oK(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/mn;->fNy:F

    invoke-static {v1}, La/a/a/a;->oK(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/mn;->fNz:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mn;->fNA:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 33
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mn;->fNA:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/mn;->fNB:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 36
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/mn;->fNB:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_2
    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/protocal/a/mn;->fNC:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    return v0
.end method
