.class final Lcom/tencent/mm/pluginsdk/ui/chat/bg;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic frj:Lcom/tencent/mm/pluginsdk/ui/chat/bd;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/chat/bd;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bg;->frj:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bg;->frj:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->show()V

    .line 178
    return-void
.end method
