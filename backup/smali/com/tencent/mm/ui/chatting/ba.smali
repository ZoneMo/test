.class final Lcom/tencent/mm/ui/chatting/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gLM:Lcom/tencent/mm/ui/chatting/az;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/az;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ba;->gLM:Lcom/tencent/mm/ui/chatting/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ba;->gLM:Lcom/tencent/mm/ui/chatting/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/az;->gLK:Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->d(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ba;->gLM:Lcom/tencent/mm/ui/chatting/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/az;->gLK:Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->d(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ch;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ba;->gLM:Lcom/tencent/mm/ui/chatting/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/az;->gLK:Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->d(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ch;->dismiss()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ba;->gLM:Lcom/tencent/mm/ui/chatting/az;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/az;->gLK:Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ba;->gLM:Lcom/tencent/mm/ui/chatting/az;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/az;->gLK:Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070224

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 182
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ba;->gLM:Lcom/tencent/mm/ui/chatting/az;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/az;->gLK:Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    const-string v1, "Chat_User"

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ba;->gLM:Lcom/tencent/mm/ui/chatting/az;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/az;->gLL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ba;->gLM:Lcom/tencent/mm/ui/chatting/az;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/az;->gLK:Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->startActivity(Landroid/content/Intent;)V

    .line 186
    return-void
.end method
