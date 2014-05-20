.class final Lcom/tencent/mm/t/h;
.super Lcom/tencent/mm/sdk/platformtools/ay;
.source "SourceFile"


# instance fields
.field final synthetic cso:Lcom/tencent/mm/t/c;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/t/c;Lcom/tencent/mm/n/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/tencent/mm/t/h;->cso:Lcom/tencent/mm/t/c;

    .line 295
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/an;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/t/i;

    invoke-direct {v1, p1, p2}, Lcom/tencent/mm/t/i;-><init>(Lcom/tencent/mm/t/c;Lcom/tencent/mm/n/a;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    .line 387
    return-void
.end method
