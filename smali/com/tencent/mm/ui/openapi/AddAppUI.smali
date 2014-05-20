.class public Lcom/tencent/mm/ui/openapi/AddAppUI;
.super Lcom/tencent/mm/ui/base/preference/MMPreference;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private hcE:Lcom/tencent/mm/ui/openapi/AppPreference;

.field private hcF:Lcom/tencent/mm/ui/openapi/AppPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/openapi/AddAppUI;)Lcom/tencent/mm/ui/openapi/AppPreference;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->hcE:Lcom/tencent/mm/ui/openapi/AppPreference;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/openapi/AddAppUI;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/openapi/AppProfileUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "AppProfileUI_AppId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/openapi/AddAppUI;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/openapi/AddAppUI;)Lcom/tencent/mm/ui/openapi/AppPreference;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->hcF:Lcom/tencent/mm/ui/openapi/AppPreference;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/pluginsdk/model/app/k;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 27
    iput v2, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_status:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_modifyTime:J

    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HE()Lcom/tencent/mm/pluginsdk/model/app/o;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/tencent/mm/pluginsdk/model/app/o;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 2

    .prologue
    .line 69
    const v0, 0x7f070677

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/openapi/AddAppUI;->mn(I)V

    .line 71
    new-instance v0, Lcom/tencent/mm/ui/openapi/a;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/openapi/a;-><init>(Lcom/tencent/mm/ui/openapi/AddAppUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/openapi/AddAppUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/tencent/mm/ui/openapi/AddAppUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 82
    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    .line 83
    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const v1, 0x7f050002

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->addPreferencesFromResource(I)V

    .line 85
    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "addapp_added"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/openapi/AppPreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->hcE:Lcom/tencent/mm/ui/openapi/AppPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->hcE:Lcom/tencent/mm/ui/openapi/AppPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/openapi/AppPreference;->nR(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->hcE:Lcom/tencent/mm/ui/openapi/AppPreference;

    new-instance v1, Lcom/tencent/mm/ui/openapi/b;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/openapi/b;-><init>(Lcom/tencent/mm/ui/openapi/AddAppUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/openapi/AppPreference;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->hcE:Lcom/tencent/mm/ui/openapi/AppPreference;

    new-instance v1, Lcom/tencent/mm/ui/openapi/c;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/openapi/c;-><init>(Lcom/tencent/mm/ui/openapi/AddAppUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/openapi/AppPreference;->b(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "addapp_available"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/openapi/AppPreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->hcF:Lcom/tencent/mm/ui/openapi/AppPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->hcF:Lcom/tencent/mm/ui/openapi/AppPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/openapi/AppPreference;->nR(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->hcF:Lcom/tencent/mm/ui/openapi/AppPreference;

    new-instance v1, Lcom/tencent/mm/ui/openapi/d;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/openapi/d;-><init>(Lcom/tencent/mm/ui/openapi/AddAppUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/openapi/AppPreference;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    return-void
.end method

.method public final Gc()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f050002

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    const-string v0, "MicroMsg.AddAppUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSceneEnd, errType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string v0, "MicroMsg.AddAppUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSceneEnd, errType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/ui/base/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p2}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "addapp_recommend"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/tencent/mm/ui/openapi/AddAppUI;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/openapi/AddAppUI;->aal()Landroid/app/Activity;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/z;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    .line 139
    const v3, 0x7f07067f

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Lcom/tencent/mm/protocal/a;->fxr:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v2, v4, v0

    const/4 v1, 0x2

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azi()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/tencent/mm/ui/openapi/AddAppUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 140
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 141
    const-string v3, "rawUrl"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-class v1, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/openapi/AddAppUI;->startActivity(Landroid/content/Intent;)V

    .line 147
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onCreate(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onPause()V

    .line 59
    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->hcE:Lcom/tencent/mm/ui/openapi/AppPreference;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->hcE:Lcom/tencent/mm/ui/openapi/AppPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/openapi/AppPreference;->onPause()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->hcF:Lcom/tencent/mm/ui/openapi/AppPreference;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->hcF:Lcom/tencent/mm/ui/openapi/AppPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/openapi/AppPreference;->onPause()V

    .line 65
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onResume()V

    .line 47
    invoke-virtual {p0}, Lcom/tencent/mm/ui/openapi/AddAppUI;->FR()V

    .line 48
    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->hcE:Lcom/tencent/mm/ui/openapi/AppPreference;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->hcE:Lcom/tencent/mm/ui/openapi/AppPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/openapi/AppPreference;->onResume()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->hcF:Lcom/tencent/mm/ui/openapi/AppPreference;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/tencent/mm/ui/openapi/AddAppUI;->hcF:Lcom/tencent/mm/ui/openapi/AppPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/openapi/AppPreference;->onResume()V

    .line 54
    :cond_1
    return-void
.end method
