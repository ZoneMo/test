.class final Lcom/tencent/mm/ui/chatting/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gMs:Lcom/tencent/mm/ui/chatting/bv;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/by;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/by;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->g(Lcom/tencent/mm/ui/chatting/bv;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const-string v0, "MicroMsg.ChattingFooterEventImpl"

    const-string v1, "jacks already stop before begin!!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/by;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->h(Lcom/tencent/mm/ui/chatting/bv;)Z

    .line 234
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/by;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->b(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 235
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/by;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->c(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 236
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/by;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->d(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/by;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/bv;->i(Lcom/tencent/mm/ui/chatting/bv;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->kA(I)V

    .line 237
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/by;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->e(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/v;->aIK()V

    .line 238
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/by;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->j(Lcom/tencent/mm/ui/chatting/bv;)V

    .line 239
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/by;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/bv;->aJc()V

    .line 240
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/by;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->nE(I)V

    .line 242
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->pause()V

    .line 243
    invoke-static {}, Lcom/tencent/mm/model/be;->nT()Lcom/tencent/mm/model/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/ah;->of()V

    .line 244
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/by;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->f(Lcom/tencent/mm/ui/chatting/bv;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dL(Z)V

    goto :goto_0
.end method
