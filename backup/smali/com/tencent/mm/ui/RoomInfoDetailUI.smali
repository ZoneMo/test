.class public Lcom/tencent/mm/ui/RoomInfoDetailUI;
.super Lcom/tencent/mm/ui/base/preference/MMPreference;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/e/al;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bOk:Z

.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private cQI:Lcom/tencent/mm/storage/i;

.field private cQb:Z

.field private cWy:Ljava/lang/String;

.field private goF:Ljava/lang/String;

.field private goG:I

.field private goH:Lcom/tencent/mm/ui/setting/SignaturePreference;

.field private goI:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

.field private goJ:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

.field private goK:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

.field private goL:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;-><init>()V

    .line 236
    iput-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQb:Z

    .line 288
    iput-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goL:Z

    return-void
.end method

.method private Jc()V
    .locals 2

    .prologue
    .line 513
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/mm/ui/dt;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/dt;-><init>(Lcom/tencent/mm/ui/RoomInfoDetailUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 521
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/RoomInfoDetailUI;)Lcom/tencent/mm/storage/i;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQI:Lcom/tencent/mm/storage/i;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/RoomInfoDetailUI;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQb:Z

    return p1
.end method

.method private aFu()Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/c;->ts(Ljava/lang/String;)Lcom/tencent/mm/storage/b;

    move-result-object v0

    .line 404
    if-nez v0, :cond_0

    .line 405
    const-string v0, ""

    .line 408
    :goto_0
    return-object v0

    .line 407
    :cond_0
    iget-object v0, v0, Lcom/tencent/mm/storage/b;->field_selfDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method private aFv()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQI:Lcom/tencent/mm/storage/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goH:Lcom/tencent/mm/ui/setting/SignaturePreference;

    if-eqz v0, :cond_2

    .line 413
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->aFu()Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/v;->tj()Ljava/lang/String;

    move-result-object v0

    .line 415
    :cond_0
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 416
    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goH:Lcom/tencent/mm/ui/setting/SignaturePreference;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    const v0, 0x7f070a3d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v2, -0x2

    invoke-static {p0, v0, v2}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/setting/SignaturePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 421
    :cond_2
    :goto_0
    return-void

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goH:Lcom/tencent/mm/ui/setting/SignaturePreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/setting/SignaturePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private aFw()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 440
    iget-boolean v2, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->bOk:Z

    if-nez v2, :cond_0

    .line 463
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goF:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 446
    iget v3, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goG:I

    if-nez v3, :cond_3

    .line 447
    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->mG(I)V

    .line 448
    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goI:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 449
    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goI:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setChecked(Z)V

    .line 450
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "room_msg_notify"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 452
    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goK:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 453
    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goK:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->rg()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setChecked(Z)V

    .line 462
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "room_show_msg_count"

    iget v4, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goG:I

    if-ne v4, v0, :cond_4

    :goto_2
    invoke-interface {v2, v3, v0}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto :goto_0

    .line 455
    :cond_3
    iget v3, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goG:I

    if-ne v3, v0, :cond_2

    .line 456
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->mG(I)V

    .line 457
    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goI:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 458
    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goI:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setChecked(Z)V

    .line 459
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "room_msg_notify"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_4
    move v0, v1

    .line 462
    goto :goto_2
.end method

