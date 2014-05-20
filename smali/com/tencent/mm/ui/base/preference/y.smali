.class public abstract Lcom/tencent/mm/ui/base/preference/y;
.super Lcom/tencent/mm/ui/cy;
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

    .line 18
    invoke-direct {p0}, Lcom/tencent/mm/ui/cy;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/preference/y;->xY:Z

    .line 26
    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/preference/y;->eNN:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/base/preference/y;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/preference/y;->eNN:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/base/preference/y;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/tencent/mm/ui/base/preference/y;->eNN:Z

    return p1
.end method

.method public static aIn()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/base/preference/y;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/y;->chz:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/base/preference/y;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/preference/y;->xY:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/base/preference/y;)Lcom/tencent/mm/ui/base/preference/x;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/y;->gGt:Lcom/tencent/mm/ui/base/preference/x;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/base/preference/y;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/y;->cXQ:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public abstract Gc()I
.end method

.method public final aIj()Lcom/tencent/mm/ui/base/preference/n;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/y;->gGt:Lcom/tencent/mm/ui/base/preference/x;

    return-object v0
.end method

.method public final aIo()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/y;->cXQ:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/y;->gGt:Lcom/tencent/mm/ui/base/preference/x;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 273
    return-void
.end method

.method public final arP()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/y;->cXQ:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    return-void
.end method

.method public abstract f(Lcom/tencent/mm/ui/base/preference/Preference;)Z
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/tencent/mm/k;->aWW:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/cy;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/preference/y;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/preference/y;->vR(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/preference/y;->chz:Landroid/content/SharedPreferences;

    .line 61
    new-instance v0, Lcom/tencent/mm/ui/base/preference/x;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/preference/y;->aal()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/base/preference/y;->chz:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/x;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/preference/y;->gGt:Lcom/tencent/mm/ui/base/preference/x;

    .line 62
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/preference/y;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/preference/y;->cXQ:Landroid/widget/ListView;

    .line 64
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/y;->gGt:Lcom/tencent/mm/ui/base/preference/x;

    new-instance v1, Lcom/tencent/mm/ui/base/preference/z;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/base/preference/z;-><init>(Lcom/tencent/mm/ui/base/preference/y;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/x;->b(Lcom/tencent/mm/ui/base/preference/ai;)V

    .line 124
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/preference/y;->Gc()I

    move-result v0

    .line 125
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/y;->gGt:Lcom/tencent/mm/ui/base/preference/x;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/x;->addPreferencesFromResource(I)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/y;->cXQ:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/y;->gGt:Lcom/tencent/mm/ui/base/preference/x;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/y;->cXQ:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/base/preference/aa;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/base/preference/aa;-><init>(Lcom/tencent/mm/ui/base/preference/y;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/y;->cXQ:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/base/preference/ad;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/base/preference/ad;-><init>(Lcom/tencent/mm/ui/base/preference/y;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 219
    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/cy;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/tencent/mm/ui/cy;->onResume()V

    .line 49
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/y;->gGt:Lcom/tencent/mm/ui/base/preference/x;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/x;->notifyDataSetChanged()V

    .line 53
    return-void
.end method
