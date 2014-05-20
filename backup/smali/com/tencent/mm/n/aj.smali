.class final Lcom/tencent/mm/n/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field private cmB:J

.field final synthetic cmu:Lcom/tencent/mm/n/ac;


# direct methods
.method constructor <init>(Lcom/tencent/mm/n/ac;)V
    .locals 2
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/tencent/mm/n/aj;->cmu:Lcom/tencent/mm/n/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/tencent/mm/n/aj;->cmB:J

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 4

    .prologue
    .line 553
    iget-object v0, p0, Lcom/tencent/mm/n/aj;->cmu:Lcom/tencent/mm/n/ac;

    invoke-static {v0}, Lcom/tencent/mm/n/ac;->f(Lcom/tencent/mm/n/ac;)Lcom/tencent/mm/network/r;

    move-result-object v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/mm/n/aj;->cmB:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/tencent/mm/n/aj;->cmB:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 554
    const/4 v0, 0x1

    .line 558
    :goto_0
    return v0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/n/aj;->cmu:Lcom/tencent/mm/n/ac;

    invoke-static {v0}, Lcom/tencent/mm/n/ac;->j(Lcom/tencent/mm/n/ac;)V

    .line 558
    const/4 v0, 0x0

    goto :goto_0
.end method
