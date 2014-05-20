.class final Lcom/tencent/mm/ui/chatting/fh;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic gOn:Lcom/tencent/mm/ui/chatting/fg;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/fg;)V
    .locals 0
    .parameter

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/fh;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1141
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 1142
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fh;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/fg;->a(Lcom/tencent/mm/ui/chatting/fg;)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1143
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fh;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/chatting/fg;->a(Lcom/tencent/mm/ui/chatting/fg;Z)Z

    .line 1144
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fh;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/fg;->b(Lcom/tencent/mm/ui/chatting/fg;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/fh;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/fg;->b(Lcom/tencent/mm/ui/chatting/fg;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1145
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fh;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/chatting/fg;->a(Lcom/tencent/mm/ui/chatting/fg;I)I

    .line 1149
    :goto_0
    return-void

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fh;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0, v3}, Lcom/tencent/mm/ui/chatting/fg;->a(Lcom/tencent/mm/ui/chatting/fg;Z)Z

    goto :goto_0
.end method
