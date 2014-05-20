.class public final Lcom/tencent/mm/ui/contact/profile/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/b/a;
.implements Lcom/tencent/mm/sdk/e/ar;


# instance fields
.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private cQI:Lcom/tencent/mm/storage/i;

.field private cQJ:Z

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/be;->context:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private Jh()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/be;->cQJ:Z

    .line 132
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/be;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "contact_info_header_helper"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/preference/HelperHeaderPreference;

    .line 133
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/be;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/profile/be;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/ui/contact/profile/be;->context:Landroid/content/Context;

    const v6, 0x7f070498

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/mm/pluginsdk/ui/preference/HelperHeaderPreference;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-boolean v3, p0, Lcom/tencent/mm/ui/contact/profile/be;->cQJ:Z

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/tencent/mm/pluginsdk/ui/preference/HelperHeaderPreference;->kH(I)V

    .line 137
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/be;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v4, "contact_info_qqfriend_view"

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/be;->cQJ:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-interface {v3, v4, v0}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/be;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "contact_info_qqfriend_uninstall"

    iget-boolean v4, p0, Lcom/tencent/mm/ui/contact/profile/be;->cQJ:Z

    if-nez v4, :cond_3

    :goto_3
    invoke-interface {v0, v3, v1}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 141
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/be;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_qqfriend_install"

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/profile/be;->cQJ:Z

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 143
    return-void

    :cond_0
    move v0, v2

    .line 130
    goto :goto_0

    :cond_1
    move v3, v2

    .line 134
    goto :goto_1

    :cond_2
    move v0, v2

    .line 137
    goto :goto_2

    :cond_3
    move v1, v2

    .line 139
    goto :goto_3
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/profile/be;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/be;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 146
    if-eqz p1, :cond_0

    const v0, 0x7f0702b0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    const v1, 0x7f0709bb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    .line 150
    new-instance v1, Lcom/tencent/mm/ui/contact/profile/bh;

    invoke-direct {v1, p1}, Lcom/tencent/mm/ui/contact/profile/bh;-><init>(Z)V

    .line 165
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 166
    new-instance v3, Lcom/tencent/mm/ui/contact/profile/bi;

    invoke-direct {v3, v0, v1}, Lcom/tencent/mm/ui/contact/profile/bi;-><init>(Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    const-wide/16 v0, 0x5dc

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 175
    return-void

    .line 146
    :cond_0
    const v0, 0x7f0702b1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final Ji()Z
    .locals 3

    .prologue
    .line 183
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/e;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 185
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 186
    const/4 v0, 0x1

    return v0
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

    .line 191
    invoke-static {p3}, Lcom/tencent/mm/platformtools/au;->U(Ljava/lang/Object;)I

    move-result v0

    .line 192
    const-string v1, "MicroMsg.ContactWidgetQQFriend"

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

    .line 193
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    if-ne p2, v1, :cond_0

    if-gtz v0, :cond_2

    .line 194
    :cond_0
    const-string v1, "MicroMsg.ContactWidgetQQFriend"

    const-string v2, "onNotifyChange error obj:%d stg:%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    aput-object p2, v3, v6

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 200
    :cond_3
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/be;->Jh()V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/storage/i;ZI)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 113
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 114
    if-eqz p2, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 115
    invoke-virtual {p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cV(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 117
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/e;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 119
    iput-object p2, p0, Lcom/tencent/mm/ui/contact/profile/be;->cQI:Lcom/tencent/mm/storage/i;

    .line 120
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/be;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 122
    const v0, 0x7f050017

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/base/preference/n;->addPreferencesFromResource(I)V

    .line 124
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/be;->Jh()V

    .line 125
    return v1

    :cond_1
    move v0, v2

    .line 113
    goto :goto_0
.end method

.method public final iO(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 54
    const-string v1, "MicroMsg.ContactWidgetQQFriend"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleEvent : key = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 97
    :goto_0
    return v0

    .line 59
    :cond_0
    const-string v1, "contact_info_qqfriend_view"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    invoke-static {}, Lcom/tencent/mm/model/v;->tK()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/be;->context:Landroid/content/Context;

    const v1, 0x7f07049a

    const v2, 0x7f0709bb

    new-instance v3, Lcom/tencent/mm/ui/contact/profile/bf;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/contact/profile/bf;-><init>(Lcom/tencent/mm/ui/contact/profile/be;)V

    invoke-static {v0, v1, v2, v3, v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move v0, v7

    .line 68
    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/be;->context:Landroid/content/Context;

    const-class v2, Lcom/tencent/mm/ui/bindqq/QQGroupUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/be;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v7

    .line 72
    goto :goto_0

    .line 75
    :cond_2
    const-string v1, "contact_info_qqfriend_install"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/be;->context:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/tencent/mm/ui/contact/profile/be;->b(Landroid/content/Context;Z)V

    move v0, v7

    .line 77
    goto :goto_0

    .line 80
    :cond_3
    const-string v1, "contact_info_qqfriend_uninstall"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/be;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/be;->context:Landroid/content/Context;

    const v2, 0x7f0702b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/be;->context:Landroid/content/Context;

    const v4, 0x7f0709ca

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/profile/be;->context:Landroid/content/Context;

    const v5, 0x7f0709c1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/contact/profile/bg;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/contact/profile/bg;-><init>(Lcom/tencent/mm/ui/contact/profile/be;)V

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move v0, v7

    .line 93
    goto :goto_0

    .line 96
    :cond_4
    const-string v1, "MicroMsg.ContactWidgetQQFriend"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleEvent : unExpected key = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    return-void
.end method
