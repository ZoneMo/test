.class final Lcom/tencent/mm/network/aq;
.super Lcom/tencent/mm/sdk/platformtools/ce;
.source "SourceFile"


# instance fields
.field final synthetic cEG:Lcom/tencent/mm/network/ao;

.field final synthetic cEH:[Ljava/lang/String;

.field final synthetic cEI:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/ao;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 758
    iput-object p1, p0, Lcom/tencent/mm/network/aq;->cEG:Lcom/tencent/mm/network/ao;

    iput-object p2, p0, Lcom/tencent/mm/network/aq;->cEH:[Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/network/aq;->cEI:[Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ce;-><init>(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/tencent/mm/network/aq;->cEH:[Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/network/aq;->cEI:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/network/Java2C;->setHostInfo([Ljava/lang/String;[Ljava/lang/String;)V

    .line 762
    const/4 v0, 0x0

    return-object v0
.end method
