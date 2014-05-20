.class final Lcom/tencent/mm/plugin/wallet/address/ui/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/v;


# instance fields
.field final synthetic dmE:I

.field final synthetic eWC:Lcom/tencent/mm/plugin/wallet/address/ui/l;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/address/ui/l;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/m;->eWC:Lcom/tencent/mm/plugin/wallet/address/ui/l;

    iput p2, p0, Lcom/tencent/mm/plugin/wallet/address/ui/m;->dmE:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bo(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 187
    .line 188
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/m;->eWC:Lcom/tencent/mm/plugin/wallet/address/ui/l;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/address/ui/l;->eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->a(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 189
    :try_start_0
    iget v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/m;->dmE:I

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/address/ui/m;->eWC:Lcom/tencent/mm/plugin/wallet/address/ui/l;

    iget-object v3, v3, Lcom/tencent/mm/plugin/wallet/address/ui/l;->eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;

    invoke-static {v3}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->b(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 190
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/m;->eWC:Lcom/tencent/mm/plugin/wallet/address/ui/l;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/address/ui/l;->eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->b(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/tencent/mm/plugin/wallet/address/ui/m;->dmE:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/protocal/b;

    .line 192
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    if-nez v0, :cond_0

    .line 214
    :goto_1
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 198
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 200
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/address/ui/m;->eWC:Lcom/tencent/mm/plugin/wallet/address/ui/l;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/address/ui/l;->eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;

    iget v0, v0, Lcom/tencent/mm/plugin/wallet/protocal/b;->id:I

    invoke-static {v1, v0}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->a(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;I)V

    goto :goto_1

    .line 203
    :pswitch_1
    new-instance v2, Lcom/tencent/mm/plugin/wallet/address/model/c;

    iget v0, v0, Lcom/tencent/mm/plugin/wallet/protocal/b;->id:I

    invoke-direct {v2, v0}, Lcom/tencent/mm/plugin/wallet/address/model/c;-><init>(I)V

    .line 204
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/m;->eWC:Lcom/tencent/mm/plugin/wallet/address/ui/l;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/address/ui/l;->eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/address/ui/m;->eWC:Lcom/tencent/mm/plugin/wallet/address/ui/l;

    iget-object v3, v3, Lcom/tencent/mm/plugin/wallet/address/ui/l;->eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->aal()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/tencent/mm/plugin/wallet/address/ui/n;

    invoke-direct {v5, p0}, Lcom/tencent/mm/plugin/wallet/address/ui/n;-><init>(Lcom/tencent/mm/plugin/wallet/address/ui/m;)V

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->a(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 210
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/address/ui/m;->eWC:Lcom/tencent/mm/plugin/wallet/address/ui/l;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/address/ui/l;->eWB:Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;->a(Lcom/tencent/mm/plugin/wallet/address/ui/WalletSelectAddrUI;Lcom/tencent/mm/plugin/wallet/protocal/b;)Lcom/tencent/mm/plugin/wallet/protocal/b;

    .line 211
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
