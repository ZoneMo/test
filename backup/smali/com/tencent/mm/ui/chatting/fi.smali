.class final Lcom/tencent/mm/ui/chatting/fi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic gOn:Lcom/tencent/mm/ui/chatting/fg;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/fg;)V
    .locals 0
    .parameter

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1167
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1168
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fg;->c(Lcom/tencent/mm/ui/chatting/fg;)V

    .line 1169
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/fg;->a(Lcom/tencent/mm/ui/chatting/fg;I)I

    .line 1170
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/fg;->a(Lcom/tencent/mm/ui/chatting/fg;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/fg;->b(Lcom/tencent/mm/ui/chatting/fg;I)I

    .line 1171
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fg;->b(Lcom/tencent/mm/ui/chatting/fg;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1172
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fg;->d(Lcom/tencent/mm/ui/chatting/fg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0, v4}, Lcom/tencent/mm/ui/chatting/fg;->a(Lcom/tencent/mm/ui/chatting/fg;Z)Z

    .line 1174
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/chatting/fg;->b(Lcom/tencent/mm/ui/chatting/fg;Z)Z

    .line 1194
    :cond_0
    :goto_0
    return v4

    .line 1176
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1178
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v5, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1179
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fg;->e(Lcom/tencent/mm/ui/chatting/fg;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v5, :cond_3

    .line 1180
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fg;->b(Lcom/tencent/mm/ui/chatting/fg;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/fg;->b(Lcom/tencent/mm/ui/chatting/fg;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1182
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fg;->f(Lcom/tencent/mm/ui/chatting/fg;)J

    move-result-wide v0

    .line 1184
    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fg;->e(Lcom/tencent/mm/ui/chatting/fg;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v5, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fg;->g(Lcom/tencent/mm/ui/chatting/fg;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1185
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fg;->h(Lcom/tencent/mm/ui/chatting/fg;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fg;->h(Lcom/tencent/mm/ui/chatting/fg;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1186
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fg;->b(Lcom/tencent/mm/ui/chatting/fg;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1187
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fg;->i(Lcom/tencent/mm/ui/chatting/fg;)V

    .line 1188
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fg;->h(Lcom/tencent/mm/ui/chatting/fg;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 1191
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fi;->gOn:Lcom/tencent/mm/ui/chatting/fg;

    invoke-static {v0, v4}, Lcom/tencent/mm/ui/chatting/fg;->b(Lcom/tencent/mm/ui/chatting/fg;Z)Z

    goto/16 :goto_0
.end method
