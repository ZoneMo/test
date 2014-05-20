.class public final Lcom/tencent/mm/protocal/a/zp;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fGe:I

.field public fGf:J

.field public fUN:I

.field public fVg:Ljava/lang/String;

.field public fZI:Lcom/tencent/mm/protocal/a/aac;

.field public fZJ:Lcom/tencent/mm/protocal/a/aac;

.field public fZQ:I


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
    .line 48
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/zp;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zp;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 50
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/zp;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/zp;->fVg:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zp;->fVg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 55
    :cond_1
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/zp;->fGe:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 56
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/zp;->fZQ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 57
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/zp;->fZI:Lcom/tencent/mm/protocal/a/aac;

    if-eqz v0, :cond_2

    .line 58
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zp;->fZI:Lcom/tencent/mm/protocal/a/aac;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/aac;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 59
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/zp;->fZI:Lcom/tencent/mm/protocal/a/aac;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/aac;->a(La/a/a/c/a;)V

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/zp;->fZJ:Lcom/tencent/mm/protocal/a/aac;

    if-eqz v0, :cond_3

    .line 62
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zp;->fZJ:Lcom/tencent/mm/protocal/a/aac;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/aac;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 63
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/zp;->fZJ:Lcom/tencent/mm/protocal/a/aac;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/aac;->a(La/a/a/c/a;)V

    .line 65
    :cond_3
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/tencent/mm/protocal/a/zp;->fGf:J

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->k(IJ)V

    .line 66
    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/protocal/a/zp;->fUN:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 67
    return-void
.end method

.method public final ns()I
    .locals 4

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zp;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 26
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zp;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zp;->fVg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 29
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/zp;->fVg:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_1
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/zp;->fGe:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/zp;->fZQ:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zp;->fZI:Lcom/tencent/mm/protocal/a/aac;

    if-eqz v1, :cond_2

    .line 34
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/zp;->fZI:Lcom/tencent/mm/protocal/a/aac;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/aac;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/zp;->fZJ:Lcom/tencent/mm/protocal/a/aac;

    if-eqz v1, :cond_3

    .line 37
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/zp;->fZJ:Lcom/tencent/mm/protocal/a/aac;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/aac;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_3
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/tencent/mm/protocal/a/zp;->fGf:J

    invoke-static {v1, v2, v3}, La/a/a/a;->i(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/protocal/a/zp;->fUN:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    return v0
.end method
