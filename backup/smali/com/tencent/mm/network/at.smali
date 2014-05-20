.class final Lcom/tencent/mm/network/at;
.super Lcom/tencent/mm/sdk/platformtools/ce;
.source "SourceFile"


# instance fields
.field final synthetic cEG:Lcom/tencent/mm/network/ao;

.field final synthetic cEL:Z


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/ao;Ljava/lang/Object;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/tencent/mm/network/at;->cEG:Lcom/tencent/mm/network/ao;

    iput-boolean p3, p0, Lcom/tencent/mm/network/at;->cEL:Z

    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/mm/sdk/platformtools/ce;-><init>(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/tencent/mm/network/at;->cEL:Z

    invoke-static {v0}, Lcom/tencent/mm/network/Java2C;->onForeground(Z)V

    .line 525
    iget-boolean v0, p0, Lcom/tencent/mm/network/at;->cEL:Z

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/at;->U(Z)V

    .line 526
    const/4 v0, 0x0

    return-object v0
.end method
