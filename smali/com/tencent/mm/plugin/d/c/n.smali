.class final Lcom/tencent/mm/plugin/d/c/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/bw;


# instance fields
.field dZS:Lcom/tencent/mm/n/x;

.field final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput p1, p0, Lcom/tencent/mm/plugin/d/c/n;->type:I

    .line 500
    return-void
.end method


# virtual methods
.method public final ve()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 505
    iget v0, p0, Lcom/tencent/mm/plugin/d/c/n;->type:I

    invoke-static {v0}, Lcom/tencent/mm/plugin/d/c/j;->hA(I)Lcom/tencent/mm/n/x;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/d/c/n;->dZS:Lcom/tencent/mm/n/x;

    .line 506
    const-string v3, "MicroMsg.ReportManager"

    const-string v4, "doInBackground : result is null ? %B, type = %d"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/n;->dZS:Lcom/tencent/mm/n/x;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    iget v0, p0, Lcom/tencent/mm/plugin/d/c/n;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/n;->dZS:Lcom/tencent/mm/n/x;

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 506
    goto :goto_0

    :cond_1
    move v1, v2

    .line 507
    goto :goto_1
.end method

.method public final vf()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 513
    const-string v3, "MicroMsg.ReportManager"

    const-string v4, "onPostExecute : result is null ? %B, type = %d"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/n;->dZS:Lcom/tencent/mm/n/x;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    iget v0, p0, Lcom/tencent/mm/plugin/d/c/n;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/n;->dZS:Lcom/tencent/mm/n/x;

    if-eqz v0, :cond_0

    .line 515
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/plugin/d/c/n;->dZS:Lcom/tencent/mm/n/x;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 516
    const-string v0, "MicroMsg.ReportManager"

    const-string v3, "do scene end, type = %d"

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/tencent/mm/plugin/d/c/n;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    :cond_0
    return v2

    :cond_1
    move v0, v2

    .line 513
    goto :goto_0
.end method
