.class final Lcom/tencent/mm/ui/chatting/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic gMs:Lcom/tencent/mm/ui/chatting/bv;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/cb;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 13

    .prologue
    const-wide/16 v7, 0x3e8

    const v12, 0x7f080004

    const/4 v1, 0x1

    const-wide/32 v10, 0xea60

    const/4 v0, 0x0

    .line 310
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/cb;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/bv;->a(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/n/r;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/n/r;->wG()J

    move-result-wide v2

    .line 311
    const-string v4, "MicroMsg.ChattingFooterEventImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ms "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-wide/32 v4, 0xc350

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    cmp-long v4, v2, v10

    if-gtz v4, :cond_0

    .line 313
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/cb;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v4}, Lcom/tencent/mm/ui/chatting/bv;->l(Lcom/tencent/mm/ui/chatting/bv;)Landroid/widget/Toast;

    move-result-object v4

    if-nez v4, :cond_1

    .line 315
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/cb;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v4}, Lcom/tencent/mm/ui/chatting/bv;->m(Lcom/tencent/mm/ui/chatting/bv;)Landroid/os/Vibrator;

    move-result-object v4

    const-wide/16 v5, 0x32

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 316
    sub-long v4, v10, v2

    div-long/2addr v4, v7

    long-to-int v4, v4

    .line 317
    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/cb;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/cb;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v6}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/mm/ui/chatting/cb;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v7}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-virtual {v7, v12, v4, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tencent/mm/ui/chatting/bv;->a(Lcom/tencent/mm/ui/chatting/bv;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 323
    :goto_0
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/cb;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v4}, Lcom/tencent/mm/ui/chatting/bv;->l(Lcom/tencent/mm/ui/chatting/bv;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 326
    :cond_0
    cmp-long v2, v2, v10

    if-ltz v2, :cond_2

    .line 327
    const-string v1, "MicroMsg.ChattingFooterEventImpl"

    const-string v2, "record stop on countdown"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cb;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/bv;->n(Lcom/tencent/mm/ui/chatting/bv;)Z

    .line 329
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cb;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/bv;->d(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->Oe()V

    .line 330
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cb;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v1

    const v2, 0x7f070bb8

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/bq;->q(Landroid/content/Context;I)V

    .line 333
    :goto_1
    return v0

    .line 320
    :cond_1
    sub-long v4, v10, v2

    div-long/2addr v4, v7

    long-to-int v4, v4

    .line 321
    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/cb;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v5}, Lcom/tencent/mm/ui/chatting/bv;->l(Lcom/tencent/mm/ui/chatting/bv;)Landroid/widget/Toast;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/cb;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v6}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {v6, v12, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 333
    goto :goto_1
.end method
