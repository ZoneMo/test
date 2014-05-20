.class public Lcom/tencent/mm/ui/setting/SettingsNetStatUI;
.super Lcom/tencent/mm/ui/base/preference/MMPreference;
.source "SourceFile"


# instance fields
.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private period:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsNetStatUI;)V
    .locals 5
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070322

    const v2, 0x7f07031f

    new-instance v3, Lcom/tencent/mm/ui/setting/dj;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/setting/dj;-><init>(Lcom/tencent/mm/ui/setting/SettingsNetStatUI;)V

    new-instance v4, Lcom/tencent/mm/ui/setting/dk;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/setting/dk;-><init>(Lcom/tencent/mm/ui/setting/SettingsNetStatUI;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    return-void
.end method

.method private aMy()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    invoke-static {}, Lcom/tencent/mm/modelstat/r;->Dg()Lcom/tencent/mm/modelstat/j;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->period:J

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelstat/j;->en(I)Lcom/tencent/mm/modelstat/f;

    move-result-object v0

    .line 101
    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/tencent/mm/modelstat/f;

    invoke-direct {v0}, Lcom/tencent/mm/modelstat/f;-><init>()V

    .line 105
    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelstat/r;->Dg()Lcom/tencent/mm/modelstat/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/modelstat/j;->CZ()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->period:J

    .line 106
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v2, "settings_netstat_info"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v1

    .line 107
    const v2, 0x7f070bd4

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->period:J

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    const v3, 0x7f07031d

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v2, "settings_netstat_mobile"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v1

    .line 113
    const-string v2, "MicroMsg.SettingsNetStatUI"

    const-string v3, "dknetflow updateFlowStatistic mobile out:%d in:%d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/f;->CU()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/f;->CQ()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/f;->CU()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/f;->CQ()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {p0, v2, v3}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->i(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v2, "settings_netstat_wifi"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v1

    .line 118
    const-string v2, "MicroMsg.SettingsNetStatUI"

    const-string v3, "dknetflow updateFlowStatistic wifi out:%d in:%d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/f;->CV()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/f;->CR()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/f;->CV()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/f;->CR()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {p0, v2, v3}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->i(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_netstat_mobile_detail"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/setting/NetStatPreference;

    .line 124
    invoke-virtual {v0, v6}, Lcom/tencent/mm/ui/setting/NetStatPreference;->eg(Z)V

    .line 129
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_netstat_wifi_detail"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/setting/NetStatPreference;

    .line 130
    invoke-virtual {v0, v7}, Lcom/tencent/mm/ui/setting/NetStatPreference;->eg(Z)V

    .line 133
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 134
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/SettingsNetStatUI;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->aMy()V

    return-void
.end method

.method private static i(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 147
    const v0, 0x7f070323

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Lcom/tencent/mm/platformtools/au;->K(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    const v0, 0x7f070320

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->mn(I)V

    .line 52
    invoke-static {}, Lcom/tencent/mm/modelstat/r;->Dg()Lcom/tencent/mm/modelstat/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/j;->CY()V

    .line 54
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 55
    invoke-static {}, Lcom/tencent/mm/modelstat/r;->Dg()Lcom/tencent/mm/modelstat/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/j;->CZ()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->period:J

    .line 58
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_netstat_info"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    .line 59
    const v1, 0x7f070bd4

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->period:J

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    const v2, 0x7f07031d

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v0, Lcom/tencent/mm/ui/setting/dh;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/dh;-><init>(Lcom/tencent/mm/ui/setting/SettingsNetStatUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 72
    const v0, 0x7f070321

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/setting/di;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/di;-><init>(Lcom/tencent/mm/ui/setting/SettingsNetStatUI;)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->a(ILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 81
    return-void
.end method

.method protected final Gb()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public final Gc()I
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f050040

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/ui/base/preference/Preference;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->FR()V

    .line 39
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onResume()V

    .line 45
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->aMy()V

    .line 46
    return-void
.end method
