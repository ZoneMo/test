.class public Lcom/tencent/mm/ui/setting/SettingsUI;
.super Lcom/tencent/mm/ui/base/preference/MMPreference;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/e/ar;


# instance fields
.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private cyn:Lcom/tencent/mm/n/m;

.field private ffa:Landroid/app/ProgressDialog;

.field private gmb:Lcom/tencent/mm/n/m;

.field private hdT:Lcom/tencent/mm/i/c;

.field private hex:Lcom/tencent/mm/sdk/platformtools/ay;

.field private hgj:Lcom/tencent/mm/ui/setting/PersonalPreference;

.field private hgk:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;-><init>()V

    .line 85
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->hgj:Lcom/tencent/mm/ui/setting/PersonalPreference;

    .line 86
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->ffa:Landroid/app/ProgressDialog;

    .line 88
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cyn:Lcom/tencent/mm/n/m;

    .line 90
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->gmb:Lcom/tencent/mm/n/m;

    .line 92
    new-instance v0, Lcom/tencent/mm/ui/setting/eg;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/eg;-><init>(Lcom/tencent/mm/ui/setting/SettingsUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->hdT:Lcom/tencent/mm/i/c;

    .line 507
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->hgk:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->ffa:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsUI;Lcom/tencent/mm/n/m;)Lcom/tencent/mm/n/m;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->gmb:Lcom/tencent/mm/n/m;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsUI;Lcom/tencent/mm/sdk/platformtools/ay;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->hex:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsUI;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aMf()V

    return-void
.end method

.method private aMD()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_account_info"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/IconSwitchKeyValuePreference;

    .line 234
    if-nez v0, :cond_1

    .line 235
    const-string v0, "MicroMsg.SettingsUI"

    const-string v1, "safedevicesate preference is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 240
    if-eqz v1, :cond_0

    .line 244
    invoke-static {}, Lcom/tencent/mm/model/v;->to()Z

    move-result v1

    .line 246
    if-eqz v1, :cond_2

    .line 247
    const v1, 0x7f0707e3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/IconSwitchKeyValuePreference;->setSummary(I)V

    .line 248
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/IconSwitchKeyValuePreference;->ns(I)V

    goto :goto_0

    .line 250
    :cond_2
    const v1, 0x7f0707e4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/IconSwitchKeyValuePreference;->setSummary(I)V

    .line 251
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/IconSwitchKeyValuePreference;->ns(I)V

    goto :goto_0
.end method

.method private aME()V
    .locals 3

    .prologue
    .line 348
    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zp()Lcom/tencent/mm/modelfriend/aa;

    move-result-object v2

    .line 349
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_bind_mobile"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/SwitchKeyValuePreference;

    .line 350
    if-eqz v0, :cond_2

    .line 351
    sget-object v1, Lcom/tencent/mm/modelfriend/aa;->crc:Lcom/tencent/mm/modelfriend/aa;

    if-eq v2, v1, :cond_0

    sget-object v1, Lcom/tencent/mm/modelfriend/aa;->crd:Lcom/tencent/mm/modelfriend/aa;

    if-ne v2, v1, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/SwitchKeyValuePreference;->dD(Z)V

    .line 352
    sget-object v1, Lcom/tencent/mm/modelfriend/aa;->crc:Lcom/tencent/mm/modelfriend/aa;

    if-eq v2, v1, :cond_1

    sget-object v1, Lcom/tencent/mm/modelfriend/aa;->crd:Lcom/tencent/mm/modelfriend/aa;

    if-ne v2, v1, :cond_4

    :cond_1
    const v1, 0x7f0702a5

    :goto_1
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/SwitchKeyValuePreference;->setSummary(I)V

    .line 354
    :cond_2
    return-void

    .line 351
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 352
    :cond_4
    const v1, 0x7f0702a6

    goto :goto_1
.end method

