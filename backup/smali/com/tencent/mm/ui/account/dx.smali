.class final Lcom/tencent/mm/ui/account/dx;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->a(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->d(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/account/dy;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/dy;-><init>(Lcom/tencent/mm/ui/account/dx;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->a(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 229
    iget-object v0, p0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->e(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/account/dz;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/dz;-><init>(Lcom/tencent/mm/ui/account/dx;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 245
    iget-object v0, p0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->h(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->a(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/tencent/mm/ui/account/dx;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->d(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/account/ea;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/ea;-><init>(Lcom/tencent/mm/ui/account/dx;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
