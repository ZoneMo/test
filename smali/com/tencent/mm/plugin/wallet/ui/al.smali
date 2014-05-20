.class public final Lcom/tencent/mm/plugin/wallet/ui/al;
.super Lcom/tencent/mm/ui/base/ct;
.source "SourceFile"


# instance fields
.field private fen:Landroid/widget/TextView;

.field private feo:Landroid/widget/ProgressBar;

.field private fep:Landroid/view/View;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/base/ct;-><init>(Landroid/content/Context;I)V

    .line 27
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/ui/al;->mContext:Landroid/content/Context;

    .line 28
    sget v0, Lcom/tencent/mm/k;->bbQ:I

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/ui/al;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/al;->fep:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/al;->fep:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aBA:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/al;->fen:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/al;->fep:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aBz:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/al;->feo:Landroid/widget/ProgressBar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/al;->setCanceledOnTouchOutside(Z)V

    .line 29
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/plugin/wallet/ui/al;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    sget v0, Lcom/tencent/mm/o;->bIN:I

    .line 78
    new-instance v1, Lcom/tencent/mm/plugin/wallet/ui/al;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/al;-><init>(Landroid/content/Context;I)V

    .line 79
    invoke-virtual {v1, p1}, Lcom/tencent/mm/plugin/wallet/ui/al;->setMessage(Ljava/lang/CharSequence;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/wallet/ui/al;->setCancelable(Z)V

    .line 81
    invoke-virtual {v1, p2}, Lcom/tencent/mm/plugin/wallet/ui/al;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/wallet/ui/al;->setCanceledOnTouchOutside(Z)V

    .line 86
    return-object v1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/plugin/wallet/ui/al;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-static {p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/ui/al;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/plugin/wallet/ui/al;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/al;->show()V

    .line 92
    return-object v0
.end method


# virtual methods
.method public final dismiss()V
    .locals 4

    .prologue
    .line 98
    :try_start_0
    invoke-super {p0}, Lcom/tencent/mm/ui/base/ct;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string v1, "MicroMsg.WalletProgressDialog"

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
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 33
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/ct;->onCreate(Landroid/os/Bundle;)V

    .line 34
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/al;->fep:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/al;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/al;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 41
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 42
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 43
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/ui/al;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 44
    const v1, 0x3f266666

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 45
    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/ui/al;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 47
    return-void
.end method

.method public final setCancelable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/ct;->setCancelable(Z)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/wallet/ui/al;->setCanceledOnTouchOutside(Z)V

    .line 68
    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/al;->fen:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method
