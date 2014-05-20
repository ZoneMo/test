.class final Lcom/tencent/mm/ui/pluginapp/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic hdq:Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/tencent/mm/ui/pluginapp/t;->hdq:Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 557
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/t;->hdq:Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->e(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v2, 0x1008

    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/t;->hdq:Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->e(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 560
    :cond_0
    invoke-static {}, Lcom/tencent/mm/ui/LauncherUI;->aEA()Lcom/tencent/mm/ui/LauncherUI;

    move-result-object v0

    const-string v1, "tab_find_friend"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/LauncherUI;->vS(Ljava/lang/String;)V

    .line 562
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dz()Lcom/tencent/mm/ah/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ah/h;->Dr()I

    move-result v0

    if-lez v0, :cond_2

    .line 563
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/t;->hdq:Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "nearby"

    const-string v2, ".ui.NearbyFriendShowSayHiUI"

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ak/a;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :goto_1
    return-void

    .line 558
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 565
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/t;->hdq:Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "nearby"

    const-string v2, ".ui.NearbyFriendsUI"

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ak/a;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
