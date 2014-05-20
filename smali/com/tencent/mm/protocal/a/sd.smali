.class public final Lcom/tencent/mm/protocal/a/sd;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fAE:I

.field public fAK:I

.field public fCb:I

.field public fLI:I

.field public fRA:Lcom/tencent/mm/protocal/a/rv;

.field public fRB:I

.field public fRE:I

.field public fRz:I


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
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sd;->fRA:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sd;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_1

    .line 48
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sd;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 49
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sd;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 51
    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/sd;->fRz:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 52
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sd;->fRA:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_2

    .line 53
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sd;->fRA:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 54
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/sd;->fRA:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 56
    :cond_2
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/sd;->fLI:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 57
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/sd;->fAE:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 58
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/sd;->fAK:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 59
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/sd;->fRB:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 60
    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/protocal/a/sd;->fCb:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 61
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/sd;->fRE:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 62
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sd;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 28
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sd;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 30
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/sd;->fRz:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/sd;->fRA:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_1

    .line 32
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/sd;->fRA:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_1
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/sd;->fLI:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/sd;->fAE:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/sd;->fAK:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/sd;->fRB:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/protocal/a/sd;->fCb:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/sd;->fRE:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    return v0
.end method
