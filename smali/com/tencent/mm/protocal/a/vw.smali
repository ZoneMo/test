.class public final Lcom/tencent/mm/protocal/a/vw;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fXn:Lcom/tencent/mm/protocal/a/vu;

.field public fXo:Lcom/tencent/mm/protocal/a/vt;


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
    .line 28
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vw;->fXn:Lcom/tencent/mm/protocal/a/vu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vw;->fXo:Lcom/tencent/mm/protocal/a/vt;

    if-nez v0, :cond_1

    .line 29
    :cond_0
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vw;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_2

    .line 32
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vw;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 33
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vw;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vw;->fXn:Lcom/tencent/mm/protocal/a/vu;

    if-eqz v0, :cond_3

    .line 36
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vw;->fXn:Lcom/tencent/mm/protocal/a/vu;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/vu;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 37
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vw;->fXn:Lcom/tencent/mm/protocal/a/vu;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/vu;->a(La/a/a/c/a;)V

    .line 39
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vw;->fXo:Lcom/tencent/mm/protocal/a/vt;

    if-eqz v0, :cond_4

    .line 40
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vw;->fXo:Lcom/tencent/mm/protocal/a/vt;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/vt;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 41
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vw;->fXo:Lcom/tencent/mm/protocal/a/vt;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/vt;->a(La/a/a/c/a;)V

    .line 43
    :cond_4
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x0

    .line 15
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vw;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 16
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vw;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vw;->fXn:Lcom/tencent/mm/protocal/a/vu;

    if-eqz v1, :cond_1

    .line 19
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/vw;->fXn:Lcom/tencent/mm/protocal/a/vu;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/vu;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vw;->fXo:Lcom/tencent/mm/protocal/a/vt;

    if-eqz v1, :cond_2

    .line 22
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/vw;->fXo:Lcom/tencent/mm/protocal/a/vt;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/vt;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_2
    return v0
.end method
