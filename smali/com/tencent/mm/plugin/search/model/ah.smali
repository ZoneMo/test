.class final Lcom/tencent/mm/plugin/search/model/ah;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic ehV:Lcom/tencent/mm/plugin/search/model/ag;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/search/model/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/ah;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 3
    .parameter

    .prologue
    .line 397
    check-cast p1, Lcom/tencent/mm/c/a/c;

    .line 398
    iget-object v0, p1, Lcom/tencent/mm/c/a/c;->bLK:Lcom/tencent/mm/c/a/d;

    iget-boolean v0, v0, Lcom/tencent/mm/c/a/d;->bLL:Z

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ah;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    iget-object v0, v0, Lcom/tencent/mm/plugin/search/model/ag;->ehU:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 402
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ah;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    iget-object v0, v0, Lcom/tencent/mm/plugin/search/model/ag;->ehU:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    goto :goto_0
.end method
