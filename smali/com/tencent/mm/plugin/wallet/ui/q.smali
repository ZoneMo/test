.class final Lcom/tencent/mm/plugin/wallet/ui/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

.field final synthetic feh:Lcom/tencent/mm/plugin/wallet/b/i;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;Lcom/tencent/mm/plugin/wallet/b/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/ui/q;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    iput-object p2, p0, Lcom/tencent/mm/plugin/wallet/ui/q;->feh:Lcom/tencent/mm/plugin/wallet/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 360
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/q;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_bankcard"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    .line 361
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/q;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aoJ()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_pay_info"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    .line 362
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->faP:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWX:Ljava/lang/String;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/q;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_err_code"

    const/16 v2, -0x3ec

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 366
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/q;->feh:Lcom/tencent/mm/plugin/wallet/b/i;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/q;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/q;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aoJ()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/wallet/b/i;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 367
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/q;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->Vf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/q;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->finish()V

    .line 370
    :cond_1
    return-void
.end method
