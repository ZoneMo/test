.class public Lcom/tencent/mm/ui/setting/SettingsPluginsUI;
.super Lcom/tencent/mm/ui/base/preference/MMPreference;
.source "SourceFile"


# instance fields
.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private hfN:Z

.field private hfO:Z

.field private hfP:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;-><init>()V

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f0702a1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->mn(I)V

    .line 68
    new-instance v0, Lcom/tencent/mm/ui/setting/dt;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/dt;-><init>(Lcom/tencent/mm/ui/setting/SettingsPluginsUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 77
    return-void
.end method

.method public final Gc()I
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f050045

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/ui/base/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p2}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_1

    const-string v3, "display_in_addr_book"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-interface {p1, v2}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 96
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const/16 v3, 0x23

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    move v0, v1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    instance-of v2, p2, Lcom/tencent/mm/ui/setting/PluginPreference;

    if-eqz v2, :cond_0

    .line 101
    check-cast p2, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-virtual {p2}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMk()Ljava/lang/String;

    move-result-object v2

    .line 102
    const-string v3, "meishiapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->hfN:Z

    if-eqz v3, :cond_2

    .line 103
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v3

    const v4, -0x7a00139a

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 105
    :cond_2
    const-string v3, "feedsapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->hfO:Z

    if-eqz v3, :cond_3

    .line 106
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v3

    const v4, -0x7a001399

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 108
    :cond_3
    const-string v3, "voipapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->hfP:Z

    if-eqz v3, :cond_4

    .line 109
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v3

    const v4, -0x7a001398

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "Contact_User"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 57
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->FR()V

    .line 58
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onDestroy()V

    .line 63
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onPause()V

    .line 88
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const v9, 0x7f020599

    const/16 v8, 0x8

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    new-instance v0, Lcom/tencent/mm/ui/base/preference/PreferenceSmallCategory;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/preference/PreferenceSmallCategory;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v3, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "qqmail"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "qqmail"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    move v0, v1

    :goto_0
    if-eqz v0, :cond_16

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    const-string v0, "tmessage"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/w;->tR()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "tmessage"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_17

    move v0, v1

    :goto_2
    if-eqz v0, :cond_18

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_3
    const-string v0, "qmessage"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "qmessage"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_19

    move v0, v1

    :goto_4
    if-eqz v0, :cond_1a

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_5
    const-string v0, "qqsync"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v5, "qqsync"

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->ty()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_6
    const-string v0, "bottle"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "floatbottle"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_1c

    move v0, v1

    :goto_7
    if-eqz v0, :cond_1d

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_8
    const-string v0, "nearby"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "lbsapp"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1e

    move v0, v1

    :goto_9
    if-eqz v0, :cond_1f

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_a
    const-string v0, "shake"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "shakeapp"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_20

    move v0, v1

    :goto_b
    if-eqz v0, :cond_21

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_c
    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "medianote"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_22

    move v0, v1

    :goto_d
    if-eqz v0, :cond_23

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_e
    const-string v0, "readerapp"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "newsapp"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    const/high16 v6, 0x8

    and-int/2addr v0, v6

    if-nez v0, :cond_24

    move v0, v1

    :goto_f
    if-eqz v0, :cond_25

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_10
    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "blogapp"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    const/high16 v6, 0x4

    and-int/2addr v0, v6

    if-nez v0, :cond_26

    invoke-static {}, Lcom/tencent/mm/model/w;->tQ()Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v1

    :goto_11
    if-eqz v0, :cond_27

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_12
    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "facebookapp"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_28

    move v0, v1

    :goto_13
    if-eqz v0, :cond_29

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_14
    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "qqfriend"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_2a

    move v0, v1

    :goto_15
    if-eqz v0, :cond_2b

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_16
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->Bj()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "googlecontact"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    const/high16 v6, 0x80

    and-int/2addr v0, v6

    if-nez v0, :cond_2c

    move v0, v1

    :goto_17
    if-eqz v0, :cond_2d

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_18
    const-string v0, "masssend"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "masssendapp"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    const/high16 v6, 0x1

    and-int/2addr v0, v6

    if-nez v0, :cond_2e

    move v0, v1

    :goto_19
    if-eqz v0, :cond_2f

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_1a
    const-string v0, "sns"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "feedsapp"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    const v6, 0x8000

    and-int/2addr v0, v6

    if-nez v0, :cond_30

    move v0, v1

    :goto_1b
    if-eqz v0, :cond_31

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1c
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v6, -0x7a001399

    invoke-virtual {v0, v6}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->hfO:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->hfO:Z

    if-eqz v0, :cond_32

    invoke-virtual {v5, v2}, Lcom/tencent/mm/ui/setting/PluginPreference;->np(I)V

    const v0, 0x7f0709f2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v9}, Lcom/tencent/mm/ui/setting/PluginPreference;->aq(Ljava/lang/String;I)V

    :cond_e
    :goto_1d
    const-string v0, "voip"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "voipapp"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    const/high16 v6, 0x10

    and-int/2addr v0, v6

    if-nez v0, :cond_33

    move v0, v1

    :goto_1e
    if-eqz v0, :cond_34

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1f
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v6, -0x7a001398

    invoke-virtual {v0, v6}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->hfP:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->hfP:Z

    if-eqz v0, :cond_35

    invoke-virtual {v5, v2}, Lcom/tencent/mm/ui/setting/PluginPreference;->np(I)V

    const v0, 0x7f0709f2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v9}, Lcom/tencent/mm/ui/setting/PluginPreference;->aq(Ljava/lang/String;I)V

    :cond_f
    :goto_20
    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    invoke-static {}, Lcom/tencent/mm/x/b;->Bc()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "voiceinputapp"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    const/high16 v6, 0x200

    and-int/2addr v0, v6

    if-nez v0, :cond_36

    move v0, v1

    :goto_21
    if-eqz v0, :cond_37

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_22
    const-string v0, "voip"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    invoke-static {}, Lcom/tencent/mm/e/d;->qB()Lcom/tencent/mm/e/a;

    invoke-static {}, Lcom/tencent/mm/e/a;->qn()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "voicevoipapp"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    const/high16 v6, 0x40

    and-int/2addr v0, v6

    if-nez v0, :cond_38

    move v0, v1

    :goto_23
    if-eqz v0, :cond_39

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_24
    invoke-virtual {v5, v8}, Lcom/tencent/mm/ui/setting/PluginPreference;->np(I)V

    const-string v0, ""

    invoke-virtual {v5, v0, v7}, Lcom/tencent/mm/ui/setting/PluginPreference;->aq(Ljava/lang/String;I)V

    :cond_11
    invoke-static {}, Lcom/tencent/mm/e/d;->qA()Lcom/tencent/mm/e/c;

    move-result-object v0

    const-string v5, "LinkedinPluginClose"

    invoke-virtual {v0, v5}, Lcom/tencent/mm/e/c;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    new-instance v5, Lcom/tencent/mm/ui/setting/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "linkedinplugin"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->xt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v5}, Lcom/tencent/mm/ui/setting/PluginPreference;->aMj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    const/high16 v6, 0x100

    and-int/2addr v0, v6

    if-nez v0, :cond_3a

    move v0, v1

    :goto_25
    if-eqz v0, :cond_3b

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_26
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Lcom/tencent/mm/ui/base/preference/PluginTextPreference;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/preference/PluginTextPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0206c4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/PluginTextPreference;->setImageResource(I)V

    const v1, 0x7f0702a9

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/PluginTextPreference;->nt(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    :cond_14
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/setting/PluginPreference;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/setting/PluginPreference;->nT(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v2, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    goto :goto_27

    :cond_15
    move v0, v2

    goto/16 :goto_0

    :cond_16
    invoke-static {}, Lcom/tencent/mm/x/b;->Be()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_17
    move v0, v2

    goto/16 :goto_2

    :cond_18
    invoke-static {}, Lcom/tencent/mm/x/b;->Be()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_19
    move v0, v2

    goto/16 :goto_4

    :cond_1a
    invoke-static {}, Lcom/tencent/mm/x/b;->Be()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_1b
    invoke-static {}, Lcom/tencent/mm/x/b;->Be()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_1c
    move v0, v2

    goto/16 :goto_7

    :cond_1d
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_1e
    move v0, v2

    goto/16 :goto_9

    :cond_1f
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_20
    move v0, v2

    goto/16 :goto_b

    :cond_21
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_22
    move v0, v2

    goto/16 :goto_d

    :cond_23
    invoke-static {}, Lcom/tencent/mm/x/b;->Be()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_24
    move v0, v2

    goto/16 :goto_f

    :cond_25
    invoke-static {}, Lcom/tencent/mm/x/b;->Be()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :cond_26
    move v0, v2

    goto/16 :goto_11

    :cond_27
    invoke-static {}, Lcom/tencent/mm/x/b;->Be()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    :cond_28
    move v0, v2

    goto/16 :goto_13

    :cond_29
    invoke-static {}, Lcom/tencent/mm/x/b;->Bd()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_2a
    move v0, v2

    goto/16 :goto_15

    :cond_2b
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_2c
    move v0, v2

    goto/16 :goto_17

    :cond_2d
    invoke-static {}, Lcom/tencent/mm/x/b;->Bf()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :cond_2e
    move v0, v2

    goto/16 :goto_19

    :cond_2f
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    :cond_30
    move v0, v2

    goto/16 :goto_1b

    :cond_31
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c

    :cond_32
    invoke-virtual {v5, v8}, Lcom/tencent/mm/ui/setting/PluginPreference;->np(I)V

    const-string v0, ""

    invoke-virtual {v5, v0, v7}, Lcom/tencent/mm/ui/setting/PluginPreference;->aq(Ljava/lang/String;I)V

    goto/16 :goto_1d

    :cond_33
    move v0, v2

    goto/16 :goto_1e

    :cond_34
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    :cond_35
    invoke-virtual {v5, v8}, Lcom/tencent/mm/ui/setting/PluginPreference;->np(I)V

    const-string v0, ""

    invoke-virtual {v5, v0, v7}, Lcom/tencent/mm/ui/setting/PluginPreference;->aq(Ljava/lang/String;I)V

    goto/16 :goto_20

    :cond_36
    move v0, v2

    goto/16 :goto_21

    :cond_37
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    :cond_38
    move v0, v2

    goto/16 :goto_23

    :cond_39
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    :cond_3a
    move v0, v2

    goto/16 :goto_25

    :cond_3b
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :cond_3c
    new-instance v0, Lcom/tencent/mm/ui/base/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    new-instance v0, Lcom/tencent/mm/ui/base/preference/PluginTextPreference;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/preference/PluginTextPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0206c5

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/PluginTextPreference;->setImageResource(I)V

    const v1, 0x7f0702aa

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/PluginTextPreference;->nt(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v0, Lcom/tencent/mm/ui/setting/PluginEmptyTextPreference;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/PluginEmptyTextPreference;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    :cond_3d
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/setting/PluginPreference;

    const/16 v2, 0x88

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/setting/PluginPreference;->nT(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v2, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    goto :goto_28

    :cond_3e
    new-instance v0, Lcom/tencent/mm/ui/base/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    .line 83
    return-void
.end method
