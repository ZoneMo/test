.class public final Lcom/tencent/mm/protocal/ah;
.super Lcom/tencent/mm/protocal/q;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/o;


# instance fields
.field public fym:Lcom/tencent/mm/protocal/a/kl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tencent/mm/protocal/q;-><init>()V

    .line 27
    new-instance v0, Lcom/tencent/mm/protocal/a/kl;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/kl;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/ah;->fym:Lcom/tencent/mm/protocal/a/kl;

    return-void
.end method


# virtual methods
.method public final s([B)I
    .locals 1
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcom/tencent/mm/protocal/a/kl;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/kl;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/kl;->bo([B)Lcom/tencent/mm/protocal/a/kl;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/ah;->fym:Lcom/tencent/mm/protocal/a/kl;

    .line 32
    iget-object v0, p0, Lcom/tencent/mm/protocal/ah;->fym:Lcom/tencent/mm/protocal/a/kl;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/kl;->ayf()Lcom/tencent/mm/protocal/a/av;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/protocal/m;->a(Lcom/tencent/mm/protocal/q;Lcom/tencent/mm/protocal/a/av;)V

    .line 33
    iget-object v0, p0, Lcom/tencent/mm/protocal/ah;->fym:Lcom/tencent/mm/protocal/a/kl;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/kl;->ayf()Lcom/tencent/mm/protocal/a/av;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mm/protocal/a/av;->fAY:I

    return v0
.end method
