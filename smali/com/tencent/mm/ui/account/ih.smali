.class final Lcom/tencent/mm/ui/account/ih;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field final synthetic gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/tencent/mm/ui/account/ih;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ih;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->d(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;)V

    .line 211
    return-void
.end method

.method public final onTick(J)V
    .locals 4
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ih;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->e(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 215
    iget-object v1, p0, Lcom/tencent/mm/ui/account/ih;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->f(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 216
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/tencent/mm/ui/account/ih;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->g(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;)Lcom/tencent/mm/ui/account/il;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/account/ih;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    iget-object v2, v2, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->gtl:[Ljava/lang/String;

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/tencent/mm/ui/account/ih;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    iget-object v3, v3, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->gtl:[Ljava/lang/String;

    array-length v3, v3

    rem-int/2addr v0, v3

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/account/il;->eQ(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ih;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->h(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/account/ii;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/ii;-><init>(Lcom/tencent/mm/ui/account/ih;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 229
    :cond_0
    return-void
.end method
