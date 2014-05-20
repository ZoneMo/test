.class final Lcom/tencent/mm/plugin/search/model/ak;
.super Lcom/tencent/mm/plugin/search/model/af;
.source "SourceFile"


# instance fields
.field final synthetic ehV:Lcom/tencent/mm/plugin/search/model/ag;

.field private ehW:J

.field private ehX:J


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/search/model/ag;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/ak;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/search/model/af;-><init>()V

    .line 296
    iput-wide p2, p0, Lcom/tencent/mm/plugin/search/model/ak;->ehW:J

    .line 297
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/plugin/search/model/ak;->ehX:J

    .line 298
    return-void
.end method


# virtual methods
.method public final execute()Z
    .locals 6

    .prologue
    .line 307
    iget-wide v0, p0, Lcom/tencent/mm/plugin/search/model/ak;->ehX:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ak;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/plugin/search/model/a;->egw:[I

    iget-wide v2, p0, Lcom/tencent/mm/plugin/search/model/ak;->ehW:J

    iget-wide v4, p0, Lcom/tencent/mm/plugin/search/model/ak;->ehX:J

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/plugin/search/model/ap;->a([IJJ)V

    .line 311
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ak;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/plugin/search/model/a;->egw:[I

    iget-wide v2, p0, Lcom/tencent/mm/plugin/search/model/ak;->ehW:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/search/model/ap;->a([IJ)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeleteMessage("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/tencent/mm/plugin/search/model/ak;->ehW:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
