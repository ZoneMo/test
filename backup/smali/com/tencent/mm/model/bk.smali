.class final Lcom/tencent/mm/model/bk;
.super Lcom/tencent/mm/protocal/bg;
.source "SourceFile"


# instance fields
.field private ciQ:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/tencent/mm/protocal/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public final o([B)I
    .locals 2
    .parameter

    .prologue
    .line 536
    new-instance v0, Lcom/tencent/mm/protocal/be;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/be;-><init>()V

    .line 538
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/be;->s([B)I

    .line 539
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/be;->awT()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 541
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final uL()[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 514
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 529
    :goto_0
    return-object v0

    .line 517
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 518
    goto :goto_0

    .line 520
    :cond_1
    new-instance v2, Lcom/tencent/mm/protocal/bd;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/bd;-><init>()V

    .line 521
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/protocal/bd;->bQ(I)V

    .line 522
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v3, 0x2003

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 523
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->ib(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/protocal/bd;->az([B)V

    .line 525
    :try_start_0
    invoke-virtual {v2}, Lcom/tencent/mm/protocal/bd;->wz()[B

    move-result-object v0

    .line 526
    invoke-virtual {v2}, Lcom/tencent/mm/protocal/bd;->awS()[B

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/model/bk;->ciQ:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final uM()[B
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/tencent/mm/model/bk;->ciQ:[B

    return-object v0
.end method
