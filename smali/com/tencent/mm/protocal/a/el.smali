.class public final Lcom/tencent/mm/protocal/a/el;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fAL:I

.field public fEd:I

.field public fFg:I

.field public fFh:I

.field public fzo:I


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
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/el;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/el;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 38
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/el;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 40
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/el;->fzo:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 41
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/el;->fAL:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 42
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/el;->fEd:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 43
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/el;->fFg:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 44
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/el;->fFh:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 45
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 21
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/el;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 22
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/el;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 24
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/el;->fzo:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/el;->fAL:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/el;->fEd:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/el;->fFg:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/el;->fFh:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    return v0
.end method
