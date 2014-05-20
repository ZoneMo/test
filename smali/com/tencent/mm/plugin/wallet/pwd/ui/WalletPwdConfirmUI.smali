.class public Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;
.super Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;
.source "SourceFile"


# instance fields
.field private csb:Lcom/tencent/mm/sdk/b/g;

.field private eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

.field private fdB:Landroid/widget/TextView;

.field private fdC:Z

.field private fdD:Lcom/tencent/mm/sdk/platformtools/ay;

.field private fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;-><init>()V

    .line 165
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdC:Z

    .line 167
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/pwd/ui/h;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/h;-><init>(Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdD:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 178
    new-instance v0, Lcom/tencent/mm/plugin/wallet/pwd/ui/i;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/i;-><init>(Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->csb:Lcom/tencent/mm/sdk/b/g;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;)Lcom/tencent/mm/plugin/wallet/ui/EditHintView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    return-object v0
.end method

.method private aoD()V
    .locals 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    .line 202
    const-string v1, "intent_bind_end"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    invoke-static {p0, v0}, Lcom/tencent/mm/plugin/wallet/b/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 204
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;)Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdB:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdC:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdC:Z

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->aoD()V

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    sget v0, Lcom/tencent/mm/i;->aQT:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    sget v1, Lcom/tencent/mm/n;->bGB:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 67
    sget v0, Lcom/tencent/mm/i;->awS:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdB:Landroid/widget/TextView;

    .line 68
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/tencent/mm/plugin/wallet/b/g;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdB:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bHs:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdB:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdB:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/pwd/ui/f;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/f;-><init>(Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdB:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdB:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 125
    sget v0, Lcom/tencent/mm/i;->awR:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 126
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/pwd/ui/g;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/g;-><init>(Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 147
    sget v0, Lcom/tencent/mm/i;->anV:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->a(Landroid/view/View;IZ)V

    .line 150
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdB:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bdY:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/plugin/wallet/c/a;)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 208
    if-nez p1, :cond_a

    if-nez p2, :cond_a

    .line 209
    instance-of v0, p4, Lcom/tencent/mm/plugin/wallet/bind/model/g;

    if-eqz v0, :cond_2

    .line 210
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdC:Z

    if-nez v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->aoD()V

    :cond_0
    :goto_0
    move v0, v1

    .line 244
    :cond_1
    :goto_1
    return v0

    .line 213
    :cond_2
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/tencent/mm/plugin/wallet/b/i;->d(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 214
    new-instance v2, Lcom/tencent/mm/plugin/wallet/bind/model/g;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->faP:Ljava/lang/String;

    :goto_2
    invoke-direct {v2, v0}, Lcom/tencent/mm/plugin/wallet/bind/model/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->k(Lcom/tencent/mm/n/x;)V

    .line 215
    new-instance v0, Lcom/tencent/mm/c/a/im;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/im;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/tencent/mm/sdk/b/f;->g(Lcom/tencent/mm/sdk/b/e;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdC:Z

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdD:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    goto :goto_0

    .line 214
    :cond_4
    const-string v0, ""

    goto :goto_2

    .line 217
    :cond_5
    instance-of v0, p4, Lcom/tencent/mm/plugin/wallet/pwd/a/c;

    if-eqz v0, :cond_6

    .line 218
    invoke-static {p0, v2}, Lcom/tencent/mm/plugin/wallet/b/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 219
    :cond_6
    instance-of v0, p4, Lcom/tencent/mm/plugin/wallet/pay/model/h;

    if-eqz v0, :cond_8

    .line 220
    check-cast p4, Lcom/tencent/mm/plugin/wallet/pay/model/h;

    .line 221
    iget-boolean v0, p4, Lcom/tencent/mm/plugin/wallet/pay/model/h;->fbe:Z

    if-eqz v0, :cond_7

    .line 222
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    .line 223
    const-string v2, "key_orders"

    iget-object v3, p4, Lcom/tencent/mm/plugin/wallet/pay/model/h;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 225
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/plugin/wallet/b/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 226
    :cond_8
    instance-of v0, p4, Lcom/tencent/mm/plugin/wallet/pwd/a/a;

    if-eqz v0, :cond_9

    .line 227
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/plugin/wallet/b/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 228
    sget v0, Lcom/tencent/mm/n;->bGC:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_0

    .line 230
    :cond_9
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/plugin/wallet/b/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 233
    :cond_a
    instance-of v2, p4, Lcom/tencent/mm/plugin/wallet/pwd/a/a;

    if-eqz v2, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/plugin/wallet/pwd/ui/j;

    invoke-direct {v4, p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/j;-><init>(Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;)V

    invoke-static {v2, p3, v3, v0, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move v0, v1

    .line 242
    goto/16 :goto_1
.end method

.method protected final anq()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method protected final ant()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public final aoB()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 249
    sget v0, Lcom/tencent/mm/k;->bbU:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget v0, Lcom/tencent/mm/n;->bHt:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->mn(I)V

    .line 57
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_pay_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    .line 58
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->FR()V

    .line 59
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/plugin/wallet/b/l;->a(Landroid/app/Activity;Landroid/os/Bundle;I)V

    .line 60
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 161
    invoke-super {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onPause()V

    .line 162
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "WalletPwdConfirmDoSecondaryProgressCallback"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->csb:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->requestFocus()Z

    .line 155
    invoke-super {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onResume()V

    .line 156
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "WalletPwdConfirmDoSecondaryProgressCallback"

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletPwdConfirmUI;->csb:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 157
    return-void
.end method