.method private aMF()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 483
    invoke-static {}, Lcom/tencent/mm/booter/al;->oR()V

    .line 485
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/e;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 488
    new-instance v0, Lcom/tencent/mm/c/a/dg;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/dg;-><init>()V

    .line 489
    iget-object v1, v0, Lcom/tencent/mm/c/a/dg;->bOn:Lcom/tencent/mm/c/a/dh;

    iput v2, v1, Lcom/tencent/mm/c/a/dh;->status:I

    .line 490
    iget-object v1, v0, Lcom/tencent/mm/c/a/dg;->bOn:Lcom/tencent/mm/c/a/dh;

    iput v2, v1, Lcom/tencent/mm/c/a/dh;->bOo:I

    .line 491
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 493
    const-string v0, "show_whatsnew"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/am;->sF(Ljava/lang/String;)V

    .line 494
    const-string v0, "system_config_prefs"

    invoke-static {}, Lcom/tencent/mm/compatible/g/l;->qi()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/setting/SettingsUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 495
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings_fully_exit"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 496
    invoke-static {}, Lcom/tencent/mm/ui/LauncherUI;->aEA()Lcom/tencent/mm/ui/LauncherUI;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Lcom/tencent/mm/ui/LauncherUI;->finish()V

    .line 499
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 500
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 501
    const-string v1, "Intro_Switch"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 502
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 503
    invoke-static {p0}, Lcom/tencent/mm/modelsimple/f;->U(Landroid/content/Context;)Z

    .line 504
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->finish()V

    .line 505
    return-void
.end method

