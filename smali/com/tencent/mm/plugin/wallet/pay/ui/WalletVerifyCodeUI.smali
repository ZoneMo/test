.class public Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;
.super Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/plugin/wallet/ui/l;


# instance fields
.field private dLL:Landroid/widget/Button;

.field private eYV:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

.field private eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

.field private eZJ:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

.field private fcK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private fcL:Landroid/widget/Button;

.field private fcM:Ljava/lang/String;

.field private fcN:Lcom/tencent/mm/plugin/wallet/pay/model/j;

.field private fcO:Ljava/lang/String;

.field private fcP:Z

.field private fcQ:Lcom/tencent/mm/plugin/wallet/pay/ui/az;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 54
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcN:Lcom/tencent/mm/plugin/wallet/pay/model/j;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcP:Z

    .line 61
    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcQ:Lcom/tencent/mm/plugin/wallet/pay/ui/az;

    .line 268
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;Lcom/tencent/mm/plugin/wallet/pay/ui/az;)Lcom/tencent/mm/plugin/wallet/pay/ui/az;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcQ:Lcom/tencent/mm/plugin/wallet/pay/ui/az;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;Lcom/tencent/mm/plugin/wallet/protocal/Authen;)Lcom/tencent/mm/plugin/wallet/protocal/Authen;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->eZJ:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Lcom/tencent/mm/plugin/wallet/ui/EditHintView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcP:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcL:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Lcom/tencent/mm/plugin/wallet/pay/ui/az;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcQ:Lcom/tencent/mm/plugin/wallet/pay/ui/az;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Lcom/tencent/mm/plugin/wallet/pay/model/j;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcN:Lcom/tencent/mm/plugin/wallet/pay/model/j;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Lcom/tencent/mm/plugin/wallet/protocal/Authen;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->eZJ:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcP:Z

    return v0
.end method

