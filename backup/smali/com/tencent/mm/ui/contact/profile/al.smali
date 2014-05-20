.class public final Lcom/tencent/mm/ui/contact/profile/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/b/a;


# instance fields
.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private cQI:Lcom/tencent/mm/storage/i;

.field private cWL:Lcom/tencent/mm/storage/b;

.field private cWy:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private dNx:Z

.field private edN:I

.field private gVU:Z

.field private gWq:I

.field private gWr:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/al;->context:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/al;->gWr:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/profile/al;)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/al;->gWr:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/profile/al;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/al;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/contact/profile/al;)Lcom/tencent/mm/storage/b;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/al;->cWL:Lcom/tencent/mm/storage/b;

    return-object v0
.end method


# virtual methods
.method public final Ji()Z
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/al;->gWr:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/al;->gWr:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->onDetach()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/al;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "contact_info_footer_normal"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    .line 257
    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->Ji()Z

    .line 260
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/storage/i;ZI)Z
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 70
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 72
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/al;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 73
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/al;->cQI:Lcom/tencent/mm/storage/i;

    .line 74
    move/from16 v0, p3

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/al;->dNx:Z

    .line 75
    move/from16 v0, p4

    iput v0, p0, Lcom/tencent/mm/ui/contact/profile/al;->edN:I

    .line 76
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/al;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "User_Verify"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/mm/ui/contact/profile/al;->gVU:Z

    .line 77
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/al;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Kdel_from"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/ui/contact/profile/al;->gWq:I

    .line 78
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/contact/profile/al;->cWy:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/al;->cWy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/c;->tt(Ljava/lang/String;)Lcom/tencent/mm/storage/b;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/contact/profile/al;->cWL:Lcom/tencent/mm/storage/b;

    .line 80
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/al;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    new-instance v1, Lcom/tencent/mm/ui/base/preference/PreferenceSmallCategory;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/al;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/mm/ui/base/preference/PreferenceSmallCategory;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/al;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v2, v1}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/al;->gWr:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    const-string v2, "roominfo_contact_anchor"

    invoke-virtual {v1, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/al;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/al;->gWr:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    new-instance v1, Lcom/tencent/mm/ui/base/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/al;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/mm/ui/base/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/al;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v2, v1}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    new-instance v1, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/al;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0300b4

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->setLayoutResource(I)V

    const-string v2, "contact_info_footer_normal"

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->setKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/al;->cQI:Lcom/tencent/mm/storage/i;

    const-string v3, ""

    iget-boolean v4, p0, Lcom/tencent/mm/ui/contact/profile/al;->dNx:Z

    iget-boolean v5, p0, Lcom/tencent/mm/ui/contact/profile/al;->gVU:Z

    const/4 v6, 0x0

    iget v7, p0, Lcom/tencent/mm/ui/contact/profile/al;->edN:I

    iget v8, p0, Lcom/tencent/mm/ui/contact/profile/al;->gWq:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-string v13, ""

    invoke-virtual/range {v1 .. v13}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->a(Lcom/tencent/mm/storage/i;Ljava/lang/String;ZZZIIZZJLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/al;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v2, v1}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/al;->gWr:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/al;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/al;->gWr:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-virtual {v3}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->a(Lcom/tencent/mm/ui/base/preference/n;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/al;->cWy:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/r;->cg(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/al;->gWr:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->ct(Z)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->cu(Z)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/al;->gWr:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/al;->cWy:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->d(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/al;->gWr:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    new-instance v2, Lcom/tencent/mm/ui/contact/profile/am;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/contact/profile/am;-><init>(Lcom/tencent/mm/ui/contact/profile/al;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->a(Lcom/tencent/mm/pluginsdk/ui/applet/aa;)V

    .line 84
    const/4 v1, 0x1

    return v1

    .line 68
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 69
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 70
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method public final iO(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 53
    const-string v0, "MicroMsg.ContactWidgetGroupCard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleEvent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    .line 63
    :goto_0
    return v4

    .line 59
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 60
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/al;->context:Landroid/content/Context;

    const-class v3, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    const-string v2, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/al;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    return-void
.end method
