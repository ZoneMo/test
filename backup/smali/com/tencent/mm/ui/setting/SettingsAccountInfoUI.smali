.class public Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;
.super Lcom/tencent/mm/ui/base/preference/MMPreference;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;
.implements Lcom/tencent/mm/sdk/e/ar;


# instance fields
.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private cIr:Landroid/app/ProgressDialog;

.field private dUs:Landroid/view/View;

.field private dUu:Landroid/widget/TextView;

.field private dUv:Landroid/widget/EditText;

.field private gJF:Lcom/tencent/mm/ui/base/x;

.field private final heI:Ljava/lang/String;

.field private final heJ:Ljava/lang/String;

.field private final heK:Ljava/lang/String;

.field private final heL:Ljava/lang/String;

.field private heM:Ljava/lang/String;

.field private heN:Z

.field private final heO:I

.field private final heP:I

.field private final heQ:I

.field private heR:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;-><init>()V

    .line 66
    const-string v0, "com.tencent.qqpimsecure"

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heI:Ljava/lang/String;

    .line 67
    const-string v0, "http://weixin.qq.com/cgi-bin/readtemplate?&t=w_safe"

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heJ:Ljava/lang/String;

    .line 68
    const-string v0, "http://weixin.qq.com/cgi-bin/readtemplate?&t=w_safe&qqpimsecurestatus=1"

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heK:Ljava/lang/String;

    .line 69
    const-string v0, "http://weixin.qq.com/cgi-bin/readtemplate?&t=w_safe&qqpimsecurestatus=0"

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heL:Ljava/lang/String;

    .line 386
    iput v1, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heO:I

    .line 387
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heP:I

    .line 388
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heQ:I

    .line 389
    iput v1, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heR:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIr:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->dUv:Landroid/widget/EditText;

    return-object v0
.end method

.method private aMd()V
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_username"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    .line 343
    invoke-static {}, Lcom/tencent/mm/model/v;->ti()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-static {v1}, Lcom/tencent/mm/storage/i;->tD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    const v1, 0x7f070387

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 358
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private aMp()V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_email_addr"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v2

    .line 298
    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 301
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 303
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 304
    const v0, 0x7f0702ed

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(I)V

    .line 310
    :goto_0
    return-void

    .line 305
    :cond_0
    if-eqz v0, :cond_1

    .line 306
    const v0, 0x7f0702ec

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 308
    :cond_1
    const v0, 0x7f070396

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private aMq()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 361
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_safe_device"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/IconSwitchKeyValuePreference;

    .line 362
    if-nez v0, :cond_0

    .line 363
    const-string v0, "MicroMsg.SettingsAccountInfoUI"

    const-string v1, "safedevicesate preference is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :goto_0
    return-void

    .line 367
    :cond_0
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

    .line 368
    if-nez v1, :cond_1

    .line 369
    const-string v0, "MicroMsg.SettingsAccountInfoUI"

    const-string v1, "not bind uin"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_safe_device"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto :goto_0

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v2, "settings_safe_device"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 375
    invoke-static {}, Lcom/tencent/mm/model/v;->to()Z

    move-result v1

    .line 377
    if-eqz v1, :cond_2

    .line 378
    const v1, 0x7f0707e3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/IconSwitchKeyValuePreference;->setSummary(I)V

    .line 379
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/preference/IconSwitchKeyValuePreference;->ns(I)V

    goto :goto_0

    .line 381
    :cond_2
    const v1, 0x7f0707e4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/IconSwitchKeyValuePreference;->setSummary(I)V

    .line 382
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/IconSwitchKeyValuePreference;->ns(I)V

    goto :goto_0
.end method

