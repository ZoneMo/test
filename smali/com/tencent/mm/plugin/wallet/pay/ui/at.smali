.class final Lcom/tencent/mm/plugin/wallet/pay/ui/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 109
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->b(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Z

    .line 110
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->c(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 111
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->c(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->d(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Lcom/tencent/mm/plugin/wallet/pay/ui/az;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->d(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Lcom/tencent/mm/plugin/wallet/pay/ui/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/az;->cancel()V

    .line 114
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->a(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;Lcom/tencent/mm/plugin/wallet/pay/ui/az;)Lcom/tencent/mm/plugin/wallet/pay/ui/az;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    new-instance v3, Lcom/tencent/mm/plugin/wallet/pay/ui/az;

    iget-object v4, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-direct {v3, v4}, Lcom/tencent/mm/plugin/wallet/pay/ui/az;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)V

    invoke-static {v0, v3}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->a(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;Lcom/tencent/mm/plugin/wallet/pay/ui/az;)Lcom/tencent/mm/plugin/wallet/pay/ui/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/az;->start()Landroid/os/CountDownTimer;

    .line 117
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->e(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Lcom/tencent/mm/plugin/wallet/pay/model/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pay/model/j;->start()V

    .line 118
    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "key_authen"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    invoke-static {v3, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->a(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;Lcom/tencent/mm/plugin/wallet/protocal/Authen;)Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    .line 119
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->f(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    move-result-object v0

    if-nez v0, :cond_2

    .line 120
    const-string v0, "MicroMsg.WalletVertifyCodeUI"

    const-string v1, "error authen is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->f(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    move-result-object v0

    iput-boolean v1, v0, Lcom/tencent/mm/plugin/wallet/protocal/Authen;->fdk:Z

    .line 124
    sget-object v3, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v4, 0x29d2

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->g(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->fbh:I

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->h(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 125
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/b/l;->anR()V

    .line 126
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_5

    instance-of v1, v0, Lcom/tencent/mm/plugin/wallet/b/b;

    if-eqz v1, :cond_5

    .line 128
    check-cast v0, Lcom/tencent/mm/plugin/wallet/b/b;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->f(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->i(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/wallet/b/b;->a(Lcom/tencent/mm/plugin/wallet/protocal/Authen;Lcom/tencent/mm/plugin/wallet/order/model/Orders;)Lcom/tencent/mm/plugin/wallet/c/a;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->l(Lcom/tencent/mm/n/x;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 124
    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    .line 130
    :cond_5
    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/tencent/mm/plugin/wallet/b/g;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/pay/model/e;

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->f(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/at;->fcR:Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;

    invoke-static {v3}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->i(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/plugin/wallet/pay/model/e;-><init>(Lcom/tencent/mm/plugin/wallet/protocal/Authen;Lcom/tencent/mm/plugin/wallet/order/model/Orders;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->l(Lcom/tencent/mm/n/x;)V

    goto :goto_0
.end method
