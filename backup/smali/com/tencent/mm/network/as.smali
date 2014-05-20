.class final Lcom/tencent/mm/network/as;
.super Lcom/tencent/mm/sdk/platformtools/ce;
.source "SourceFile"


# instance fields
.field final synthetic cEG:Lcom/tencent/mm/network/ao;

.field final synthetic cEJ:Lcom/tencent/mm/network/ak;

.field final synthetic cEK:Lcom/tencent/mm/network/ac;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/ao;Ljava/lang/Integer;Lcom/tencent/mm/network/ak;Lcom/tencent/mm/network/ac;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/tencent/mm/network/as;->cEG:Lcom/tencent/mm/network/ao;

    iput-object p3, p0, Lcom/tencent/mm/network/as;->cEJ:Lcom/tencent/mm/network/ak;

    iput-object p4, p0, Lcom/tencent/mm/network/as;->cEK:Lcom/tencent/mm/network/ac;

    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/mm/sdk/platformtools/ce;-><init>(JLjava/lang/Object;)V

    return-void
.end method

.method private EV()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/as;->cEG:Lcom/tencent/mm/network/ao;

    iget-object v1, p0, Lcom/tencent/mm/network/as;->cEJ:Lcom/tencent/mm/network/ak;

    iget-object v2, p0, Lcom/tencent/mm/network/as;->cEK:Lcom/tencent/mm/network/ac;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/network/ao;->a(Lcom/tencent/mm/network/ao;Lcom/tencent/mm/network/ak;Lcom/tencent/mm/network/ac;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    .line 237
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/mm/network/as;->cEG:Lcom/tencent/mm/network/ao;

    invoke-static {v0}, Lcom/tencent/mm/network/ao;->d(Lcom/tencent/mm/network/ao;)V

    .line 241
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/tencent/mm/network/as;->EV()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
