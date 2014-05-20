.class final Lcom/tencent/mm/network/ax;
.super Lcom/tencent/mm/sdk/platformtools/ce;
.source "SourceFile"


# instance fields
.field final synthetic cEG:Lcom/tencent/mm/network/ao;

.field final synthetic cEZ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/ao;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/tencent/mm/network/ax;->cEG:Lcom/tencent/mm/network/ao;

    iput-object p2, p0, Lcom/tencent/mm/network/ax;->cEZ:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ce;-><init>(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 596
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/aa;->appenderFlush()V

    .line 597
    iget-object v0, p0, Lcom/tencent/mm/network/ax;->cEZ:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/network/Java2C;->onIPxx(Ljava/lang/String;)V

    .line 598
    const/4 v0, 0x0

    return-object v0
.end method
