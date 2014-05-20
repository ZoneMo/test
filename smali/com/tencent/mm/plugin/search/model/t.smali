.class final Lcom/tencent/mm/plugin/search/model/t;
.super Lcom/tencent/mm/plugin/search/model/af;
.source "SourceFile"


# instance fields
.field final synthetic egV:Lcom/tencent/mm/plugin/search/model/b;

.field private eho:Ljava/lang/String;

.field private ehp:Lcom/tencent/mm/plugin/search/model/aq;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/search/model/b;Ljava/lang/String;Lcom/tencent/mm/plugin/search/model/aq;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 781
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/t;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/search/model/af;-><init>()V

    .line 782
    iput-object p2, p0, Lcom/tencent/mm/plugin/search/model/t;->eho:Ljava/lang/String;

    .line 783
    iput-object p3, p0, Lcom/tencent/mm/plugin/search/model/t;->ehp:Lcom/tencent/mm/plugin/search/model/aq;

    .line 784
    return-void
.end method


# virtual methods
.method public final execute()Z
    .locals 3

    .prologue
    .line 788
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/t;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/t;->eho:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/t;->ehp:Lcom/tencent/mm/plugin/search/model/aq;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/ap;->b(Ljava/lang/String;Lcom/tencent/mm/plugin/search/model/aq;)V

    .line 789
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RankTopHitsTask(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/t;->eho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/t;->ehp:Lcom/tencent/mm/plugin/search/model/aq;

    iget-object v1, v1, Lcom/tencent/mm/plugin/search/model/aq;->eid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
