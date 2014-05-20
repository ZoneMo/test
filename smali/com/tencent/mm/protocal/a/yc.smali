.class public final Lcom/tencent/mm/protocal/a/yc;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fAJ:Lcom/tencent/mm/protocal/a/rv;

.field public fAL:I

.field public fAU:I

.field public fEd:I

.field public fYt:Lcom/tencent/mm/protocal/a/rw;

.field public fYu:Lcom/tencent/mm/protocal/a/rw;

.field public fYv:I


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
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yc;->fYt:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yc;->fYu:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yc;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_1

    .line 46
    :cond_0
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yc;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_2

    .line 49
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yc;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 50
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yc;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yc;->fYt:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_3

    .line 53
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yc;->fYt:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 54
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yc;->fYt:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yc;->fYu:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_4

    .line 57
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yc;->fYu:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 58
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yc;->fYu:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 60
    :cond_4
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/yc;->fAL:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 61
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/yc;->fEd:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 62
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/yc;->fAU:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 63
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yc;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_5

    .line 64
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yc;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 65
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yc;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 67
    :cond_5
    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/protocal/a/yc;->fYv:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 68
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yc;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 26
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yc;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yc;->fYt:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_1

    .line 29
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yc;->fYt:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yc;->fYu:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_2

    .line 32
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yc;->fYu:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_2
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/yc;->fAL:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/yc;->fEd:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/yc;->fAU:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yc;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_3

    .line 38
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yc;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_3
    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/protocal/a/yc;->fYv:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    return v0
.end method
