.class final Lcom/tencent/mm/pluginsdk/ui/chat/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic frp:Lcom/tencent/mm/pluginsdk/ui/chat/bj;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/chat/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bl;->frp:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bl;->frp:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->a(Lcom/tencent/mm/pluginsdk/ui/chat/bj;)Lcom/tencent/mm/pluginsdk/ui/chat/bn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bl;->frp:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->a(Lcom/tencent/mm/pluginsdk/ui/chat/bj;)Lcom/tencent/mm/pluginsdk/ui/chat/bn;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bn;->asZ()V

    .line 62
    :cond_0
    return-void
.end method
