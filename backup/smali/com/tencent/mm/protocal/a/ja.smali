.class public final Lcom/tencent/mm/protocal/a/ja;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fCX:Ljava/lang/String;

.field public fLf:Ljava/lang/String;

.field public fLg:Lcom/tencent/mm/protocal/a/n;


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
    .line 33
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ja;->fLg:Lcom/tencent/mm/protocal/a/n;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ja;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_1

    .line 37
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ja;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 38
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ja;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ja;->fLf:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 41
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ja;->fLf:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ja;->fCX:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 44
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ja;->fCX:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ja;->fLg:Lcom/tencent/mm/protocal/a/n;

    if-eqz v0, :cond_4

    .line 47
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ja;->fLg:Lcom/tencent/mm/protocal/a/n;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/n;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 48
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ja;->fLg:Lcom/tencent/mm/protocal/a/n;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/n;->a(La/a/a/c/a;)V

    .line 50
    :cond_4
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 17
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ja;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 18
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ja;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ja;->fLf:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 21
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ja;->fLf:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ja;->fCX:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 24
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ja;->fCX:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ja;->fLg:Lcom/tencent/mm/protocal/a/n;

    if-eqz v1, :cond_3

    .line 27
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ja;->fLg:Lcom/tencent/mm/protocal/a/n;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/n;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_3
    return v0
.end method
