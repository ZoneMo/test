.class final Lcom/tencent/mm/ui/contact/profile/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gXw:Lcom/tencent/mm/ui/contact/profile/dm;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/dm;)V
    .locals 0
    .parameter

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/do;->gXw:Lcom/tencent/mm/ui/contact/profile/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/do;->gXw:Lcom/tencent/mm/ui/contact/profile/dm;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/dm;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/do;->gXw:Lcom/tencent/mm/ui/contact/profile/dm;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/dm;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->d(Lcom/tencent/mm/storage/i;)V

    .line 1381
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/do;->gXw:Lcom/tencent/mm/ui/contact/profile/dm;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/dm;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qL()V

    .line 1382
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 1383
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/do;->gXw:Lcom/tencent/mm/ui/contact/profile/dm;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/dm;->aLg()V

    .line 1405
    :goto_0
    return-void

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/do;->gXw:Lcom/tencent/mm/ui/contact/profile/dm;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/dm;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/do;->gXw:Lcom/tencent/mm/ui/contact/profile/dm;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/profile/dm;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07041f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/do;->gXw:Lcom/tencent/mm/ui/contact/profile/dm;

    iget-object v2, v2, Lcom/tencent/mm/ui/contact/profile/dm;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07041d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/contact/profile/dp;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/contact/profile/dp;-><init>(Lcom/tencent/mm/ui/contact/profile/do;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0
.end method
