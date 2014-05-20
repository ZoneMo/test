.class public final Lcom/tencent/mm/ui/contact/profile/ae;
.super Lcom/tencent/mm/ui/contact/profile/bb;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/e/ar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/bx;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/contact/profile/bx;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/contact/profile/bb;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/contact/profile/by;)V

    .line 31
    new-instance v0, Lcom/tencent/mm/c/a/cv;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/cv;-><init>()V

    .line 32
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 34
    return-void
.end method

.method public static clearData()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    const-string v1, "feedsapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ap;->vb(Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    const-string v1, "feedsapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->tX(Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public final bridge synthetic Ji()Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/tencent/mm/ui/contact/profile/bb;->Ji()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/contact/profile/bb;->a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/storage/i;ZI)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/mm/ui/contact/profile/bb;->a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/storage/i;ZI)Z

    move-result v0

    return v0
.end method

.method protected final aLe()Z
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final clear()V
    .locals 0

    .prologue
    .line 107
    invoke-static {}, Lcom/tencent/mm/ui/contact/profile/ae;->clearData()V

    .line 108
    return-void
.end method

.method protected final dW(Z)V
    .locals 4
    .parameter

    .prologue
    .line 112
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ae;->context:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v0, 0x7f0702b0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v2, 0x7f0709bb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v2, Lcom/tencent/mm/ui/contact/profile/af;

    invoke-direct {v2, p1, v0}, Lcom/tencent/mm/ui/contact/profile/af;-><init>(ZLcom/tencent/mm/ui/base/ch;)V

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 113
    return-void

    .line 112
    :cond_0
    const v0, 0x7f0702b1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final iO(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 127
    const-string v1, "contact_info_plugin_view"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "sns_timeline_NeedFirstLoadint"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/ae;->context:Landroid/content/Context;

    const-string v3, "sns"

    const-string v4, ".ui.SnsTimeLineUI"

    invoke-static {v2, v3, v4, v1}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 140
    :goto_0
    return v0

    .line 132
    :cond_0
    const-string v0, "contact_info_plugin_outsize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "k_sns_tag_id"

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ae;->context:Landroid/content/Context;

    const-string v2, "sns"

    const-string v3, ".ui.SnsBlackDetailUI"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 136
    :cond_1
    const-string v0, "contact_info_plugin_black"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "k_sns_tag_id"

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ae;->context:Landroid/content/Context;

    const-string v2, "sns"

    const-string v3, ".ui.SnsTagDetailUI"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 140
    :cond_2
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/contact/profile/bb;->iO(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final bridge synthetic onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/contact/profile/bb;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
