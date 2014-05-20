.class final Lcom/tencent/mm/ui/chatting/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/s;


# instance fields
.field final synthetic gMs:Lcom/tencent/mm/ui/chatting/bv;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/bw;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final pB()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bw;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->a(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/n/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/n/r;->reset()V

    .line 140
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bw;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->b(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 141
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bw;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->c(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 142
    const-string v0, "keep_app_silent"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/am;->sF(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bw;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->d(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->Oe()V

    .line 145
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bw;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->e(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/v;->aIL()V

    .line 146
    const-string v0, "MicroMsg.ChattingFooterEventImpl"

    const-string v1, "record stop on error"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bw;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dg(Z)V

    .line 148
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bw;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->df(Z)V

    .line 149
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bw;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/bw;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v1

    const v2, 0x7f070226

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    return-void
.end method