.method private aMr()V
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_facebook"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v1

    .line 432
    if-nez v1, :cond_0

    .line 433
    const-string v0, "MicroMsg.SettingsAccountInfoUI"

    const-string v1, "updateFacebook Preference null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :goto_0
    return-void

    .line 437
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/v;->tC()Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    goto :goto_0

    .line 439
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/v;->tE()Z

    move-result v0

    if-nez v0, :cond_2

    .line 440
    const v0, 0x7f0702e8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 442
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v2, 0x10122

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private aMs()V
    .locals 5

    .prologue
    .line 447
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_mobile"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v1

    .line 448
    if-nez v1, :cond_0

    .line 449
    const-string v0, "MicroMsg.SettingsAccountInfoUI"

    const-string v1, "updateMobile Preference null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 453
    const-string v2, "MicroMsg.SettingsAccountInfoUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mobile :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 456
    :cond_1
    const v0, 0x7f0702e8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 458
    :cond_2
    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private aMt()V
    .locals 4

    .prologue
    .line 463
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_uin"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v1

    .line 464
    if-nez v1, :cond_0

    .line 465
    const-string v0, "MicroMsg.SettingsAccountInfoUI"

    const-string v1, "updateUin Preference null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 470
    if-nez v0, :cond_2

    .line 471
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->Bj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_uin"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto :goto_0

    .line 474
    :cond_1
    const v0, 0x7f0702e8

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 477
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/tencent/mm/a/j;

    invoke-direct {v3, v0}, Lcom/tencent/mm/a/j;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private aMu()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_room_right"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 521
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;)Lcom/tencent/mm/ui/base/x;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->gJF:Lcom/tencent/mm/ui/base/x;

    return-object v0
.end method

