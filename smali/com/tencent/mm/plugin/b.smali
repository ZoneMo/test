.class public final Lcom/tencent/mm/plugin/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static eS(I)V
    .locals 3
    .parameter

    .prologue
    .line 19
    new-instance v0, Lcom/tencent/mm/c/a/da;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/da;-><init>()V

    .line 20
    iget-object v1, v0, Lcom/tencent/mm/c/a/da;->bOb:Lcom/tencent/mm/c/a/db;

    const/4 v2, 0x2

    iput v2, v1, Lcom/tencent/mm/c/a/db;->bOd:I

    .line 21
    iget-object v1, v0, Lcom/tencent/mm/c/a/da;->bOb:Lcom/tencent/mm/c/a/db;

    iput p0, v1, Lcom/tencent/mm/c/a/db;->bOf:I

    .line 22
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 23
    return-void
.end method
