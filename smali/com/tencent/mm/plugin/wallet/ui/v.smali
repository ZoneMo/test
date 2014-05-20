.class final Lcom/tencent/mm/plugin/wallet/ui/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;)V
    .locals 0
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/ui/v;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 654
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/v;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aoM()V

    .line 655
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/v;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v0

    .line 656
    if-eqz v0, :cond_0

    .line 657
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/v;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/v;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aoJ()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/wallet/b/i;->c(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 661
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/v;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->finish()V

    goto :goto_0
.end method