.method private eh(Z)V
    .locals 4
    .parameter

    .prologue
    .line 544
    const-string v0, "MicroMsg.SettingsAccountInfoUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlePassword "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    if-eqz p1, :cond_1

    .line 546
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->gJF:Lcom/tencent/mm/ui/base/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->gJF:Lcom/tencent/mm/ui/base/x;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    .line 550
    :goto_0
    return-void

    .line 546
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->dUs:Landroid/view/View;

    new-instance v2, Lcom/tencent/mm/ui/setting/bi;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/setting/bi;-><init>(Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;)V

    new-instance v3, Lcom/tencent/mm/ui/setting/bl;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/setting/bl;-><init>(Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->gJF:Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 548
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected final FR()V
    .locals 2

    .prologue
    .line 109
    const v0, 0x7f07027b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->mn(I)V

    .line 110
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 111
    const v0, 0x7f030280

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->dUs:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->dUs:Landroid/view/View;

    const v1, 0x7f0a0743

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->dUu:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->dUu:Landroid/widget/TextView;

    const v1, 0x7f070386

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->dUs:Landroid/view/View;

    const v1, 0x7f0a0744

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->dUv:Landroid/widget/EditText;

    .line 115
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->dUv:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 116
    const v0, 0x7f070bcd

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heM:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/tencent/mm/ui/setting/bg;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/bg;-><init>(Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 131
    return-void
.end method

.method public final Gb()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public final Gc()I
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f05003e

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 601
    const-string v0, "MicroMsg.SettingsAccountInfoUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSceneEnd "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIr:Landroid/app/ProgressDialog;

    .line 607
    :cond_0
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_3

    .line 608
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 609
    invoke-direct {p0, v3}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->eh(Z)V

    .line 636
    :cond_1
    :goto_0
    return-void

    .line 611
    :cond_2
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/mm/ui/cx;->a(Landroid/content/Context;III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->eh(Z)V

    goto :goto_0

    .line 617
    :cond_3
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x180

    if-ne v0, v1, :cond_1

    .line 618
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    .line 620
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x13006

    check-cast p4, Lcom/tencent/mm/modelsimple/aq;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/aq;->zC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 621
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/setting/SettingsModifyPasswordUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 623
    :cond_4
    iput-boolean v3, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heN:Z

    .line 624
    const v0, 0x7f070395

    const v1, 0x7f0709bb

    new-instance v2, Lcom/tencent/mm/ui/setting/bm;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/setting/bm;-><init>(Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;)V

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0
.end method

.method public final a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 319
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aMd()V

    .line 320
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aMp()V

    .line 321
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aMs()V

    .line 322
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aMt()V

    .line 323
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aMr()V

    .line 324
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aMq()V

    .line 325
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aMu()V

    .line 329
    invoke-static {p3, v5}, Lcom/tencent/mm/sdk/platformtools/cj;->h(Ljava/lang/Object;I)I

    move-result v0

    .line 330
    const-string v1, "MicroMsg.SettingsAccountInfoUI"

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

    .line 331
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    if-ne p2, v1, :cond_0

    if-gtz v0, :cond_2

    .line 332
    :cond_0
    const-string v1, "MicroMsg.SettingsAccountInfoUI"

    const-string v2, "onNotifyChange error obj:%d stg:%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    aput-object p2, v3, v6

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    const v1, 0x21007

    if-eq v0, v1, :cond_3

    const v1, 0x21008

    if-ne v0, v1, :cond_1

    .line 338
    :cond_3
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aMu()V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/ui/base/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 185
    invoke-virtual {p2}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v1, "MicroMsg.SettingsAccountInfoUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " item has been clicked!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 281
    :goto_0
    return v0

    .line 192
    :cond_0
    const-string v1, "settings_username"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/v;->ti()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    const-class v0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->e(Ljava/lang/Class;)V

    :cond_1
    :goto_1
    move v0, v2

    .line 281
    goto :goto_0

    .line 195
    :cond_2
    const-string v1, "settings_facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    const-class v0, Lcom/tencent/mm/ui/account/FacebookAuthUI;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->e(Ljava/lang/Class;)V

    goto :goto_1

    .line 198
    :cond_3
    const-string v1, "settings_email_addr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/setting/SettingsModifyEmailAddrUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 200
    goto :goto_0

    .line 202
    :cond_4
    const-string v1, "settings_mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/MMWizardActivity;->j(Landroid/content/Context;Landroid/content/Intent;)V

    move v0, v3

    .line 205
    goto :goto_0

    .line 207
    :cond_5
    const-string v1, "settings_uin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/bindqq/BindQQUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/MMWizardActivity;->j(Landroid/content/Context;Landroid/content/Intent;)V

    move v0, v3

    .line 210
    goto :goto_0

    .line 212
    :cond_6
    const-string v1, "settings_about_vuser_about"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 213
    const-string v0, "http://weixin.qq.com/cgi-bin/readtemplate?check=false&t=weixin_faq_verifyaccount&platform=android&lang=%s"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/cj;->w(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    .line 216
    :cond_7
    const-string v1, "settings_independent_password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 217
    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heN:Z

    if-eqz v0, :cond_8

    .line 218
    invoke-direct {p0, v3}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->eh(Z)V

    goto :goto_1

    .line 220
    :cond_8
    new-instance v0, Lcom/tencent/mm/modelsimple/ac;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelsimple/ac;-><init>(I)V

    .line 221
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 222
    const v1, 0x7f0709bb

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->getString(I)Ljava/lang/String;

    const v1, 0x7f070391

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/tencent/mm/ui/setting/bh;

    invoke-direct {v4, p0, v0}, Lcom/tencent/mm/ui/setting/bh;-><init>(Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;Lcom/tencent/mm/modelsimple/ac;)V

    invoke-static {p0, v1, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIr:Landroid/app/ProgressDialog;

    goto/16 :goto_1

    .line 230
    :cond_9
    const-string v1, "settings_safe_device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 231
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v1, 0x6

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v4, 0x1001

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 233
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 236
    const-string v0, "safedevice"

    const-string v1, ".ui.MySafeDeviceListUI"

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ak/a;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 237
    :cond_a
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 238
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    const-string v1, "is_bind_for_safe_device"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    invoke-static {p0, v0}, Lcom/tencent/mm/ui/MMWizardActivity;->j(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 243
    :cond_b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    const-string v1, "safedevice"

    const-string v3, ".ui.BindSafeDeviceUI"

    invoke-static {p0, v1, v3, v0}, Lcom/tencent/mm/ak/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 248
    :cond_c
    const-string v1, "settings_room_right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/RoomRightUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 251
    goto/16 :goto_0

    .line 253
    :cond_d
    const-string v1, "settings_delete_account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/setting/SettingDeleteAccountAgreementUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 256
    :cond_e
    const-string v1, "settings_phone_security"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 257
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 258
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v4, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 259
    iget v1, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heR:I

    if-nez v1, :cond_10

    .line 260
    const-string v1, "rawUrl"

    const-string v4, "http://weixin.qq.com/cgi-bin/readtemplate?&t=w_safe"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    :cond_f
    :goto_2
    sget-object v1, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v4, 0x2abb

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 267
    const-string v1, "show_bottom"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    const-string v1, "showShare"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 261
    :cond_10
    iget v1, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heR:I

    if-ne v1, v3, :cond_11

    .line 262
    const-string v1, "rawUrl"

    const-string v4, "http://weixin.qq.com/cgi-bin/readtemplate?&t=w_safe&qqpimsecurestatus=0"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 263
    :cond_11
    iget v1, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heR:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_f

    .line 264
    const-string v1, "rawUrl"

    const-string v4, "http://weixin.qq.com/cgi-bin/readtemplate?&t=w_safe&qqpimsecurestatus=1"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 270
    :cond_12
    const-string v1, "settings_security_center"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heM:Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "rawUrl"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "showShare"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "show_bottom"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "needRedirect"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "neverGetA8Key"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "hardcode_jspermission"

    sget-object v3, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxC:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "hardcode_general_ctrl"

    sget-object v3, Lcom/tencent/mm/protocal/GeneralControlWrapper;->fxz:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "webview"

    const-string v3, "com.tencent.mm.ui.tools.WebViewUI"

    invoke-static {v0, v1, v3, v4}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->FR()V

    .line 97
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onPause()V

    .line 102
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/e;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 103
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 104
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x180

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 105
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 136
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/e;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 137
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 138
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x180

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 140
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aMd()V

    .line 141
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aMs()V

    .line 142
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aMt()V

    .line 143
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aMp()V

    .line 144
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aMr()V

    .line 145
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aMq()V

    .line 146
    iput-boolean v7, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heN:Z

    .line 147
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aMu()V

    .line 149
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_phone_security"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/IconSwitchKeyValuePreference;

    if-nez v0, :cond_2

    const-string v0, "MicroMsg.SettingsAccountInfoUI"

    const-string v1, "phone_security preference is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_about_vusertitle"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/PluginTextPreference;

    .line 152
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v2, "settings_about_vuserinfo"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/setting/SelfVuserPreference;

    .line 153
    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "settings_about_vuser_about"

    invoke-interface {v2, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v3

    .line 155
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    const v4, 0x10201

    invoke-virtual {v2, v4}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Integer;)I

    move-result v2

    .line 156
    if-eqz v2, :cond_7

    .line 157
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/PluginTextPreference;->aIp()V

    .line 158
    const v3, 0x7f07046e

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/PluginTextPreference;->nt(I)V

    .line 160
    invoke-static {}, Lcom/tencent/mm/model/ar;->ub()Lcom/tencent/mm/model/av;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/tencent/mm/model/av;->cp(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/b;->e(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 163
    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/setting/SelfVuserPreference;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v2, 0x10202

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/setting/SelfVuserPreference;->setText(Ljava/lang/String;)V

    .line 172
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_about_domainmail"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    .line 176
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azT()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_security_center"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    .line 178
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_security_center_tip"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wo(Ljava/lang/String;)Z

    .line 180
    :cond_1
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onResume()V

    .line 181
    return-void

    .line 149
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/e/d;->qA()Lcom/tencent/mm/e/c;

    move-result-object v1

    const-string v2, "ShowSecurityEntry"

    invoke-virtual {v1, v2}, Lcom/tencent/mm/e/c;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MicroMsg.SettingsAccountInfoUI"

    const-string v3, "cfgShowSecurityEntry %s, return"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v6, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_phone_security"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.SettingsAccountInfoUI"

    const-string v2, "exception in updatePhoneSecurityState, %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_phone_security"

    invoke-interface {v0, v1, v6}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heR:I

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "settings_phone_security"

    invoke-interface {v2, v3, v7}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/IconSwitchKeyValuePreference;->ns(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.tencent.qqpimsecure"

    invoke-static {v2, v3}, Lcom/tencent/mm/pluginsdk/model/app/u;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.tencent.qqpimsecure"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->ai(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0707fb

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/IconSwitchKeyValuePreference;->setSummary(I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heR:I

    :goto_2
    iget v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heR:I

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_5
    const v2, 0x7f0707fd

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/IconSwitchKeyValuePreference;->setSummary(I)V

    iput v6, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heR:I

    goto :goto_2

    :cond_6
    const v2, 0x7f0707fc

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/IconSwitchKeyValuePreference;->setSummary(I)V

    iput v7, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->heR:I

    goto :goto_2

    .line 167
    :cond_7
    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v2, v0}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    .line 168
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    .line 169
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->c(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    goto/16 :goto_1
.end method
