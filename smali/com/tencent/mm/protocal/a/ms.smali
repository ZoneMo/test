.class public final Lcom/tencent/mm/protocal/a/ms;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fBj:I

.field public fNA:Ljava/lang/String;

.field public fNB:Ljava/lang/String;

.field public fNC:I

.field public fNH:Ljava/lang/String;

.field public fNI:I

.field public fNJ:I

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
    .line 57
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ms;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ms;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 59
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ms;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 61
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/ms;->fBj:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 62
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/ms;->fNx:F

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->c(IF)V

    .line 63
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/ms;->fNy:F

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->c(IF)V

    .line 64
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/ms;->fNz:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 65
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ms;->fNA:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 66
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ms;->fNA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ms;->fNB:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 69
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ms;->fNB:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 71
    :cond_2
    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/protocal/a/ms;->fNC:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 72
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ms;->fNH:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 73
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ms;->fNH:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 75
    :cond_3
    const/16 v0, 0xa

    iget v1, p0, Lcom/tencent/mm/protocal/a/ms;->fNI:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 76
    const/16 v0, 0xb

    iget v1, p0, Lcom/tencent/mm/protocal/a/ms;->fNJ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 77
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ms;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 32
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ms;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 34
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/ms;->fBj:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/ms;->fNx:F

    invoke-static {v1}, La/a/a/a;->oK(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/ms;->fNy:F

    invoke-static {v1}, La/a/a/a;->oK(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/ms;->fNz:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ms;->fNA:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 39
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ms;->fNA:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ms;->fNB:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 42
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ms;->fNB:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_2
    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/protocal/a/ms;->fNC:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ms;->fNH:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 46
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ms;->fNH:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    :cond_3
    const/16 v1, 0xa

    iget v2, p0, Lcom/tencent/mm/protocal/a/ms;->fNI:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    const/16 v1, 0xb

    iget v2, p0, Lcom/tencent/mm/protocal/a/ms;->fNJ:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    return v0
.end method
