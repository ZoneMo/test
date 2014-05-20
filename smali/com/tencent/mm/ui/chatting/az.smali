.class final Lcom/tencent/mm/ui/chatting/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/applet/r;


# instance fields
.field final synthetic gLK:Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;

.field final synthetic gLL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/az;->gLK:Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/az;->gLL:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 169
    const-string v0, "MicroMsg.ChatMoreSelectUI"

    const-string v1, "on restran dialog return, result %B"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    if-nez p1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/az;->gLK:Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/az;->gLK:Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->aal()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/az;->gLK:Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;

    const v3, 0x7f0709bb

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->getString(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/az;->gLK:Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;

    const v3, 0x7f07020e

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->a(Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;Lcom/tencent/mm/ui/base/ch;)Lcom/tencent/mm/ui/base/ch;

    .line 174
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/az;->gLK:Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/az;->gLL:Ljava/lang/String;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ba;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ba;-><init>(Lcom/tencent/mm/ui/chatting/az;)V

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/chatting/bh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
