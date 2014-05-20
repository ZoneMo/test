.class public final Lcom/tencent/mm/plugin/d/b/b;
.super Lcom/tencent/mm/protocal/p;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/n;


# instance fields
.field public dZq:Lcom/tencent/mm/protocal/a/mg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tencent/mm/protocal/p;-><init>()V

    .line 18
    new-instance v0, Lcom/tencent/mm/protocal/a/mg;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/mg;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/d/b/b;->dZq:Lcom/tencent/mm/protocal/a/mg;

    return-void
.end method


# virtual methods
.method public final getCmdId()I
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0xda

    return v0
.end method

.method public final wy()I
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x1bb

    return v0
.end method

.method public final wz()[B
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lcom/tencent/mm/protocal/bi;->awW()Lcom/tencent/mm/protocal/bi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/d/b/b;->a(Lcom/tencent/mm/protocal/bi;)V

    .line 23
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/b/b;->dZq:Lcom/tencent/mm/protocal/a/mg;

    new-instance v1, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azP()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/mg;->fBE:Lcom/tencent/mm/protocal/a/rv;

    .line 24
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/b/b;->dZq:Lcom/tencent/mm/protocal/a/mg;

    invoke-static {p0}, Lcom/tencent/mm/protocal/m;->b(Lcom/tencent/mm/protocal/p;)Lcom/tencent/mm/protocal/a/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/mg;->a(Lcom/tencent/mm/protocal/a/au;)Lcom/tencent/mm/protocal/a/rs;

    .line 25
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/b/b;->dZq:Lcom/tencent/mm/protocal/a/mg;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/mg;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
