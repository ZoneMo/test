.class public final Lcom/tencent/mm/protocal/bb;
.super Lcom/tencent/mm/protocal/q;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/o;


# instance fields
.field public fyy:Lcom/tencent/mm/protocal/a/sq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tencent/mm/protocal/q;-><init>()V

    .line 30
    new-instance v0, Lcom/tencent/mm/protocal/a/sq;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/sq;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/bb;->fyy:Lcom/tencent/mm/protocal/a/sq;

    return-void
.end method


# virtual methods
.method public final s([B)I
    .locals 1
    .parameter

    .prologue
    .line 34
    new-instance v0, Lcom/tencent/mm/protocal/a/sq;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/sq;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/sq;->bQ([B)Lcom/tencent/mm/protocal/a/sq;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/bb;->fyy:Lcom/tencent/mm/protocal/a/sq;

    .line 35
    iget-object v0, p0, Lcom/tencent/mm/protocal/bb;->fyy:Lcom/tencent/mm/protocal/a/sq;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/sq;->ayf()Lcom/tencent/mm/protocal/a/av;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/protocal/m;->a(Lcom/tencent/mm/protocal/q;Lcom/tencent/mm/protocal/a/av;)V

    .line 36
    iget-object v0, p0, Lcom/tencent/mm/protocal/bb;->fyy:Lcom/tencent/mm/protocal/a/sq;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/sq;->ayf()Lcom/tencent/mm/protocal/a/av;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mm/protocal/a/av;->fAY:I

    return v0
.end method
