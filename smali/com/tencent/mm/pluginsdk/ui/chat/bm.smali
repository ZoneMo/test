.class final Lcom/tencent/mm/pluginsdk/ui/chat/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/bh;


# instance fields
.field final synthetic frp:Lcom/tencent/mm/pluginsdk/ui/chat/bj;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/chat/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bm;->frp:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z[Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bm;->frp:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->a(Lcom/tencent/mm/pluginsdk/ui/chat/bj;)Lcom/tencent/mm/pluginsdk/ui/chat/bn;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bm;->frp:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->a(Lcom/tencent/mm/pluginsdk/ui/chat/bj;)Lcom/tencent/mm/pluginsdk/ui/chat/bn;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/bn;->qN(Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bm;->frp:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->b(Lcom/tencent/mm/pluginsdk/ui/chat/bj;)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bm;->frp:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->c(Lcom/tencent/mm/pluginsdk/ui/chat/bj;)V

    .line 96
    :cond_1
    return-void
.end method

.method public final arT()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public final arU()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method
