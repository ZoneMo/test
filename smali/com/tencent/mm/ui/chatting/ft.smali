.class final Lcom/tencent/mm/ui/chatting/ft;
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
    .line 181
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ft;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ft;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->a(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->XS()I

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const-string v0, "MicroMsg.ChattingMoreBtnBarHelper"

    const-string v1, "ignore click del btn, selected items count is 0"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ft;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->b(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ft;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/fn;->e(Lcom/tencent/mm/ui/chatting/fn;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ft;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/fn;->f(Lcom/tencent/mm/ui/chatting/fn;)Z

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ft;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/chatting/bh;->a(Landroid/content/Context;Ljava/util/List;ZLcom/tencent/mm/ui/chatting/fn;)V

    goto :goto_0
.end method
