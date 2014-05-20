.class final Lcom/tencent/mm/plugin/d/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dZL:Lcom/tencent/mm/plugin/d/c/l;

.field final synthetic dZM:Lcom/tencent/mm/plugin/d/a/e;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/d/c/l;Lcom/tencent/mm/plugin/d/a/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tencent/mm/plugin/d/c/k;->dZL:Lcom/tencent/mm/plugin/d/c/l;

    iput-object p2, p0, Lcom/tencent/mm/plugin/d/c/k;->dZM:Lcom/tencent/mm/plugin/d/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/c/k;->dZL:Lcom/tencent/mm/plugin/d/c/l;

    iget-object v1, p0, Lcom/tencent/mm/plugin/d/c/k;->dZM:Lcom/tencent/mm/plugin/d/a/e;

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/d/c/l;->b(Lcom/tencent/mm/plugin/d/a/e;)I

    .line 34
    return-void
.end method
