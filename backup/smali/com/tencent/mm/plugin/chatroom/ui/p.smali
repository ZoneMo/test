.class final Lcom/tencent/mm/plugin/chatroom/ui/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic cWW:Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/tencent/mm/plugin/chatroom/ui/p;->cWW:Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 199
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/ui/p;->cWW:Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;->e(Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    iget-object v1, p0, Lcom/tencent/mm/plugin/chatroom/ui/p;->cWW:Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;

    iget-object v2, p0, Lcom/tencent/mm/plugin/chatroom/ui/p;->cWW:Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;

    sget v3, Lcom/tencent/mm/n;->bgB:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;->a(Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    const-string v1, "rawUrl"

    iget-object v2, p0, Lcom/tencent/mm/plugin/chatroom/ui/p;->cWW:Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;->f(Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v1, "geta8key_username"

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v1, "showShare"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/tencent/mm/plugin/chatroom/ui/p;->cWW:Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;

    const-string v2, "webview"

    const-string v3, "com.tencent.mm.ui.tools.WebViewUI"

    const/16 v4, 0x1f4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/tencent/mm/ak/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 207
    :cond_0
    return-void
.end method
