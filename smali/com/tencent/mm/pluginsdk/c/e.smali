.class public final Lcom/tencent/mm/pluginsdk/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static qi(Ljava/lang/String;)Lcom/tencent/mm/c/a/go;
    .locals 3
    .parameter

    .prologue
    .line 9
    new-instance v0, Lcom/tencent/mm/c/a/go;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/go;-><init>()V

    .line 10
    iget-object v1, v0, Lcom/tencent/mm/c/a/go;->bQJ:Lcom/tencent/mm/c/a/gp;

    const/4 v2, 0x1

    iput v2, v1, Lcom/tencent/mm/c/a/gp;->bOd:I

    .line 11
    iget-object v1, v0, Lcom/tencent/mm/c/a/go;->bQJ:Lcom/tencent/mm/c/a/gp;

    iput-object p0, v1, Lcom/tencent/mm/c/a/gp;->bQK:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 13
    return-object v0
.end method

.method public static qj(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 17
    new-instance v0, Lcom/tencent/mm/c/a/go;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/go;-><init>()V

    .line 18
    iget-object v1, v0, Lcom/tencent/mm/c/a/go;->bQJ:Lcom/tencent/mm/c/a/gp;

    const/4 v2, 0x2

    iput v2, v1, Lcom/tencent/mm/c/a/gp;->bOd:I

    .line 19
    iget-object v1, v0, Lcom/tencent/mm/c/a/go;->bQJ:Lcom/tencent/mm/c/a/gp;

    iput-object p0, v1, Lcom/tencent/mm/c/a/gp;->bQK:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 21
    return-void
.end method
