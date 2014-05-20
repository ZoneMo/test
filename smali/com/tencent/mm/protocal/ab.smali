.class public final Lcom/tencent/mm/protocal/ab;
.super Lcom/tencent/mm/protocal/q;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/o;


# instance fields
.field public fyi:Lcom/tencent/mm/protocal/a/eq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/mm/protocal/q;-><init>()V

    .line 28
    new-instance v0, Lcom/tencent/mm/protocal/a/eq;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/eq;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/ab;->fyi:Lcom/tencent/mm/protocal/a/eq;

    return-void
.end method


# virtual methods
.method public final s([B)I
    .locals 1
    .parameter

    .prologue
    .line 32
    new-instance v0, Lcom/tencent/mm/protocal/a/eq;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/eq;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/eq;->aR([B)Lcom/tencent/mm/protocal/a/eq;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/ab;->fyi:Lcom/tencent/mm/protocal/a/eq;

    .line 33
    iget-object v0, p0, Lcom/tencent/mm/protocal/ab;->fyi:Lcom/tencent/mm/protocal/a/eq;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/eq;->ayf()Lcom/tencent/mm/protocal/a/av;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/protocal/m;->a(Lcom/tencent/mm/protocal/q;Lcom/tencent/mm/protocal/a/av;)V

    .line 34
    iget-object v0, p0, Lcom/tencent/mm/protocal/ab;->fyi:Lcom/tencent/mm/protocal/a/eq;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/eq;->ayf()Lcom/tencent/mm/protocal/a/av;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mm/protocal/a/av;->fAY:I

    return v0
.end method
