.class public abstract Lcom/tencent/mm/ui/base/preference/MMPreference;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# instance fields
.field private cXQ:Landroid/widget/ListView;

.field private chz:Landroid/content/SharedPreferences;

.field private eNN:Z

.field private gGt:Lcom/tencent/mm/ui/base/preference/x;

.field private xY:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->xY:Z

    .line 28
    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->eNN:Z

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/base/preference/MMPreference;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->eNN:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/base/preference/MMPreference;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->eNN:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/base/preference/MMPreference;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->chz:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/base/preference/MMPreference;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->xY:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/base/preference/MMPreference;)Lcom/tencent/mm/ui/base/preference/x;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->gGt:Lcom/tencent/mm/ui/base/preference/x;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/base/preference/MMPreference;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->cXQ:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected Gb()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public abstract Gc()I
.end method

.method public a(Lcom/tencent/mm/ui/base/preference/Preference;)Z
    .locals 1
    .parameter

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/ui/base/preference/Preference;)Z
.end method

.method public final aIi()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->xY:Z

    return v0
.end method

.method public final aIj()Lcom/tencent/mm/ui/base/preference/n;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->gGt:Lcom/tencent/mm/ui/base/preference/x;

    return-object v0
.end method

.method public final aIk()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->chz:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final aIl()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->cXQ:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/g;->a(Landroid/widget/ListView;)V

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public aao()I
    .locals 1

    .prologue
    .line 277
    const/4 v0, -0x1

    return v0
.end method

.method public c(Landroid/content/SharedPreferences;)Lcom/tencent/mm/ui/base/preference/x;
    .locals 1
    .parameter

    .prologue
    .line 301
    new-instance v0, Lcom/tencent/mm/ui/base/preference/x;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/ui/base/preference/x;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public ch()Landroid/view/View;
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/tencent/mm/k;->aXc:I

    return v0
.end method

.method public final getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->cXQ:Landroid/widget/ListView;

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 60
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/base/preference/MMPreference;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->chz:Landroid/content/SharedPreferences;

    .line 64
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->chz:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->c(Landroid/content/SharedPreferences;)Lcom/tencent/mm/ui/base/preference/x;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->gGt:Lcom/tencent/mm/ui/base/preference/x;

    .line 65
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->cXQ:Landroid/widget/ListView;

    .line 66
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->aao()I

    move-result v0

    .line 69
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->ch()Landroid/view/View;

    move-result-object v1

    .line 70
    if-eq v0, v3, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->cXQ:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 87
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->gGt:Lcom/tencent/mm/ui/base/preference/x;

    new-instance v1, Lcom/tencent/mm/ui/base/preference/s;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/base/preference/s;-><init>(Lcom/tencent/mm/ui/base/preference/MMPreference;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/x;->b(Lcom/tencent/mm/ui/base/preference/ai;)V

    .line 139
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->Gc()I

    move-result v0

    .line 140
    if-eq v0, v3, :cond_1

    .line 141
    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->gGt:Lcom/tencent/mm/ui/base/preference/x;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/x;->addPreferencesFromResource(I)V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->cXQ:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->gGt:Lcom/tencent/mm/ui/base/preference/x;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->cXQ:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/base/preference/t;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/base/preference/t;-><init>(Lcom/tencent/mm/ui/base/preference/MMPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->cXQ:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/base/preference/w;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/base/preference/w;-><init>(Lcom/tencent/mm/ui/base/preference/MMPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 238
    return-void

    .line 73
    :cond_2
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 76
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->cXQ:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0

    .line 79
    :cond_3
    const-string v0, "MicroMsg.mmui.MMPreference"

    const-string v2, "[arthurdan.mmpreference] Notice!!! header.getLayoutParams() is null!!!\n"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->Gb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->gGt:Lcom/tencent/mm/ui/base/preference/x;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/x;->notifyDataSetChanged()V

    .line 55
    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 56
    return-void
.end method

.method public final setSelection(I)V
    .locals 1
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/MMPreference;->cXQ:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 274
    return-void
.end method
