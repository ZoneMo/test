.class final Lcom/tencent/mm/network/bc;
.super Lcom/tencent/mm/sdk/platformtools/ce;
.source "SourceFile"


# instance fields
.field final synthetic cFe:Lcom/tencent/mm/network/ak;

.field final synthetic cFf:Lcom/tencent/mm/network/bb;

.field final synthetic cmT:I

.field final synthetic cmU:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/bb;Lcom/tencent/mm/network/ak;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/tencent/mm/network/bc;->cFf:Lcom/tencent/mm/network/bb;

    iput-object p2, p0, Lcom/tencent/mm/network/bc;->cFe:Lcom/tencent/mm/network/ak;

    iput p3, p0, Lcom/tencent/mm/network/bc;->cmT:I

    iput p4, p0, Lcom/tencent/mm/network/bc;->cmU:I

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ce;-><init>(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final run()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/bc;->cFf:Lcom/tencent/mm/network/bb;

    invoke-static {v0}, Lcom/tencent/mm/network/bb;->a(Lcom/tencent/mm/network/bb;)Lcom/tencent/mm/network/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/network/bc;->cFe:Lcom/tencent/mm/network/ak;

    iget v2, p0, Lcom/tencent/mm/network/bc;->cmT:I

    iget v2, p0, Lcom/tencent/mm/network/bc;->cmU:I

    invoke-static {v0, v1}, Lcom/tencent/mm/network/ao;->a(Lcom/tencent/mm/network/ao;Lcom/tencent/mm/network/ak;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
