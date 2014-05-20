.class final Lcom/tencent/mm/network/au;
.super Lcom/tencent/mm/sdk/platformtools/ce;
.source "SourceFile"


# instance fields
.field final synthetic cEG:Lcom/tencent/mm/network/ao;

.field final synthetic cEM:[Ljava/lang/String;

.field final synthetic cEN:[I

.field final synthetic cEO:I

.field final synthetic cEP:[Ljava/lang/String;

.field final synthetic cEQ:[I

.field final synthetic cER:I

.field final synthetic cES:Z

.field final synthetic cET:Ljava/lang/String;

.field final synthetic cEU:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/ao;Ljava/lang/Object;[Ljava/lang/String;[II[Ljava/lang/String;[IIZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/tencent/mm/network/au;->cEG:Lcom/tencent/mm/network/ao;

    iput-object p3, p0, Lcom/tencent/mm/network/au;->cEM:[Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/mm/network/au;->cEN:[I

    iput p5, p0, Lcom/tencent/mm/network/au;->cEO:I

    iput-object p6, p0, Lcom/tencent/mm/network/au;->cEP:[Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/mm/network/au;->cEQ:[I

    iput p8, p0, Lcom/tencent/mm/network/au;->cER:I

    iput-boolean p9, p0, Lcom/tencent/mm/network/au;->cES:Z

    iput-object p10, p0, Lcom/tencent/mm/network/au;->cET:Ljava/lang/String;

    iput-object p11, p0, Lcom/tencent/mm/network/au;->cEU:Ljava/lang/String;

    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/mm/sdk/platformtools/ce;-><init>(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 548
    iget-object v0, p0, Lcom/tencent/mm/network/au;->cEM:[Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/network/au;->cEN:[I

    iget v2, p0, Lcom/tencent/mm/network/au;->cEO:I

    iget-object v3, p0, Lcom/tencent/mm/network/au;->cEP:[Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/network/au;->cEQ:[I

    iget v5, p0, Lcom/tencent/mm/network/au;->cER:I

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/network/Java2C;->saveAuthIPs([Ljava/lang/String;[II[Ljava/lang/String;[II)V

    .line 549
    iget-boolean v0, p0, Lcom/tencent/mm/network/au;->cES:Z

    iget-object v1, p0, Lcom/tencent/mm/network/au;->cET:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/network/au;->cEU:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/network/Java2C;->onIDCChange(ZLjava/lang/String;Ljava/lang/String;)V

    .line 550
    const/4 v0, 0x0

    return-object v0
.end method
