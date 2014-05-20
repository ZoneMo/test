.class final Lcom/tencent/mm/plugin/wallet/address/ui/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/q;->eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/q;->eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->d(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)Lcom/tencent/mm/plugin/wallet/protocal/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/q;->eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->d(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)Lcom/tencent/mm/plugin/wallet/protocal/b;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mm/plugin/wallet/protocal/b;->id:I

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Lcom/tencent/mm/plugin/wallet/address/model/d;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/q;->eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->d(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)Lcom/tencent/mm/plugin/wallet/protocal/b;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mm/plugin/wallet/protocal/b;->id:I

    invoke-direct {v0, v1}, Lcom/tencent/mm/plugin/wallet/address/model/d;-><init>(I)V

    .line 249
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/q;->eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/q;->eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/tencent/mm/plugin/wallet/address/ui/r;

    invoke-direct {v4, p0}, Lcom/tencent/mm/plugin/wallet/address/ui/r;-><init>(Lcom/tencent/mm/plugin/wallet/address/ui/q;)V

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->a(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 255
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 257
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