.method static synthetic i(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)Lcom/tencent/mm/plugin/wallet/order/model/Orders;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->eYV:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)V
    .locals 4
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_pwd1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcM:Ljava/lang/String;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/pay/model/l;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/wallet/pay/model/l;-><init>()V

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/model/l;->fbq:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/model/l;->dHN:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcM:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/model/l;->fbr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "kreq_token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/plugin/wallet/pay/model/l;->etE:Ljava/lang/String;

    const-string v0, "MicroMsg.WalletVertifyCodeUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payInfo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/tencent/mm/plugin/wallet/pay/model/l;->dHN:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mVerifyCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v0

    instance-of v2, v0, Lcom/tencent/mm/plugin/wallet/b/b;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/b/b;

    iget-object v2, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->eYV:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/wallet/b/b;->a(Lcom/tencent/mm/plugin/wallet/pay/model/l;Lcom/tencent/mm/plugin/wallet/order/model/Orders;)Lcom/tencent/mm/plugin/wallet/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->l(Lcom/tencent/mm/n/x;)V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)V
    .locals 5
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcO:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcO:Ljava/lang/String;

    :cond_0
    sget v0, Lcom/tencent/mm/n;->bHx:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcO:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/tencent/mm/k;->aUY:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/tencent/mm/g;->aaQ:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/tencent/mm/n;->bHy:I

    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/tencent/mm/n;->bxp:I

    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/plugin/wallet/pay/ui/ay;

    invoke-direct {v4, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/ay;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)V

    invoke-static {v0, v2, v3, v1, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 91
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v1

    .line 92
    sget v0, Lcom/tencent/mm/i;->anV:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->aoJ()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "key_mobile"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    instance-of v3, v1, Lcom/tencent/mm/plugin/wallet/b/g;

    if-eqz v3, :cond_1

    .line 95
    sget v3, Lcom/tencent/mm/n;->bHA:I

    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_0
    sget v0, Lcom/tencent/mm/i;->anL:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 103
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 104
    sget v0, Lcom/tencent/mm/i;->avE:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcL:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcL:Landroid/widget/Button;

    new-instance v2, Lcom/tencent/mm/plugin/wallet/pay/ui/at;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/at;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcL:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 137
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcL:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcQ:Lcom/tencent/mm/plugin/wallet/pay/ui/az;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcQ:Lcom/tencent/mm/plugin/wallet/pay/ui/az;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/az;->cancel()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcQ:Lcom/tencent/mm/plugin/wallet/pay/ui/az;

    .line 142
    :cond_0
    new-instance v0, Lcom/tencent/mm/plugin/wallet/pay/ui/az;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/az;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcQ:Lcom/tencent/mm/plugin/wallet/pay/ui/az;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/az;->start()Landroid/os/CountDownTimer;

    .line 144
    sget v0, Lcom/tencent/mm/i;->anI:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->dLL:Landroid/widget/Button;

    .line 145
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->dLL:Landroid/widget/Button;

    new-instance v2, Lcom/tencent/mm/plugin/wallet/pay/ui/au;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/au;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    sget v0, Lcom/tencent/mm/i;->anU:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/b/i;->anQ()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    new-instance v1, Lcom/tencent/mm/plugin/wallet/pay/ui/av;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/av;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->requestFocus()Z

    .line 185
    return-void

    .line 96
    :cond_1
    instance-of v3, v1, Lcom/tencent/mm/plugin/wallet/b/b;

    if-eqz v3, :cond_2

    .line 97
    sget v3, Lcom/tencent/mm/n;->bHv:I

    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 99
    :cond_2
    sget v3, Lcom/tencent/mm/n;->bHz:I

    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 175
    :cond_3
    sget v1, Lcom/tencent/mm/n;->bHw:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    new-instance v1, Lcom/tencent/mm/plugin/wallet/pay/ui/ax;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/ax;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/plugin/wallet/c/a;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x29d3

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 209
    const-string v0, "MicroMsg.WalletVertifyCodeUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, " errCode: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " errMsg :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 213
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v1

    .line 214
    instance-of v0, p4, Lcom/tencent/mm/plugin/wallet/bind/model/g;

    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent_bind_end"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    sget v0, Lcom/tencent/mm/n;->bFp:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move v1, v2

    .line 228
    :goto_0
    instance-of v0, p4, Lcom/tencent/mm/plugin/wallet/pay/model/f;

    if-eqz v0, :cond_4

    move-object v0, p4

    .line 229
    check-cast v0, Lcom/tencent/mm/plugin/wallet/pay/model/f;

    .line 230
    iget-boolean v4, v0, Lcom/tencent/mm/plugin/wallet/pay/model/f;->fbe:Z

    if-eqz v4, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->aoJ()Landroid/os/Bundle;

    move-result-object v4

    .line 232
    const-string v5, "key_orders"

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/pay/model/f;->fbf:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 234
    :cond_0
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/b/l;->anS()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v7, v4}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 239
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->eZJ:Lcom/tencent/mm/plugin/wallet/protocal/Authen;

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {p4}, Lcom/tencent/mm/plugin/wallet/c/a;->ank()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->aoJ()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "kreq_token"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_2
    if-eqz v1, :cond_5

    .line 247
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    .line 248
    const-string v1, "Kvertify_code"

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcM:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {p0, v0}, Lcom/tencent/mm/plugin/wallet/b/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 250
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->finish()V

    .line 254
    :goto_2
    return v2

    .line 218
    :cond_3
    instance-of v0, v1, Lcom/tencent/mm/plugin/wallet/b/b;

    if-eqz v0, :cond_7

    move-object v0, v1

    .line 219
    check-cast v0, Lcom/tencent/mm/plugin/wallet/b/b;

    invoke-virtual {v0, p4}, Lcom/tencent/mm/plugin/wallet/b/b;->a(Lcom/tencent/mm/plugin/wallet/c/a;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 221
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/tencent/mm/plugin/wallet/b/i;->d(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 222
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/model/g;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->aoK()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/plugin/wallet/bind/model/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->k(Lcom/tencent/mm/n/x;)V

    move v1, v3

    .line 223
    goto :goto_0

    .line 235
    :cond_4
    instance-of v0, p4, Lcom/tencent/mm/plugin/wallet/bind/model/e;

    if-eqz v0, :cond_1

    .line 236
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/b/l;->anS()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v7, v4}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    move v2, v3

    .line 254
    goto :goto_2

    :cond_6
    move v1, v2

    goto/16 :goto_0

    :cond_7
    move v1, v3

    goto/16 :goto_0
.end method

.method public final aN(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcK:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->U(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->dLL:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->dLL:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 312
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->dLL:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->dLL:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0
.end method

.method protected final anq()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public final aoB()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 259
    sget v0, Lcom/tencent/mm/k;->bbX:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 65
    invoke-super {p0, p1}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget v0, Lcom/tencent/mm/n;->bHC:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->mn(I)V

    .line 67
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "key_pay_info"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    .line 68
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "key_orders"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->eYV:Lcom/tencent/mm/plugin/wallet/order/model/Orders;

    .line 69
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "key_bank_phone"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcO:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/tencent/mm/plugin/wallet/pay/model/j;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v3, p0}, Lcom/tencent/mm/plugin/wallet/pay/model/j;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcN:Lcom/tencent/mm/plugin/wallet/pay/model/j;

    .line 71
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcN:Lcom/tencent/mm/plugin/wallet/pay/model/j;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/mm/c;->ZB:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/plugin/wallet/pay/model/j;->x([Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcN:Lcom/tencent/mm/plugin/wallet/pay/model/j;

    new-instance v3, Lcom/tencent/mm/plugin/wallet/pay/ui/as;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/as;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;)V

    invoke-virtual {v0, v3}, Lcom/tencent/mm/plugin/wallet/pay/model/j;->a(Lcom/tencent/mm/plugin/wallet/pay/model/k;)V

    .line 80
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcN:Lcom/tencent/mm/plugin/wallet/pay/model/j;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pay/model/j;->start()V

    .line 82
    iput-boolean v6, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcP:Z

    .line 83
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->FR()V

    .line 84
    sget-object v3, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v4, 0x29d2

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->eYW:Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;

    iget v0, v0, Lcom/tencent/mm/plugin/wallet/pay/model/PayInfo;->fbh:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcP:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 85
    invoke-static {}, Lcom/tencent/mm/plugin/wallet/b/l;->anR()V

    .line 86
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/plugin/wallet/b/l;->a(Landroid/app/Activity;Landroid/os/Bundle;I)V

    .line 87
    return-void

    :cond_0
    move v0, v2

    .line 84
    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcN:Lcom/tencent/mm/plugin/wallet/pay/model/j;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcN:Lcom/tencent/mm/plugin/wallet/pay/model/j;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pay/model/j;->stop()V

    .line 323
    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onDestroy()V

    .line 324
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcN:Lcom/tencent/mm/plugin/wallet/pay/model/j;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/WalletVerifyCodeUI;->fcN:Lcom/tencent/mm/plugin/wallet/pay/model/j;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pay/model/j;->stop()V

    .line 294
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
