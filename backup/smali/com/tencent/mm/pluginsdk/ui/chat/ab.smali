.class final Lcom/tencent/mm/pluginsdk/ui/chat/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fqG:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

.field final synthetic fqL:Z


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V
    .locals 1
    .parameter

    .prologue
    .line 1847
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ab;->fqG:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ab;->fqL:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ab;->fqG:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    iget-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ab;->fqL:Z

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->e(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;Z)V

    .line 1852
    return-void
.end method
