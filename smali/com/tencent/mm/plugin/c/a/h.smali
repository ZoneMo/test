.class final Lcom/tencent/mm/plugin/c/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dUY:Lcom/tencent/mm/plugin/c/a/i;

.field final synthetic dVa:Lcom/tencent/mm/c/a/cl;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/c/a/i;Lcom/tencent/mm/c/a/cl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/tencent/mm/plugin/c/a/h;->dUY:Lcom/tencent/mm/plugin/c/a/i;

    iput-object p2, p0, Lcom/tencent/mm/plugin/c/a/h;->dVa:Lcom/tencent/mm/c/a/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 210
    iget-object v0, p0, Lcom/tencent/mm/plugin/c/a/h;->dUY:Lcom/tencent/mm/plugin/c/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/c/a/h;->dVa:Lcom/tencent/mm/c/a/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/c/a/h;->dVa:Lcom/tencent/mm/c/a/cl;

    iget-object v0, v0, Lcom/tencent/mm/c/a/cl;->bNP:Lcom/tencent/mm/c/a/cn;

    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/c/a/h;->dVa:Lcom/tencent/mm/c/a/cl;

    iget-object v0, v0, Lcom/tencent/mm/c/a/cl;->bNP:Lcom/tencent/mm/c/a/cn;

    iget v0, v0, Lcom/tencent/mm/c/a/cn;->ret:I

    if-ne v0, v1, :cond_2

    .line 214
    iget-object v0, p0, Lcom/tencent/mm/plugin/c/a/h;->dUY:Lcom/tencent/mm/plugin/c/a/i;

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/c/a/i;->aT(Z)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/c/a/h;->dVa:Lcom/tencent/mm/c/a/cl;

    iget-object v0, v0, Lcom/tencent/mm/c/a/cl;->bNP:Lcom/tencent/mm/c/a/cn;

    iget v0, v0, Lcom/tencent/mm/c/a/cn;->ret:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/tencent/mm/plugin/c/a/h;->dUY:Lcom/tencent/mm/plugin/c/a/i;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/c/a/i;->aT(Z)V

    goto :goto_0
.end method