.method private aMf()V
    .locals 6

    .prologue
    const v5, 0x41003

    const/4 v4, 0x0

    .line 324
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_about_micromsg"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/IconPreference;

    .line 328
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v1

    const v2, 0x40002

    invoke-virtual {v1, v2, v5}, Lcom/tencent/mm/i/a;->x(II)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 330
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v2

    const v3, 0x40001

    invoke-virtual {v2, v3, v5}, Lcom/tencent/mm/i/a;->x(II)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 331
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 334
    :cond_0
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 335
    const v1, 0x7f0709f2

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020599

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    .line 340
    :goto_0
    return-void

    .line 337
    :cond_1
    const-string v1, ""

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    .line 338
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/SettingsUI;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->hgk:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/setting/SettingsUI;)Lcom/tencent/mm/n/m;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->gmb:Lcom/tencent/mm/n/m;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/setting/SettingsUI;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->hex:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/setting/SettingsUI;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->ffa:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/setting/SettingsUI;)V
    .locals 5
    .parameter

    .prologue
    .line 73
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x119

    new-instance v2, Lcom/tencent/mm/ui/setting/ex;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/setting/ex;-><init>(Lcom/tencent/mm/ui/setting/SettingsUI;)V

    iput-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cyn:Lcom/tencent/mm/n/m;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    new-instance v0, Lcom/tencent/mm/plugin/webwx/a/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tencent/mm/plugin/webwx/a/c;-><init>(I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    new-instance v1, Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/setting/ez;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/ui/setting/ez;-><init>(Lcom/tencent/mm/ui/setting/SettingsUI;Lcom/tencent/mm/plugin/webwx/a/c;)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->hex:Lcom/tencent/mm/sdk/platformtools/ay;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->hex:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    const v1, 0x7f0709bb

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsUI;->getString(I)Ljava/lang/String;

    const v1, 0x7f07078a

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/tencent/mm/ui/setting/fa;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/ui/setting/fa;-><init>(Lcom/tencent/mm/ui/setting/SettingsUI;Lcom/tencent/mm/plugin/webwx/a/c;)V

    invoke-static {p0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->ffa:Landroid/app/ProgressDialog;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aMF()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/setting/SettingsUI;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xff

    new-instance v2, Lcom/tencent/mm/ui/setting/eh;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/setting/eh;-><init>(Lcom/tencent/mm/ui/setting/SettingsUI;)V

    iput-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->gmb:Lcom/tencent/mm/n/m;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    new-instance v0, Lcom/tencent/mm/modelsimple/ac;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelsimple/ac;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelsimple/ac;->dS(I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    new-instance v1, Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/setting/ej;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/ui/setting/ej;-><init>(Lcom/tencent/mm/ui/setting/SettingsUI;Lcom/tencent/mm/modelsimple/ac;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->hex:Lcom/tencent/mm/sdk/platformtools/ay;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->hex:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0709bb

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/setting/SettingsUI;->getString(I)Ljava/lang/String;

    const v2, 0x7f070009

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/setting/SettingsUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/setting/ek;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/ui/setting/ek;-><init>(Lcom/tencent/mm/ui/setting/SettingsUI;Lcom/tencent/mm/modelsimple/ac;)V

    invoke-static {v1, v2, v4, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->ffa:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic h(Lcom/tencent/mm/ui/setting/SettingsUI;)Lcom/tencent/mm/n/m;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cyn:Lcom/tencent/mm/n/m;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/setting/SettingsUI;)Lcom/tencent/mm/n/m;
    .locals 1
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cyn:Lcom/tencent/mm/n/m;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/setting/SettingsUI;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aMF()V

    return-void
.end method

.method static synthetic k(Lcom/tencent/mm/ui/setting/SettingsUI;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    const-string v0, "welcome_page_show"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/am;->sF(Ljava/lang/String;)V

    const-string v0, "system_config_prefs"

    invoke-static {}, Lcom/tencent/mm/compatible/g/l;->qi()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/setting/SettingsUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings_fully_exit"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->nJ()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMAppMgr;->a(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->finish()V

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 3

    .prologue
    .line 257
    const v0, 0x7f07027a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->mn(I)V

    .line 259
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 262
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_push_software"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    .line 264
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    .line 267
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/setting/el;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/el;-><init>(Lcom/tencent/mm/ui/setting/SettingsUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 276
    new-instance v0, Lcom/tencent/mm/ui/setting/em;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/em;-><init>(Lcom/tencent/mm/ui/setting/SettingsUI;)V

    .line 283
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aME()V

    .line 284
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aMf()V

    .line 286
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_traffic_statistic"

    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 287
    return-void
.end method

.method public final Gc()I
    .locals 1

    .prologue
    .line 109
    const v0, 0x7f05003b

    return v0
.end method

.method public final a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 291
    invoke-static {p3}, Lcom/tencent/mm/platformtools/au;->U(Ljava/lang/Object;)I

    move-result v0

    .line 292
    const-string v1, "MicroMsg.SettingsUI"

    const-string v2, "onNotifyChange event:%d obj:%d stg:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object p2, v3, v5

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    if-ne p2, v1, :cond_0

    if-gtz v0, :cond_2

    .line 294
    :cond_0
    const-string v1, "MicroMsg.SettingsUI"

    const-string v2, "onNotifyChange error obj:%d stg:%s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    aput-object p2, v3, v7

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    if-ne v8, v0, :cond_3

    .line 299
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    .line 302
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    .line 305
    :cond_3
    const/4 v1, 0x6

    if-ne v1, v0, :cond_4

    .line 306
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aME()V

    goto :goto_0

    .line 307
    :cond_4
    const/16 v1, 0x40

    if-ne v1, v0, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aMD()V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/ui/base/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x41003

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 359
    invoke-virtual {p2}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 360
    const-string v3, "MicroMsg.SettingsUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " item has been clicked!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v3, "settings_account_info"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    const-class v0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->e(Ljava/lang/Class;)V

    move v0, v1

    .line 409
    :goto_0
    return v0

    .line 365
    :cond_0
    const-string v3, "settings_account"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tencent/mm/ui/setting/SettingsPersonalInfoUI;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    .line 368
    :cond_1
    const-string v3, "settings_bind_mobile"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/MMWizardActivity;->j(Landroid/content/Context;Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    .line 371
    :cond_2
    const-string v3, "settings_about_privacy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/setting/SettingsPrivacyUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    .line 374
    :cond_3
    const-string v3, "settings_about_system"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 375
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    .line 377
    :cond_4
    const-string v3, "settings_push_software"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 378
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v3, 0x3014

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "title"

    const v5, 0x7f0702d0

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/setting/SettingsUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "rawUrl"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "showShare"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-class v0, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_0

    .line 380
    :cond_5
    const-string v3, "settings_traffic_statistic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 381
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_0

    .line 383
    :cond_6
    const-string v3, "settings_about_micromsg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 384
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v2, 0x40001

    invoke-virtual {v0, v2, v6}, Lcom/tencent/mm/i/a;->y(II)V

    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v2, 0x40002

    invoke-virtual {v0, v2, v6}, Lcom/tencent/mm/i/a;->y(II)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/tencent/mm/ui/setting/en;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/setting/en;-><init>(Lcom/tencent/mm/ui/setting/SettingsUI;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    goto/16 :goto_0

    .line 386
    :cond_7
    const-string v3, "settings_logout"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 387
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v3, 0x2b2d

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f030166

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0472

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/ui/setting/eo;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/setting/eo;-><init>(Lcom/tencent/mm/ui/setting/SettingsUI;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0471

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/ui/setting/et;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/setting/et;-><init>(Lcom/tencent/mm/ui/setting/SettingsUI;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/aa;->ai(Landroid/view/View;)Lcom/tencent/mm/ui/base/aa;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->hgk:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->hgk:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v0, v1

    goto/16 :goto_0

    .line 389
    :cond_8
    const-string v3, "settings_like_facebook"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 390
    invoke-static {}, Lcom/tencent/mm/model/be;->us()Lcom/tencent/mm/storage/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c(Ljava/lang/Integer;)I

    move-result v0

    .line 391
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azi()Ljava/lang/String;

    move-result-object v3

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f07032e

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/tencent/mm/ui/setting/SettingsUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&countrycode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 393
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/setting/SettingsUI;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 394
    goto/16 :goto_0

    .line 396
    :cond_9
    const-string v3, "settings_follow_twitter"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 397
    invoke-static {}, Lcom/tencent/mm/model/be;->us()Lcom/tencent/mm/storage/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c(Ljava/lang/Integer;)I

    move-result v0

    .line 398
    const v3, 0x7f07032d

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/tencent/mm/ui/setting/SettingsUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 399
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/setting/SettingsUI;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 400
    goto/16 :goto_0

    .line 402
    :cond_a
    const-string v3, "settings_notification_preference"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 403
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_0

    .line 405
    :cond_b
    const-string v3, "settings_emoji_manager"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 406
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "emoji"

    const-string v3, ".ui.SettingsEmojiUI"

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 409
    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 140
    const-string v0, "MicroMsg.SettingsUI"

    const-string v1, "settings handle"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 144
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aMF()V

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sB()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 155
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 156
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/tencent/mm/ui/tools/CropImageNewUI;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 157
    const-string v2, "CropImageMode"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v2, "CropImage_OutputPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v1, v6}, Lcom/tencent/mm/ui/setting/SettingsUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 165
    :pswitch_2
    if-eqz p3, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sB()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 172
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 173
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/tencent/mm/ui/tools/CropImageNewUI;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 174
    const-string v2, "CropImageMode"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v2, "CropImage_OutputPath"

    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/m/m;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sB()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v1, v0, v6}, Lcom/tencent/mm/ui/tools/h;->b(Landroid/app/Activity;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 183
    :pswitch_3
    if-eqz p3, :cond_0

    .line 186
    const-string v0, "CropImage_OutputPath"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    if-nez v0, :cond_1

    .line 188
    const-string v0, "MicroMsg.SettingsUI"

    const-string v1, "crop picture failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 190
    :cond_1
    new-instance v1, Lcom/tencent/mm/pluginsdk/model/k;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/pluginsdk/model/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, v5}, Lcom/tencent/mm/pluginsdk/model/k;->jY(I)Z

    goto :goto_1

    .line 142
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->FR()V

    .line 116
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/e;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 117
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->hdT:Lcom/tencent/mm/i/c;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/i/a;->a(Lcom/tencent/mm/i/c;)V

    .line 118
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 122
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/e;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 124
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->hdT:Lcom/tencent/mm/i/c;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/i/a;->b(Lcom/tencent/mm/i/c;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cyn:Lcom/tencent/mm/n/m;

    if-eqz v0, :cond_1

    .line 128
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x119

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cyn:Lcom/tencent/mm/n/m;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->gmb:Lcom/tencent/mm/n/m;

    if-eqz v0, :cond_2

    .line 132
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xff

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->gmb:Lcom/tencent/mm/n/m;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 135
    :cond_2
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onDestroy()V

    .line 136
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onPause()V

    .line 206
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_account"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/setting/PersonalPreference;

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/setting/PersonalPreference;->xs(Ljava/lang/String;)V

    .line 217
    :cond_0
    invoke-static {}, Lcom/tencent/mm/x/b;->Bd()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_like_facebook"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    .line 220
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_follow_twitter"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    .line 224
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aMD()V

    .line 226
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aME()V

    .line 227
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsUI;->aMf()V

    .line 228
    const-string v0, "MicroMsg.SettingsUI"

    const-string v1, "on resume"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onResume()V

    .line 230
    return-void
.end method
