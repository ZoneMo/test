.class public final Lcom/tencent/mm/protocal/a/aah;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fGe:I

.field public fGf:J

.field public fIw:I

.field public fIx:Lcom/tencent/mm/protocal/a/rv;

.field public fVg:Ljava/lang/String;

.field public gal:Lcom/tencent/mm/protocal/a/zu;


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
    .line 42
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/aah;->fIx:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/aah;->gal:Lcom/tencent/mm/protocal/a/zu;

    if-nez v0, :cond_1

    .line 43
    :cond_0
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/aah;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_2

    .line 46
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/aah;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 47
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/aah;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/aah;->fVg:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 50
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/aah;->fVg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 52
    :cond_3
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/aah;->fGe:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 53
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/aah;->fIx:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_4

    .line 54
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/aah;->fIx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 55
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/aah;->fIx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/aah;->gal:Lcom/tencent/mm/protocal/a/zu;

    if-eqz v0, :cond_5

    .line 58
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/aah;->gal:Lcom/tencent/mm/protocal/a/zu;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/zu;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 59
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/aah;->gal:Lcom/tencent/mm/protocal/a/zu;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/zu;->a(La/a/a/c/a;)V

    .line 61
    :cond_5
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/tencent/mm/protocal/a/aah;->fGf:J

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->k(IJ)V

    .line 62
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/aah;->fIw:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 63
    return-void
.end method

.method public final ns()I
    .locals 4

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 23
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/aah;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 24
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/aah;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/aah;->fVg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 27
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/aah;->fVg:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_1
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/aah;->fGe:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/aah;->fIx:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_2

    .line 31
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/aah;->fIx:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/aah;->gal:Lcom/tencent/mm/protocal/a/zu;

    if-eqz v1, :cond_3

    .line 34
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/aah;->gal:Lcom/tencent/mm/protocal/a/zu;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/zu;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_3
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/tencent/mm/protocal/a/aah;->fGf:J

    invoke-static {v1, v2, v3}, La/a/a/a;->i(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/aah;->fIw:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    return v0
.end method
