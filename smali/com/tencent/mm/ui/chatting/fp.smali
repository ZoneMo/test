.class final Lcom/tencent/mm/ui/chatting/fp;
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
    .line 111
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/fp;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fp;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->a(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->XS()I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-string v0, "MicroMsg.ChattingMoreBtnBarHelper"

    const-string v1, "ignore click del btn, selected items count is 0"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fp;->gOz:Lcom/tencent/mm/ui/chatting/fn;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/fn;->b(Lcom/tencent/mm/ui/chatting/fn;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    .line 120
    const v1, 0x7f070201

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const v3, 0x7f070202

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0709c1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/chatting/fq;

    invoke-direct {v5, p0, v0}, Lcom/tencent/mm/ui/chatting/fq;-><init>(Lcom/tencent/mm/ui/chatting/fp;Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0
.end method
