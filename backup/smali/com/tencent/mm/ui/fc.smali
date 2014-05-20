.class public final Lcom/tencent/mm/ui/fc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static w(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/tencent/mm/c/a/hf;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/hf;-><init>()V

    .line 12
    iget-object v1, v0, Lcom/tencent/mm/c/a/hf;->bRc:Lcom/tencent/mm/c/a/hg;

    iput-object p1, v1, Lcom/tencent/mm/c/a/hg;->className:Ljava/lang/String;

    .line 13
    iget-object v1, v0, Lcom/tencent/mm/c/a/hf;->bRc:Lcom/tencent/mm/c/a/hg;

    iput p0, v1, Lcom/tencent/mm/c/a/hg;->bRd:I

    .line 14
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 16
    :cond_0
    return-void
.end method
