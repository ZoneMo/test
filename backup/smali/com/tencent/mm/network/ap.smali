.class final Lcom/tencent/mm/network/ap;
.super Lcom/tencent/mm/sdk/platformtools/ce;
.source "SourceFile"


# instance fields
.field final synthetic cEG:Lcom/tencent/mm/network/ao;

.field final synthetic cmL:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/ao;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/tencent/mm/network/ap;->cEG:Lcom/tencent/mm/network/ao;

    iput p2, p0, Lcom/tencent/mm/network/ap;->cmL:I

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ce;-><init>(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/ap;->cEG:Lcom/tencent/mm/network/ao;

    iget v0, p0, Lcom/tencent/mm/network/ap;->cmL:I

    invoke-static {v0}, Lcom/tencent/mm/network/ao;->eG(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
