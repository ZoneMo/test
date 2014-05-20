.class final Lcom/tencent/mm/plugin/search/model/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic ehV:Lcom/tencent/mm/plugin/search/model/ag;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/search/model/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/ai;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 411
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ai;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->c(Lcom/tencent/mm/plugin/search/model/ag;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ai;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->d(Lcom/tencent/mm/plugin/search/model/ag;)Z

    .line 413
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ai;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->e(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/y;

    move-result-object v0

    const v1, 0x2001e

    new-instance v2, Lcom/tencent/mm/plugin/search/model/aj;

    iget-object v3, p0, Lcom/tencent/mm/plugin/search/model/ai;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/plugin/search/model/aj;-><init>(Lcom/tencent/mm/plugin/search/model/ag;B)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    .line 417
    :cond_0
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "Activate"

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ai;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    iget-object v2, v2, Lcom/tencent/mm/plugin/search/model/ag;->ehT:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 419
    return v4
.end method
