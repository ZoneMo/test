.class public final Lcom/tencent/mm/protocal/a/jq;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fEv:Ljava/lang/String;

.field public fLK:Ljava/lang/String;

.field public fLL:I

.field public fLM:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/protocal/a/rs;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/jq;->fLM:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 3
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/jq;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/jq;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 39
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/jq;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/jq;->fLK:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 42
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/jq;->fLK:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 44
    :cond_1
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/jq;->fLL:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 45
    const/4 v0, 0x4

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/jq;->fLM:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 46
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/jq;->fEv:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 47
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/jq;->fEv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 49
    :cond_2
    return-void
.end method

.method public final ns()I
    .locals 4

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/jq;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 20
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/jq;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/jq;->fLK:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 23
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/jq;->fLK:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_1
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/jq;->fLL:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    const/4 v1, 0x4

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/tencent/mm/protocal/a/jq;->fLM:Ljava/util/LinkedList;

    invoke-static {v1, v2, v3}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/jq;->fEv:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 28
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/jq;->fEv:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_2
    return v0
.end method
