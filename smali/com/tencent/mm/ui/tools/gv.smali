.class final Lcom/tencent/mm/ui/tools/gv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/ad;


# instance fields
.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 2019
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/gv;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iS(I)V
    .locals 3
    .parameter

    .prologue
    .line 2023
    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKeyBoardStateChange, state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    .line 2025
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gv;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/tools/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/gb;->aNR()Lcom/tencent/mm/protocal/GeneralControlWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/GeneralControlWrapper;->avE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gv;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->z(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gv;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->z(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2051
    :cond_0
    :goto_0
    return-void

    .line 2030
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gv;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/tencent/mm/k;->aVk:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2032
    sget v0, Lcom/tencent/mm/i;->axY:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2033
    sget v2, Lcom/tencent/mm/h;->agk:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2034
    sget v0, Lcom/tencent/mm/i;->axZ:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2035
    const/high16 v2, 0x4160

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2036
    sget v2, Lcom/tencent/mm/n;->bIb:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2037
    sget v0, Lcom/tencent/mm/i;->axX:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 2038
    new-instance v2, Lcom/tencent/mm/ui/tools/gw;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/tools/gw;-><init>(Lcom/tencent/mm/ui/tools/gv;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2048
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gv;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/gv;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/WebViewUI;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tencent/mm/ui/base/dn;->b(Landroid/app/Activity;Landroid/view/View;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;Lcom/tencent/mm/ui/base/ce;)Lcom/tencent/mm/ui/base/ce;

    goto :goto_0
.end method
