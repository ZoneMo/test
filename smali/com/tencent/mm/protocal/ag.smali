.class public final Lcom/tencent/mm/protocal/ag;
.super Lcom/tencent/mm/protocal/p;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/n;


# instance fields
.field public fyl:Lcom/tencent/mm/protocal/a/kk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/tencent/mm/protocal/p;-><init>()V

    .line 10
    new-instance v0, Lcom/tencent/mm/protocal/a/kk;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/kk;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/ag;->fyl:Lcom/tencent/mm/protocal/a/kk;

    return-void
.end method


# virtual methods
.method public final wy()I
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x23c

    return v0
.end method

.method public final wz()[B
    .locals 3

    .prologue
    .line 14
    invoke-static {}, Lcom/tencent/mm/protocal/bi;->awW()Lcom/tencent/mm/protocal/bi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/protocal/ag;->a(Lcom/tencent/mm/protocal/bi;)V

    .line 15
    iget-object v0, p0, Lcom/tencent/mm/protocal/ag;->fyl:Lcom/tencent/mm/protocal/a/kk;

    new-instance v1, Lcom/tencent/mm/protocal/a/rv;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/rv;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azP()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/rv;->bM([B)Lcom/tencent/mm/protocal/a/rv;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/kk;->fBE:Lcom/tencent/mm/protocal/a/rv;

    .line 16
    iget-object v0, p0, Lcom/tencent/mm/protocal/ag;->fyl:Lcom/tencent/mm/protocal/a/kk;

    invoke-static {p0}, Lcom/tencent/mm/protocal/m;->b(Lcom/tencent/mm/protocal/p;)Lcom/tencent/mm/protocal/a/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/kk;->a(Lcom/tencent/mm/protocal/a/au;)Lcom/tencent/mm/protocal/a/rs;

    .line 17
    iget-object v0, p0, Lcom/tencent/mm/protocal/ag;->fyl:Lcom/tencent/mm/protocal/a/kk;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/kk;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
