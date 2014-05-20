.class public final Lcom/tencent/mm/protocal/t;
.super Lcom/tencent/mm/protocal/q;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/o;


# instance fields
.field public fxY:Lcom/tencent/mm/protocal/a/br;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/tencent/mm/protocal/q;-><init>()V

    .line 34
    new-instance v0, Lcom/tencent/mm/protocal/a/br;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/br;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    return-void
.end method


# virtual methods
.method public final s([B)I
    .locals 1
    .parameter

    .prologue
    .line 38
    new-instance v0, Lcom/tencent/mm/protocal/a/br;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/br;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/br;->aI([B)Lcom/tencent/mm/protocal/a/br;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    .line 39
    iget-object v0, p0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/br;->ayf()Lcom/tencent/mm/protocal/a/av;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/protocal/m;->a(Lcom/tencent/mm/protocal/q;Lcom/tencent/mm/protocal/a/av;)V

    .line 40
    iget-object v0, p0, Lcom/tencent/mm/protocal/t;->fxY:Lcom/tencent/mm/protocal/a/br;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/br;->ayf()Lcom/tencent/mm/protocal/a/av;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mm/protocal/a/av;->fAY:I

    return v0
.end method
