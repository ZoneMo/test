.class final Lcom/tencent/mm/plugin/wallet/ui/p;
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
    .line 344
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/ui/p;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    iput-object p2, p0, Lcom/tencent/mm/plugin/wallet/ui/p;->feh:Lcom/tencent/mm/plugin/wallet/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/p;->feh:Lcom/tencent/mm/plugin/wallet/b/i;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/p;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/ui/p;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->aoJ()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/wallet/b/i;->c(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 349
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/p;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->Vf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/p;->feg:Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->finish()V

    .line 352
    :cond_0
    return-void
.end method
