.class final Lcom/tencent/mm/network/ar;
.super Lcom/tencent/mm/sdk/platformtools/ce;
.source "SourceFile"


# instance fields
.field final synthetic cEG:Lcom/tencent/mm/network/ao;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/ao;)V
    .locals 3
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/tencent/mm/network/ar;->cEG:Lcom/tencent/mm/network/ao;

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ce;-><init>(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tencent/mm/network/ar;->cEG:Lcom/tencent/mm/network/ao;

    invoke-static {v0}, Lcom/tencent/mm/network/ao;->d(Lcom/tencent/mm/network/ao;)V

    .line 213
    const/4 v0, 0x0

    return-object v0
.end method
