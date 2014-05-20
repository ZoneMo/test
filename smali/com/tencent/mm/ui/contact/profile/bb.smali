.class abstract Lcom/tencent/mm/ui/contact/profile/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/b/a;
.implements Lcom/tencent/mm/sdk/e/ar;


# instance fields
.field protected cIG:Lcom/tencent/mm/ui/base/preference/n;

.field protected cQI:Lcom/tencent/mm/storage/i;

.field protected context:Landroid/content/Context;

.field protected gWI:Lcom/tencent/mm/ui/contact/profile/by;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/contact/profile/by;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/bb;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/tencent/mm/ui/contact/profile/bb;->gWI:Lcom/tencent/mm/ui/contact/profile/by;

    .line 35
    return-void
.end method

.method private Jh()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/bb;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    .line 146
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/bb;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const v1, 0x7f05000b

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->addPreferencesFromResource(I)V

    .line 148
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/profile/bb;->aLe()Z

    move-result v1

    .line 151
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/bb;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v2, "contact_info_header_helper"

    invoke-interface {v0, v2}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/profile/HelperHeaderPreference;

    .line 152
    if-eqz v0, :cond_0

    .line 153
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/bb;->cQI:Lcom/tencent/mm/storage/i;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/bb;->gWI:Lcom/tencent/mm/ui/contact/profile/by;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/ui/contact/profile/HelperHeaderPreference;->a(Lcom/tencent/mm/storage/i;Lcom/tencent/mm/ui/contact/profile/by;)V

    .line 157
    :cond_0
    if-nez v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/bb;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_plugin_view"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    .line 159
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/bb;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_plugin_outsize"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    .line 160
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/bb;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_plugin_black"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    .line 161
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/bb;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_plugin_clear_data"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    .line 162
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/bb;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_plugin_uninstall"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/bb;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_plugin_install"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public Ji()Z
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/e;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 81
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/bb;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_header_helper"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/profile/HelperHeaderPreference;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/HelperHeaderPreference;->onDetach()V

    .line 86
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    invoke-static {p3}, Lcom/tencent/mm/platformtools/au;->U(Ljava/lang/Object;)I

    move-result v0

    .line 49
    const-string v1, "MicroMsg.ContactWidgetPlugin"

    const-string v2, "onNotifyChange event:%d obj:%d stg:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p2, v3, v7

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    if-ne p2, v1, :cond_0

    if-gtz v0, :cond_2

    .line 51
    :cond_0
    const-string v1, "MicroMsg.ContactWidgetPlugin"

    const-string v2, "onNotifyChange error obj:%d stg:%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    aput-object p2, v3, v6

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 54
    :cond_2
    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 57
    :cond_3
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/bb;->Jh()V

    goto :goto_0
.end method

.method public a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/storage/i;ZI)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 62
    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 63
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 64
    if-eqz p1, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 66
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/e;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 68
    iput-object p2, p0, Lcom/tencent/mm/ui/contact/profile/bb;->cQI:Lcom/tencent/mm/storage/i;

    .line 69
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/bb;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 71
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/bb;->Jh()V

    .line 72
    return v1

    :cond_1
    move v0, v2

    .line 62
    goto :goto_0

    :cond_2
    move v0, v2

    .line 63
    goto :goto_1
.end method

.method protected abstract aLe()Z
.end method

.method protected abstract clear()V
.end method

.method protected abstract dW(Z)V
.end method

.method public iO(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 91
    const-string v1, "contact_info_plugin_clear_data"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/bb;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/bb;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, ""

    new-instance v5, Lcom/tencent/mm/ui/contact/profile/bc;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/contact/profile/bc;-><init>(Lcom/tencent/mm/ui/contact/profile/bb;)V

    invoke-static {v2, v3, v1, v4, v5}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    .line 136
    :goto_0
    return v0

    .line 110
    :cond_0
    const-string v1, "contact_info_plugin_install"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/profile/bb;->dW(Z)V

    goto :goto_0

    .line 115
    :cond_1
    const-string v0, "contact_info_plugin_uninstall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/bb;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/bb;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/bb;->context:Landroid/content/Context;

    const v3, 0x7f0702b2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/ui/contact/profile/bd;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/contact/profile/bd;-><init>(Lcom/tencent/mm/ui/contact/profile/bb;)V

    invoke-static {v1, v2, v0, v3, v4}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    .line 135
    :cond_2
    const-string v0, "MicroMsg.ContactWidgetPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleEvent : unexpected key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    return-void
.end method
