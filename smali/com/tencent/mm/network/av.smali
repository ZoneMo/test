.class final Lcom/tencent/mm/network/av;
.super Lcom/tencent/mm/sdk/platformtools/ce;
.source "SourceFile"


# instance fields
.field final synthetic cEG:Lcom/tencent/mm/network/ao;

.field final synthetic cEV:Ljava/lang/String;

.field final synthetic cEW:Ljava/lang/String;

.field final synthetic cEX:Ljava/lang/String;

.field final synthetic cEY:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/ao;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/tencent/mm/network/av;->cEG:Lcom/tencent/mm/network/ao;

    iput-object p3, p0, Lcom/tencent/mm/network/av;->cEV:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/mm/network/av;->cEW:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/mm/network/av;->cEX:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/mm/network/av;->cEY:Ljava/lang/String;

    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/mm/sdk/platformtools/ce;-><init>(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 568
    iget-object v0, p0, Lcom/tencent/mm/network/av;->cEV:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/network/av;->cEW:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/network/av;->cEX:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/network/av;->cEY:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/network/Java2C;->setDebugIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/tencent/mm/network/Java2C;->onNetworkChange()V

    .line 570
    const/4 v0, 0x0

    return-object v0
.end method
