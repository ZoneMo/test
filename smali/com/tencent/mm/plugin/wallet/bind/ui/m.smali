.class final Lcom/tencent/mm/plugin/wallet/bind/ui/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/v;


# instance fields
.field final synthetic dRT:Z

.field final synthetic eYi:Z

.field final synthetic eYj:Lcom/tencent/mm/plugin/wallet/bind/ui/l;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/bind/ui/l;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/m;->eYj:Lcom/tencent/mm/plugin/wallet/bind/ui/l;

    iput-boolean p2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/m;->eYi:Z

    iput-boolean p3, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/m;->dRT:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bo(I)V
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/m;->eYi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/m;->eYi:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/m;->dRT:Z

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/m;->eYj:Lcom/tencent/mm/plugin/wallet/bind/ui/l;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/l;->eYh:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardDetailUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardDetailUI;->c(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardDetailUI;)V

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/m;->eYj:Lcom/tencent/mm/plugin/wallet/bind/ui/l;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/l;->eYh:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardDetailUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardDetailUI;->d(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardDetailUI;)V

    goto :goto_0

    .line 168
    :cond_1
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/m;->eYj:Lcom/tencent/mm/plugin/wallet/bind/ui/l;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/l;->eYh:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardDetailUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardDetailUI;->c(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardDetailUI;)V

    goto :goto_0

    .line 173
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/m;->eYj:Lcom/tencent/mm/plugin/wallet/bind/ui/l;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/l;->eYh:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardDetailUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardDetailUI;->e(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardDetailUI;)V

    goto :goto_0

    .line 176
    :pswitch_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/m;->eYj:Lcom/tencent/mm/plugin/wallet/bind/ui/l;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/l;->eYh:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardDetailUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardDetailUI;->d(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletBankcardDetailUI;)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 168
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
