.class public Lcom/tencent/mm/ui/setting/SettingsLanguageUI;
.super Lcom/tencent/mm/ui/base/preference/MMPreference;
.source "SourceFile"


# static fields
.field private static final hdR:[Ljava/lang/String;


# instance fields
.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private gsZ:Ljava/lang/String;

.field private hfm:Ljava/util/List;

.field private hfn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/tencent/mm/ui/setting/e;->hdR:[Ljava/lang/String;

    sput-object v0, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->hdR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->hfn:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsLanguageUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->gsZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsLanguageUI;Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x400

    const/4 v4, 0x0

    .line 33
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/z;->sA(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    const-string v1, "language_default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "language_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "language_key"

    invoke-static {v1, p1}, Lcom/tencent/mm/sdk/platformtools/cg;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MicroMsg.LocaleUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save application lang as:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/platformtools/z;->a(Landroid/content/Context;Ljava/util/Locale;)V

    const-string v0, "system_property_key_locale"

    invoke-static {v0, p1}, Lcom/tencent/mm/sdk/platformtools/cg;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_1
    const-string v1, "MicroMsg.LocaleUtil"

    const-string v2, "saving application lang failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/model/cb;

    new-instance v2, Lcom/tencent/mm/ui/setting/bz;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/setting/bz;-><init>(Lcom/tencent/mm/ui/setting/SettingsLanguageUI;)V

    invoke-direct {v1, v2}, Lcom/tencent/mm/model/cb;-><init>(Lcom/tencent/mm/model/cd;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, -0x1c0d2c6

    const-string v2, "TAG_DEFAULT_TAB"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, -0x1c0d2c3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/e/d;->qB()Lcom/tencent/mm/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/e/a;->qk()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Intro_Need_Clear_Top "

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/SettingsLanguageUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->hfn:Z

    return v0
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f070a13

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/z;->b(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v3

    .line 200
    if-nez v3, :cond_0

    .line 202
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 205
    :cond_0
    sget-object v4, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->hdR:[Ljava/lang/String;

    array-length v5, v4

    move v1, v0

    :goto_1
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    .line 206
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 207
    aget-object v0, v2, v1

    goto :goto_0

    .line 209
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    :cond_2
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final FR()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 67
    const v1, 0x7f07033c

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->mn(I)V

    .line 69
    new-instance v1, Lcom/tencent/mm/ui/setting/bx;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/bx;-><init>(Lcom/tencent/mm/ui/setting/SettingsLanguageUI;)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 79
    const v1, 0x7f07033d

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/setting/by;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/setting/by;-><init>(Lcom/tencent/mm/ui/setting/SettingsLanguageUI;)V

    sget-object v3, Lcom/tencent/mm/ui/bt;->gnO:Lcom/tencent/mm/ui/bt;

    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->a(Ljava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;Lcom/tencent/mm/ui/bt;)V

    .line 91
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "not_auth_setting"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->hfn:Z

    .line 92
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/z;->b(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->gsZ:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->hfm:Ljava/util/List;

    :goto_0
    sget-object v2, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->hdR:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->hdR:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->hfm:Ljava/util/List;

    new-instance v4, Lcom/tencent/mm/ui/account/bb;

    aget-object v5, v1, v0

    const-string v6, ""

    iget-object v7, p0, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->gsZ:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-direct {v4, v5, v6, v2, v7}, Lcom/tencent/mm/ui/account/bb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->hfm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/account/bb;

    new-instance v2, Lcom/tencent/mm/ui/account/LanguagePreference;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/account/LanguagePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/account/LanguagePreference;->a(Lcom/tencent/mm/ui/account/bb;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0, v2}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/tencent/mm/ui/base/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 94
    return-void
.end method

.method public final Gc()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, -0x1

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/ui/base/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 169
    instance-of v0, p2, Lcom/tencent/mm/ui/account/LanguagePreference;

    if-eqz v0, :cond_2

    .line 170
    check-cast p2, Lcom/tencent/mm/ui/account/LanguagePreference;

    invoke-virtual {p2}, Lcom/tencent/mm/ui/account/LanguagePreference;->aFJ()Lcom/tencent/mm/ui/account/bb;

    move-result-object v3

    .line 172
    if-nez v3, :cond_0

    move v0, v1

    .line 188
    :goto_0
    return v0

    .line 176
    :cond_0
    invoke-virtual {v3}, Lcom/tencent/mm/ui/account/bb;->Tn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->gsZ:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->hfm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/account/bb;

    .line 178
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/account/bb;->setSelected(Z)V

    goto :goto_1

    .line 181
    :cond_1
    invoke-virtual {v3, v2}, Lcom/tencent/mm/ui/account/bb;->setSelected(Z)V

    .line 183
    invoke-interface {p1}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    move v0, v2

    .line 185
    goto :goto_0

    :cond_2
    move v0, v1

    .line 188
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 51
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->FR()V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onDestroy()V

    .line 57
    return-void
.end method
