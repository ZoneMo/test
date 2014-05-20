.class final Lcom/tencent/mm/pluginsdk/ui/chat/ax;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic fqX:Lcom/tencent/mm/pluginsdk/ui/chat/au;

.field final synthetic fqY:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/chat/au;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ax;->fqX:Lcom/tencent/mm/pluginsdk/ui/chat/au;

    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ax;->fqY:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ax;->fqX:Lcom/tencent/mm/pluginsdk/ui/chat/au;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/au;->d(Lcom/tencent/mm/pluginsdk/ui/chat/au;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ax;->fqY:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v0, "MicroMsg.RecentImageBubble"

    const-string v1, "check false"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
