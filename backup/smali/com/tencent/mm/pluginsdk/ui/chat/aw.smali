.class final Lcom/tencent/mm/pluginsdk/ui/chat/aw;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic fqX:Lcom/tencent/mm/pluginsdk/ui/chat/au;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/chat/au;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/aw;->fqX:Lcom/tencent/mm/pluginsdk/ui/chat/au;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/aw;->fqX:Lcom/tencent/mm/pluginsdk/ui/chat/au;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/au;->show()V

    .line 106
    return-void
.end method
