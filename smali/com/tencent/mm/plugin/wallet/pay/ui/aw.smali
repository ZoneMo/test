.class final Lcom/tencent/mm/plugin/wallet/pay/ui/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic fcS:Lcom/tencent/mm/plugin/wallet/pay/ui/av;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/pay/ui/av;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/aw;->fcS:Lcom/tencent/mm/plugin/wallet/pay/ui/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/aw;->fcS:Lcom/tencent/mm/plugin/wallet/pay/ui/av;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/av;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    .line 165
    const-string v1, "key_err_code"

    const/16 v2, 0x198

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/aw;->fcS:Lcom/tencent/mm/plugin/wallet/pay/ui/av;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/av;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-static {v1, v0}, Lcom/tencent/mm/plugin/wallet/b/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 167
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/aw;->fcS:Lcom/tencent/mm/plugin/wallet/pay/ui/av;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/av;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->finish()V

    .line 168
    return-void
.end method
