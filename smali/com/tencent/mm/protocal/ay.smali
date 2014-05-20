.class public final Lcom/tencent/mm/protocal/ay;
.super Lcom/tencent/mm/protocal/q;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/o;


# instance fields
.field public fyw:Lcom/tencent/mm/protocal/a/pc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/tencent/mm/protocal/q;-><init>()V

    .line 38
    new-instance v0, Lcom/tencent/mm/protocal/a/pc;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/pc;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    return-void
.end method


# virtual methods
.method public final getCmdId()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public final s([B)I
    .locals 1
    .parameter

    .prologue
    .line 42
    new-instance v0, Lcom/tencent/mm/protocal/a/pc;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/pc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/pc;->bH([B)Lcom/tencent/mm/protocal/a/pc;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    .line 43
    iget-object v0, p0, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/pc;->ayf()Lcom/tencent/mm/protocal/a/av;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/protocal/m;->a(Lcom/tencent/mm/protocal/q;Lcom/tencent/mm/protocal/a/av;)V

    .line 44
    iget-object v0, p0, Lcom/tencent/mm/protocal/ay;->fyw:Lcom/tencent/mm/protocal/a/pc;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/pc;->ayf()Lcom/tencent/mm/protocal/a/av;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mm/protocal/a/av;->fAY:I

    return v0
.end method
