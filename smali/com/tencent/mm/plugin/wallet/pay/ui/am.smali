.class public final Lcom/tencent/mm/plugin/wallet/pay/ui/am;
.super Lcom/tencent/mm/ui/base/ar;
.source "SourceFile"


# instance fields
.field cqS:Landroid/widget/ImageView;

.field private dey:Landroid/view/View;

.field private fcA:Landroid/widget/Button;

.field private fcB:Z

.field fcC:Lcom/tenpay/android/wechat/MyKeyboardWindow;

.field fcD:Landroid/widget/TextView;

.field fcE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field fcF:Lcom/tencent/mm/plugin/wallet/pay/ui/ar;

.field private fcz:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 49
    sget v0, Lcom/tencent/mm/o;->bIP:I

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/base/ar;-><init>(Landroid/content/Context;I)V

    .line 50
    sget v0, Lcom/tencent/mm/k;->bbE:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->dey:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->dey:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aBn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcz:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->dey:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aBh:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcA:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->dey:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aMJ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tenpay/android/wechat/MyKeyboardWindow;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcC:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->dey:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcD:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->dey:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->apo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->cqS:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->cqS:Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->dey:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->awR:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/f;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->jO(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcz:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcz:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/f;->aaB:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/pay/ui/an;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/an;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/am;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->requestFocus()Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->dey:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->awb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/e/b;->a(Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcC:Lcom/tenpay/android/wechat/MyKeyboardWindow;

    invoke-virtual {v1, v0}, Lcom/tenpay/android/wechat/MyKeyboardWindow;->setInputEditText(Landroid/widget/EditText;)V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/pay/ui/am;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcz:Landroid/widget/Button;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/plugin/wallet/pay/ui/ar;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/plugin/wallet/ui/EditHintView;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 160
    new-instance v1, Lcom/tencent/mm/plugin/wallet/pay/ui/aq;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/wallet/pay/ui/aq;-><init>()V

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 167
    :goto_0
    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    return-object v0

    .line 160
    :cond_0
    new-instance v0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;

    sget v2, Lcom/tencent/mm/o;->bIP:I

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/wallet/pay/ui/am;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcz:Landroid/widget/Button;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcz:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcz:Landroid/widget/Button;

    new-instance v3, Lcom/tencent/mm/plugin/wallet/pay/ui/ao;

    invoke-direct {v3, v0, v1}, Lcom/tencent/mm/plugin/wallet/pay/ui/ao;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/am;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcA:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcA:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcA:Landroid/widget/Button;

    new-instance v2, Lcom/tencent/mm/plugin/wallet/pay/ui/ap;

    invoke-direct {v2, v0, p3}, Lcom/tencent/mm/plugin/wallet/pay/ui/ap;-><init>(Lcom/tencent/mm/plugin/wallet/pay/ui/am;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {v0, v4}, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->setCancelable(Z)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcD:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p2, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcF:Lcom/tencent/mm/plugin/wallet/pay/ui/ar;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->show()V

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method


# virtual methods
.method public final dismiss()V
    .locals 4

    .prologue
    .line 101
    :try_start_0
    invoke-super {p0}, Lcom/tencent/mm/ui/base/ar;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string v1, "MicroMsg.MMDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dismiss exception, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/ar;->onCreate(Landroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->dey:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->setContentView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public final setCancelable(Z)V
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/ar;->setCancelable(Z)V

    .line 94
    iput-boolean p1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcB:Z

    .line 95
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcB:Z

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->setCanceledOnTouchOutside(Z)V

    .line 96
    return-void
.end method
