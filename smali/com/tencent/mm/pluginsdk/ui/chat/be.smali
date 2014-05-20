.class final Lcom/tencent/mm/pluginsdk/ui/chat/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic frj:Lcom/tencent/mm/pluginsdk/ui/chat/bd;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/chat/bd;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/be;->frj:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 77
    const-string v0, "MicroMsg.SuggestEmoticonBubble"

    const-string v1, "onClick send emoji..."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/be;->frj:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->a(Lcom/tencent/mm/pluginsdk/ui/chat/bd;)Lcom/tencent/mm/storage/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/be;->frj:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->b(Lcom/tencent/mm/pluginsdk/ui/chat/bd;)Lcom/tencent/mm/pluginsdk/ui/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/be;->frj:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->c(Lcom/tencent/mm/pluginsdk/ui/chat/bd;)Lcom/tencent/mm/pluginsdk/ui/chat/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/be;->frj:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->b(Lcom/tencent/mm/pluginsdk/ui/chat/bd;)Lcom/tencent/mm/pluginsdk/ui/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/be;->frj:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->a(Lcom/tencent/mm/pluginsdk/ui/chat/bd;)Lcom/tencent/mm/storage/y;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/aw;->e(Lcom/tencent/mm/storage/y;)V

    .line 80
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/be;->frj:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->c(Lcom/tencent/mm/pluginsdk/ui/chat/bd;)Lcom/tencent/mm/pluginsdk/ui/chat/bi;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bi;->clear()V

    .line 81
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2af2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/be;->frj:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-static {v3}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->d(Lcom/tencent/mm/pluginsdk/ui/chat/bd;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/be;->frj:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->e(Lcom/tencent/mm/pluginsdk/ui/chat/bd;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 84
    return-void
.end method
