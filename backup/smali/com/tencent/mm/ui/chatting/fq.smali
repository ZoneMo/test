.class final Lcom/tencent/mm/ui/chatting/fq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic cGV:Landroid/content/Context;

.field final synthetic gOA:Lcom/tencent/mm/ui/chatting/fp;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/fp;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/fq;->gOA:Lcom/tencent/mm/ui/chatting/fp;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/fq;->cGV:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 126
    const-string v0, "MicroMsg.ChattingMoreBtnBarHelper"

    const-string v1, "delete message"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fq;->cGV:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fq;->gOA:Lcom/tencent/mm/ui/chatting/fp;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/fp;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/fn;->a(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/es;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/es;->aJn()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/fq;->gOA:Lcom/tencent/mm/ui/chatting/fp;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/fp;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.ChattingEditModeDelMsg"

    const-string v1, "do delete msg fail, context is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fq;->gOA:Lcom/tencent/mm/ui/chatting/fp;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/fp;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fn;->aJs()V

    .line 129
    return-void

    .line 127
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v0, "MicroMsg.ChattingEditModeDelMsg"

    const-string v1, "do delete msg fail, select ids is empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v3, 0x7f0709bb

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    const v3, 0x7f070204

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v5, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    sget-object v3, Lcom/tencent/mm/ui/chatting/fn;->gOp:Lcom/tencent/mm/sdk/platformtools/bu;

    new-instance v4, Lcom/tencent/mm/ui/chatting/bf;

    invoke-direct {v4, v1, v0, v2}, Lcom/tencent/mm/ui/chatting/bf;-><init>(Ljava/util/Set;Lcom/tencent/mm/ui/base/ch;Lcom/tencent/mm/ui/chatting/fn;)V

    invoke-virtual {v3, v4}, Lcom/tencent/mm/sdk/platformtools/bu;->c(Lcom/tencent/mm/sdk/platformtools/bw;)I

    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v2, 0x2a3b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto :goto_0
.end method
