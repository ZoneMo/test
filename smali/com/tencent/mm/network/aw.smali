.class final Lcom/tencent/mm/network/aw;
.super Lcom/tencent/mm/sdk/platformtools/ce;
.source "SourceFile"


# instance fields
.field final synthetic cEG:Lcom/tencent/mm/network/ao;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/ao;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/tencent/mm/network/aw;->cEG:Lcom/tencent/mm/network/ao;

    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/mm/sdk/platformtools/ce;-><init>(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 582
    invoke-static {}, Lcom/tencent/mm/network/Java2C;->onNetworkChange()V

    .line 583
    const/4 v0, 0x0

    return-object v0
.end method
