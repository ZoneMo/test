.class final Lcom/tencent/mm/ui/account/ii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gtq:Lcom/tencent/mm/ui/account/ih;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/ih;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/tencent/mm/ui/account/ii;->gtq:Lcom/tencent/mm/ui/account/ih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ii;->gtq:Lcom/tencent/mm/ui/account/ih;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/ih;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->h(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/ii;->gtq:Lcom/tencent/mm/ui/account/ih;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/ih;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->g(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;)Lcom/tencent/mm/ui/account/il;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/account/il;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ii;->gtq:Lcom/tencent/mm/ui/account/ih;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/ih;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->h(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/ii;->gtq:Lcom/tencent/mm/ui/account/ih;

    iget-object v1, v1, Lcom/tencent/mm/ui/account/ih;->gtp:Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;->g(Lcom/tencent/mm/ui/account/RegByMobileWaitingSMSUI;)Lcom/tencent/mm/ui/account/il;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/account/il;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method
