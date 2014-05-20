.class public Lcom/tencent/mm/ui/setting/SettingsNotificationUI;
.super Lcom/tencent/mm/ui/base/preference/MMPreference;
.source "SourceFile"


# instance fields
.field private cIG:Lcom/tencent/mm/ui/base/preference/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;-><init>()V

    return-void
.end method

.method private aMz()V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_notification_ringtone"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->aIk()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 119
    const-string v2, "settings.ringtone.name"

    const v3, 0x7f070305

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 122
    return-void
.end method

.method private ej(Z)Z
    .locals 3
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_sound"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v2, "settings_shake"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v1

    .line 161
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;->setEnabled(Z)V

    .line 164
    :cond_0
    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {v1, p1}, Lcom/tencent/mm/ui/base/preference/Preference;->setEnabled(Z)V

    .line 167
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected final FR()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 43
    const v0, 0x7f070301

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->mn(I)V

    .line 44
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 45
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->aIk()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 47
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    .line 48
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const v1, 0x7f050041

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->addPreferencesFromResource(I)V

    .line 52
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_new_msg_notification"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    .line 53
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setChecked(Z)V

    .line 57
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->ej(Z)Z

    .line 59
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_sound"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    .line 62
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setChecked(Z)V

    .line 65
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->aMz()V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_shake"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    .line 71
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_sns_notify"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    .line 85
    const-string v1, "sns"

    invoke-static {v1}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v1

    const v4, 0x8000

    and-int/2addr v1, v4

    if-nez v1, :cond_5

    move v1, v2

    .line 86
    :goto_2
    if-eqz v1, :cond_6

    .line 87
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setChecked(Z)V

    .line 98
    :cond_2
    :goto_3
    new-instance v0, Lcom/tencent/mm/ui/setting/dl;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/dl;-><init>(Lcom/tencent/mm/ui/setting/SettingsNotificationUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 107
    return-void

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_notification_ringtone"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    goto :goto_0

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_sound"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    .line 77
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_notification_ringtone"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    .line 78
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_shake"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_active_time"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    goto :goto_1

    .line 85
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 93
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_sns_notify"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_sns_notify_tip"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto :goto_3
.end method

.method public final Gc()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f050041

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/ui/base/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p2}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 128
    const-string v3, "settings_new_msg_notification"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->FR()V

    .line 130
    check-cast p2, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    invoke-virtual {p2}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->ej(Z)Z

    move-result v0

    .line 155
    :goto_0
    return v0

    .line 132
    :cond_0
    const-string v3, "settings_sound"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->FR()V

    goto :goto_0

    .line 136
    :cond_1
    const-string v3, "settings_shake"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->aIk()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "settings_shake"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {p0, v1}, Lcom/tencent/mm/platformtools/au;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 140
    :cond_2
    const-string v3, "settings_notification_ringtone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/tencent/mm/ui/setting/SettingsRingtoneUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    :cond_3
    const-string v3, "settings_sns_notify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 145
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->aIk()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "settings_sns_notify"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const v3, 0x10b20

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    goto :goto_0

    .line 147
    :cond_4
    const-string v3, "settings_active_time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 148
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 151
    :cond_5
    const-string v0, "settings_plugings_notify"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->startActivity(Landroid/content/Intent;)V

    :cond_6
    move v0, v1

    .line 155
    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x10b20

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 37
    const-string v1, "MicroMsg.SettingsNotificationUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sns Notify "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->FR()V

    .line 39
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onResume()V

    .line 112
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->aMz()V

    .line 113
    return-void
.end method
