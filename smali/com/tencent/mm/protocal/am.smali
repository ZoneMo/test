.class public final Lcom/tencent/mm/protocal/am;
.super Lcom/tencent/mm/protocal/p;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/n;


# instance fields
.field public fyp:Lcom/tencent/mm/protocal/a/lc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/tencent/mm/protocal/p;-><init>()V

    .line 11
    new-instance v0, Lcom/tencent/mm/protocal/a/lc;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/lc;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/am;->fyp:Lcom/tencent/mm/protocal/a/lc;

    return-void
.end method


# virtual methods
.method public final getCmdId()I
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x30

    return v0
.end method

.method public final wy()I
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x6b

    return v0
.end method

.method public final wz()[B
    .locals 3

    .prologue
    .line 16
    invoke-static {}, Lcom/tencent/mm/protocal/bi;->awW()Lcom/tencent/mm/protocal/bi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/protocal/am;->a(Lcom/tencent/mm/protocal/bi;)V

    .line 17
    iget-object v0, p0, Lcom/tencent/mm/protocal/am;->fyp:Lcom/tencent/mm/protocal/a/lc;

    new-instance v1, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azP()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/lc;->fBE:Lcom/tencent/mm/protocal/a/rv;

    .line 19
    iget-object v0, p0, Lcom/tencent/mm/protocal/am;->fyp:Lcom/tencent/mm/protocal/a/lc;

    invoke-static {p0}, Lcom/tencent/mm/protocal/m;->b(Lcom/tencent/mm/protocal/p;)Lcom/tencent/mm/protocal/a/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/lc;->a(Lcom/tencent/mm/protocal/a/au;)Lcom/tencent/mm/protocal/a/rs;

    .line 20
    iget-object v0, p0, Lcom/tencent/mm/protocal/am;->fyp:Lcom/tencent/mm/protocal/a/lc;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/lc;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
