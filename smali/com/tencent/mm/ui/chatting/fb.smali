.class final Lcom/tencent/mm/ui/chatting/fb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ctu:Lcom/tencent/mm/storage/ak;

.field final synthetic gOb:Lcom/tencent/mm/ui/chatting/ez;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ez;Lcom/tencent/mm/storage/ak;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/fb;->gOb:Lcom/tencent/mm/ui/chatting/ez;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/fb;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fb;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fb;->gOb:Lcom/tencent/mm/ui/chatting/ez;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ez;->a(Lcom/tencent/mm/ui/chatting/ez;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fb;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->J(Lcom/tencent/mm/storage/ak;)V

    .line 392
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fb;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBY()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fb;->gOb:Lcom/tencent/mm/ui/chatting/ez;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ez;->a(Lcom/tencent/mm/ui/chatting/ez;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fb;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->K(Lcom/tencent/mm/storage/ak;)V

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fb;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fb;->gOb:Lcom/tencent/mm/ui/chatting/ez;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ez;->a(Lcom/tencent/mm/ui/chatting/ez;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fb;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->L(Lcom/tencent/mm/storage/ak;)V

    goto :goto_0

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fb;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fb;->gOb:Lcom/tencent/mm/ui/chatting/ez;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ez;->a(Lcom/tencent/mm/ui/chatting/ez;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fb;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->M(Lcom/tencent/mm/storage/ak;)V

    goto :goto_0

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fb;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 383
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fb;->gOb:Lcom/tencent/mm/ui/chatting/ez;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ez;->a(Lcom/tencent/mm/ui/chatting/ez;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fb;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->P(Lcom/tencent/mm/storage/ak;)V

    goto :goto_0

    .line 384
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fb;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCe()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 386
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fb;->gOb:Lcom/tencent/mm/ui/chatting/ez;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ez;->a(Lcom/tencent/mm/ui/chatting/ez;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fb;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->O(Lcom/tencent/mm/storage/ak;)V

    goto :goto_0

    .line 387
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fb;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCa()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 388
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fb;->gOb:Lcom/tencent/mm/ui/chatting/ez;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ez;->a(Lcom/tencent/mm/ui/chatting/ez;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fb;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->N(Lcom/tencent/mm/storage/ak;)V

    goto :goto_0

    .line 390
    :cond_6
    const-string v0, "MicroMsg.ChattingListClickListener"

    const-string v1, "uknown msg type"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