.method static synthetic b(Lcom/tencent/mm/ui/RoomInfoDetailUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQb:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/RoomInfoDetailUI;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->Jc()V

    return-void
.end method

.method private rg()Z
    .locals 2

    .prologue
    .line 360
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/c;->ts(Ljava/lang/String;)Lcom/tencent/mm/storage/b;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/tencent/mm/storage/b;->aAi()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final FR()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 88
    const v0, 0x7f070930

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->mn(I)V

    .line 89
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goF:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Is_Chatroom"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->bOk:Z

    .line 92
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RoomInfo_Id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Single_Chat_Talker"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    .line 97
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQI:Lcom/tencent/mm/storage/i;

    .line 99
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->bOk:Z

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->ry()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goG:I

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "room_name"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/setting/SignaturePreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goH:Lcom/tencent/mm/ui/setting/SignaturePreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "room_msg_notify"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goI:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "room_show_msg_count"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goK:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "room_msg_show_username"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goJ:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goK:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->aIs()V

    .line 110
    :goto_0
    new-instance v0, Lcom/tencent/mm/ui/dp;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/dp;-><init>(Lcom/tencent/mm/ui/RoomInfoDetailUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 118
    return-void

    .line 104
    :cond_1
    iput v2, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goG:I

    goto :goto_0
.end method

.method public final Gc()I
    .locals 1

    .prologue
    .line 175
    const v0, 0x7f050032

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/ui/base/preference/Preference;)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 180
    invoke-virtual {p2}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 181
    const-string v0, "MicroMsg.RoomInfoDetailUI"

    const-string v5, "click key : %s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-static {v0, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    const-string v0, "room_name"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;

    invoke-virtual {v0, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v5, "Contact_mode_name_type"

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Contact_Nick"

    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->aFu()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "Contact_User"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "MMActivity.OverrideEnterAnimation"

    const v6, 0x7f04001e

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "MMActivity.OverrideExitAnimation"

    const v6, 0x7f04002d

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->aal()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 186
    :cond_0
    const-string v0, "room_msg_show_username"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/c;->ts(Ljava/lang/String;)Lcom/tencent/mm/storage/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/storage/b;->aAk()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Lcom/tencent/mm/storage/b;->cS(Z)Lcom/tencent/mm/storage/b;

    iput-boolean v1, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goL:Z

    .line 193
    :cond_1
    const-string v0, "room_msg_notify"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    iget v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goG:I

    if-nez v0, :cond_9

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goG:I

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v5, Lcom/tencent/mm/storage/bm;

    iget-object v6, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    iget v7, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goG:I

    invoke-direct {v5, v6, v7}, Lcom/tencent/mm/storage/bm;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQI:Lcom/tencent/mm/storage/i;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQI:Lcom/tencent/mm/storage/i;

    iget v5, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goG:I

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/i;->bT(I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0, v5, v6}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Lcom/tencent/mm/storage/i;)I

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v5, Lcom/tencent/mm/z/i;

    invoke-direct {v5, v10}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v5}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->aFw()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQI:Lcom/tencent/mm/storage/i;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 196
    :cond_2
    const-string v0, "room_set_chatting_background"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;

    invoke-virtual {v0, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v5, "isApplyToAll"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "username"

    iget-object v6, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->startActivityForResult(Landroid/content/Intent;I)V

    .line 199
    :cond_3
    const-string v0, "room_clear_chatting_history"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->bOk:Z

    if-eqz v0, :cond_a

    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v5, v1, [Ljava/lang/String;

    const v6, 0x7f07095f

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x0

    new-instance v7, Lcom/tencent/mm/ui/dq;

    invoke-direct {v7, p0}, Lcom/tencent/mm/ui/dq;-><init>(Lcom/tencent/mm/ui/RoomInfoDetailUI;)V

    invoke-static {p0, v0, v5, v6, v7}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    .line 202
    :cond_4
    const-string v0, "room_placed_to_the_top"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goF:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQI:Lcom/tencent/mm/storage/i;

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/o;->ud(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/tencent/mm/model/w;->f(Ljava/lang/String;Z)V

    :goto_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "room_placed_to_the_top"

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/mm/storage/o;->ud(Ljava/lang/String;)Z

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v5, Lcom/tencent/mm/z/i;

    invoke-direct {v5, v10}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v5}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 205
    :cond_5
    const-string v0, "room_show_msg_count"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 206
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->rg()Z

    move-result v4

    const-string v0, "MicroMsg.RoomInfoDetailUI"

    const-string v5, "old value undeliver[%B], now set show msg count[%B]"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v0, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v4, :cond_c

    move v0, v1

    :goto_4
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/c;->ts(Ljava/lang/String;)Lcom/tencent/mm/storage/b;

    move-result-object v5

    if-eqz v0, :cond_d

    invoke-virtual {v5, v2}, Lcom/tencent/mm/storage/b;->bW(I)V

    :goto_5
    const-string v6, "MicroMsg.RoomInfoDetailUI"

    const-string v7, "update show msg count[%B]"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v6, v7, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Lcom/tencent/mm/storage/c;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tencent/mm/protocal/a/ny;

    invoke-direct {v6}, Lcom/tencent/mm/protocal/a/ny;-><init>()V

    iget-object v7, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    iput-object v7, v6, Lcom/tencent/mm/protocal/a/ny;->fEJ:Ljava/lang/String;

    iput-object v5, v6, Lcom/tencent/mm/protocal/a/ny;->eBo:Ljava/lang/String;

    iput v3, v6, Lcom/tencent/mm/protocal/a/ny;->fOV:I

    if-eqz v0, :cond_e

    move v0, v3

    :goto_6
    iput v0, v6, Lcom/tencent/mm/protocal/a/ny;->fOW:I

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v3, Lcom/tencent/mm/storage/az;

    const/16 v5, 0x31

    invoke-direct {v3, v5, v6}, Lcom/tencent/mm/storage/az;-><init>(ILcom/tencent/mm/am/a;)V

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v3, Lcom/tencent/mm/z/i;

    invoke-direct {v3, v10}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goK:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goK:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    if-nez v4, :cond_f

    :goto_7
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 208
    :cond_7
    return v2

    :cond_8
    move v0, v2

    .line 187
    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 194
    goto/16 :goto_1

    .line 200
    :cond_a
    const v0, 0x7f070064

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0, v0, v5}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 203
    :cond_b
    iget-object v5, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/tencent/mm/model/w;->e(Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_c
    move v0, v2

    .line 206
    goto/16 :goto_4

    :cond_d
    invoke-virtual {v5, v3}, Lcom/tencent/mm/storage/b;->bW(I)V

    goto/16 :goto_5

    :cond_e
    move v0, v1

    goto :goto_6

    :cond_f
    move v1, v2

    goto :goto_7
.end method

.method public final ca(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 467
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onActivityResult(IILandroid/content/Intent;)V

    .line 468
    if-eq p2, v0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 473
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 474
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->setResult(I)V

    .line 475
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->finish()V

    goto :goto_0

    .line 479
    :pswitch_1
    if-eqz p3, :cond_0

    .line 482
    const-string v0, "Contact_Nick"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/au;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/c;->ts(Ljava/lang/String;)Lcom/tencent/mm/storage/b;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/mm/storage/b;

    invoke-direct {v0}, Lcom/tencent/mm/storage/b;-><init>()V

    :cond_2
    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/mm/storage/b;->field_chatroomname:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/storage/b;->field_selfDisplayName:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/tencent/mm/storage/c;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    new-instance v0, Lcom/tencent/mm/protocal/a/nx;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/nx;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/mm/protocal/a/nx;->fEJ:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/protocal/a/nx;->eBo:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/nx;->fDf:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/az;

    const/16 v3, 0x30

    invoke-direct {v2, v3, v0}, Lcom/tencent/mm/storage/az;-><init>(ILcom/tencent/mm/am/a;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->Jc()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->aFv()V

    goto :goto_0

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->FR()V

    .line 74
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 299
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onPause()V

    .line 300
    iget-boolean v2, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goL:Z

    if-eqz v2, :cond_0

    .line 301
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/c;->ts(Ljava/lang/String;)Lcom/tencent/mm/storage/b;

    move-result-object v2

    .line 302
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/tencent/mm/storage/c;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    .line 303
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v3

    .line 304
    invoke-virtual {v2}, Lcom/tencent/mm/storage/b;->aAk()Z

    move-result v2

    .line 305
    new-instance v4, Lcom/tencent/mm/protocal/a/ny;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/a/ny;-><init>()V

    .line 306
    iget-object v5, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/mm/protocal/a/ny;->fEJ:Ljava/lang/String;

    .line 307
    iput-object v3, v4, Lcom/tencent/mm/protocal/a/ny;->eBo:Ljava/lang/String;

    .line 308
    iput v0, v4, Lcom/tencent/mm/protocal/a/ny;->fOV:I

    .line 309
    if-eqz v2, :cond_1

    :goto_0
    iput v0, v4, Lcom/tencent/mm/protocal/a/ny;->fOW:I

    .line 310
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/az;

    const/16 v2, 0x31

    invoke-direct {v1, v2, v4}, Lcom/tencent/mm/storage/az;-><init>(ILcom/tencent/mm/am/a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    .line 313
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 315
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 309
    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onResume()V

    .line 80
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->aFw()V

    .line 81
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->aFv()V

    .line 82
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cQI:Lcom/tencent/mm/storage/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goJ:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/c;->tt(Ljava/lang/String;)Lcom/tencent/mm/storage/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goF:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/ui/RoomInfoDetailUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/b;->aAk()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goJ:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "room_msg_show_username"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 84
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoDetailUI;->goJ:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "room_msg_show_username"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
