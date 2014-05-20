.class public final Lcom/tencent/mm/plugin/ext/g;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    .line 210
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 5
    .parameter

    .prologue
    .line 214
    instance-of v0, p1, Lcom/tencent/mm/c/a/aq;

    if-nez v0, :cond_0

    .line 215
    const-string v0, "MicroMsg.SubCoreExtAgent"

    const-string v1, "mismatched event"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->aM(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    .line 218
    :cond_0
    check-cast p1, Lcom/tencent/mm/c/a/aq;

    .line 219
    new-instance v0, Lcom/tencent/mm/z/f;

    iget-object v1, p1, Lcom/tencent/mm/c/a/aq;->bMP:Lcom/tencent/mm/c/a/ar;

    iget-object v1, v1, Lcom/tencent/mm/c/a/ar;->bMR:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/mm/c/a/aq;->bMP:Lcom/tencent/mm/c/a/ar;

    iget-object v2, v2, Lcom/tencent/mm/c/a/ar;->content:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/mm/c/a/aq;->bMP:Lcom/tencent/mm/c/a/ar;

    iget v3, v3, Lcom/tencent/mm/c/a/ar;->type:I

    iget-object v4, p1, Lcom/tencent/mm/c/a/aq;->bMP:Lcom/tencent/mm/c/a/ar;

    iget v4, v4, Lcom/tencent/mm/c/a/ar;->flags:I

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/z/f;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    iget-object v1, p1, Lcom/tencent/mm/c/a/aq;->bMQ:Lcom/tencent/mm/c/a/as;

    iput-object v0, v1, Lcom/tencent/mm/c/a/as;->bMT:Lcom/tencent/mm/n/x;

    .line 221
    iget-object v1, p1, Lcom/tencent/mm/c/a/aq;->bMQ:Lcom/tencent/mm/c/a/as;

    invoke-virtual {v0}, Lcom/tencent/mm/z/f;->Bo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/mm/c/a/as;->bMS:J

    .line 222
    const/4 v0, 0x1

    goto :goto_0
.end method
