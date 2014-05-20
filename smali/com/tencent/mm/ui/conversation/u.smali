.class final Lcom/tencent/mm/ui/conversation/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gYn:Lcom/tencent/mm/ui/conversation/s;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/s;)V
    .locals 0
    .parameter

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/u;->gYn:Lcom/tencent/mm/ui/conversation/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 1261
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/u;->gYn:Lcom/tencent/mm/ui/conversation/s;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/s;->f(Lcom/tencent/mm/ui/conversation/s;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 1263
    const-string v0, "MicroMsg.ConversationAdapter"

    const-string v1, "dkpno handleDataChange acc has not ready"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    :goto_0
    return-void

    .line 1267
    :cond_0
    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FD()J

    move-result-wide v0

    .line 1268
    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/u;->gYn:Lcom/tencent/mm/ui/conversation/s;

    invoke-static {v2}, Lcom/tencent/mm/ui/conversation/s;->g(Lcom/tencent/mm/ui/conversation/s;)V

    .line 1269
    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/au;->N(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    .line 1270
    const-string v2, "MicroMsg.ConversationAdapter"

    const-string v3, "dkpno handleDataChange guest:%d old:%d needNotify:%b"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/tencent/mm/ui/conversation/s;->aLp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/tencent/mm/ui/conversation/u;->gYn:Lcom/tencent/mm/ui/conversation/s;

    invoke-static {v6}, Lcom/tencent/mm/ui/conversation/s;->d(Lcom/tencent/mm/ui/conversation/s;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1271
    invoke-static {}, Lcom/tencent/mm/ui/conversation/s;->aLp()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/conversation/s;->ci(J)J

    .line 1272
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/u;->gYn:Lcom/tencent/mm/ui/conversation/s;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/s;->h(Lcom/tencent/mm/ui/conversation/s;)Z

    .line 1273
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/u;->gYn:Lcom/tencent/mm/ui/conversation/s;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/s;->f(Lcom/tencent/mm/ui/conversation/s;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/ui/conversation/s;->aLp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    goto :goto_0
.end method
