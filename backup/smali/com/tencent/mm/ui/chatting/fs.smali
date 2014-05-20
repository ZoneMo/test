.class final Lcom/tencent/mm/ui/chatting/fs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gOz:Lcom/tencent/mm/ui/chatting/fn;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/fn;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/fs;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fs;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->a(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->XS()I

    move-result v0

    if-nez v0, :cond_1

    .line 170
    const-string v0, "MicroMsg.ChattingMoreBtnBarHelper"

    const-string v1, "ignore click del btn, selected items count is 0"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fs;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->b(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/fs;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/fn;->e(Lcom/tencent/mm/ui/chatting/fn;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/fs;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/fn;->g(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/storage/i;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/chatting/bu;->a(Landroid/content/Context;Ljava/util/List;Lcom/tencent/mm/storage/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fs;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fn;->aJs()V

    goto :goto_0
.end method
