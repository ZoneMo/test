.class public final Lcom/tencent/mm/ui/transmit/l;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public bPx:Ljava/lang/String;

.field public cAX:I

.field public context:Landroid/content/Context;

.field public dID:Landroid/app/Dialog;

.field public hrl:I

.field public hrw:Z

.field public hrx:Ljava/lang/String;

.field public hry:Z

.field public hrz:Z

.field public rD:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 644
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 654
    iput-boolean v0, p0, Lcom/tencent/mm/ui/transmit/l;->hry:Z

    .line 655
    iput-boolean v0, p0, Lcom/tencent/mm/ui/transmit/l;->hrz:Z

    return-void
.end method


# virtual methods
.method public final aOZ()V
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/transmit/l;->hrw:Z

    .line 659
    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 644
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ai/r;->gY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ai/r;->ha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tencent/mm/ui/transmit/l;->hrz:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/ui/transmit/l;->rD:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ai/r;->gZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ai/r;->gZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    iget-object v3, p0, Lcom/tencent/mm/ui/transmit/l;->rD:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ai/r;->ha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v5}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/tencent/mm/ui/transmit/l;->rD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ai/r;->gZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v5}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/l;->hrx:Ljava/lang/String;

    invoke-static {v1, v2, v5}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 644
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/l;->dID:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/l;->dID:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v4, p0, Lcom/tencent/mm/ui/transmit/l;->dID:Landroid/app/Dialog;

    :cond_0
    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ai/r;->gZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/mm/ai/r;->ha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v2

    iget-boolean v3, p0, Lcom/tencent/mm/ui/transmit/l;->hrw:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/tencent/mm/a/c;->deleteFile(Ljava/lang/String;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/l;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/l;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070a6a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/l;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/l;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    const-string v0, "MicroMsg.MsgRetransmitUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dkvideo videoIsExport :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/ui/transmit/l;->hrl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mm/ui/transmit/l;->cAX:I

    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/l;->bPx:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mm/ui/transmit/l;->hrl:I

    invoke-static {p1, v0, v1, v4, v2}, Lcom/tencent/mm/ai/v;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-static {p1}, Lcom/tencent/mm/ai/v;->hf(Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/tencent/mm/ui/transmit/l;->hry:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/l;->context:Landroid/content/Context;

    const-class v2, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "Chat_User"

    iget-object v2, p0, Lcom/tencent/mm/ui/transmit/l;->bPx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/l;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x28b8

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x2b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/tencent/mm/ui/transmit/l;->bPx:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
