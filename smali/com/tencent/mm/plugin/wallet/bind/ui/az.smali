.class public final Lcom/tencent/mm/plugin/wallet/bind/ui/az;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 17
    new-instance v2, Lcom/tencent/mm/ui/base/ar;

    sget v0, Lcom/tencent/mm/o;->bIO:I

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/base/ar;-><init>(Landroid/content/Context;I)V

    .line 18
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 19
    sget v1, Lcom/tencent/mm/k;->aTt:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 20
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 22
    sget v1, Lcom/tencent/mm/i;->apI:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 23
    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/ar;->getWindow()Landroid/view/Window;

    .line 24
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/base/ar;->setCanceledOnTouchOutside(Z)V

    .line 26
    new-instance v3, Lcom/tencent/mm/plugin/wallet/bind/ui/ba;

    invoke-direct {v3}, Lcom/tencent/mm/plugin/wallet/bind/ui/ba;-><init>()V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/base/ar;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 32
    new-instance v3, Lcom/tencent/mm/plugin/wallet/bind/ui/bb;

    invoke-direct {v3}, Lcom/tencent/mm/plugin/wallet/bind/ui/bb;-><init>()V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/base/ar;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 39
    new-instance v3, Lcom/tencent/mm/plugin/wallet/bind/ui/bc;

    invoke-direct {v3, v2, p1}, Lcom/tencent/mm/plugin/wallet/bind/ui/bc;-><init>(Lcom/tencent/mm/ui/base/ar;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/base/ar;->setContentView(Landroid/view/View;)V

    .line 48
    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/ar;->show()V

    .line 49
    return-void
.end method
