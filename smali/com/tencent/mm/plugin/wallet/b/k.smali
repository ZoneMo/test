.class public Lcom/tencent/mm/plugin/wallet/b/k;
.super Lcom/tencent/mm/plugin/wallet/b/i;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/tencent/mm/plugin/wallet/b/i;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    const-string v0, "MicroMsg.ProcessActivityMgr"

    const-string v1, "start Process : UnbindProcess"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-class v0, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardDetailUI;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/mm/plugin/wallet/b/k;->b(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 30
    return-object p0
.end method

.method public b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    const-string v1, "offline_pay"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 40
    :cond_0
    instance-of v1, p1, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardDetailUI;

    if-eqz v1, :cond_2

    .line 41
    const-class v0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/mm/plugin/wallet/b/k;->b(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 49
    :cond_1
    :goto_0
    return-void

    .line 42
    :cond_2
    instance-of v1, p1, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 43
    const-class v0, Lcom/tencent/mm/plugin/wallet/offline/ui/WalletOfflinePayAuthenFinishUI;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/mm/plugin/wallet/b/k;->b(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 44
    :cond_3
    instance-of v1, p1, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/b/k;->c(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 46
    :cond_4
    instance-of v0, p1, Lcom/tencent/mm/plugin/wallet/offline/ui/WalletOfflinePayAuthenFinishUI;

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/b/k;->c(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public c(Landroid/app/Activity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-static {p1}, Lcom/tencent/mm/plugin/wallet/b/k;->n(Landroid/app/Activity;)V

    .line 54
    return-void
.end method

.method public c(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/b/i;->h(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public d(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    instance-of v0, p1, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;

    return v0
.end method
