.class public Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private fhg:Ljava/util/List;

.field private hfZ:Lcom/tencent/mm/ui/setting/ec;

.field private hfk:Z

.field private hga:Landroid/widget/GridView;

.field private hgb:Lcom/tencent/mm/ab/i;

.field private hgc:Lcom/tencent/mm/sdk/platformtools/ay;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->fhg:Ljava/util/List;

    .line 61
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v1, Lcom/tencent/mm/ui/setting/dy;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/dy;-><init>(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hgc:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 333
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;Lcom/tencent/mm/ab/i;)Lcom/tencent/mm/ab/i;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hgb:Lcom/tencent/mm/ab/i;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)V
    .locals 3
    .parameter

    .prologue
    .line 48
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v2, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    new-instance v1, Lcom/tencent/mm/ui/setting/ec;

    add-int/lit8 v0, v0, -0x3c

    div-int/lit8 v0, v0, 0x3

    invoke-direct {v1, p0, p0, v0}, Lcom/tencent/mm/ui/setting/ec;-><init>(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hfZ:Lcom/tencent/mm/ui/setting/ec;

    const v0, 0x7f0a0756

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hga:Landroid/widget/GridView;

    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hfZ:Lcom/tencent/mm/ui/setting/ec;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ab/l;->e(Lcom/tencent/mm/sdk/e/al;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hga:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hfZ:Lcom/tencent/mm/ui/setting/ec;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hga:Landroid/widget/GridView;

    new-instance v1, Lcom/tencent/mm/ui/setting/ea;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/ea;-><init>(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x10504

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hfk:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x3017

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ab/l;->dP(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mm/ab/r;->BN()Lcom/tencent/mm/ab/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ab/b;->gc(Ljava/lang/String;)Lcom/tencent/mm/ab/a;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/tencent/mm/ab/a;

    invoke-direct {v1}, Lcom/tencent/mm/ab/a;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ab/a;->setUsername(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/tencent/mm/ab/a;->dN(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ab/b;->a(Lcom/tencent/mm/ab/a;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/tencent/mm/ab/a;->dN(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ab/b;->b(Lcom/tencent/mm/ab/a;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->aF(Ljava/util/List;)V

    return-void
.end method

.method private aF(Ljava/util/List;)V
    .locals 2
    .parameter

    .prologue
    .line 325
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ab/i;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hgb:Lcom/tencent/mm/ab/i;

    .line 327
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hgb:Lcom/tencent/mm/ab/i;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hgb:Lcom/tencent/mm/ab/i;

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Lcom/tencent/mm/ui/setting/ec;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hfZ:Lcom/tencent/mm/ui/setting/ec;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hfk:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Lcom/tencent/mm/ab/i;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hgb:Lcom/tencent/mm/ab/i;

    return-object v0
.end method

.method static synthetic d(ILjava/util/List;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ab/i;

    invoke-virtual {v0}, Lcom/tencent/mm/ab/i;->BG()I

    move-result v2

    if-ne v2, p0, :cond_0

    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/ab/i;->BG()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/ab/l;->L(II)V

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->fhg:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->username:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 3

    .prologue
    .line 112
    const v0, 0x7f0703ca

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->mn(I)V

    .line 114
    new-instance v0, Lcom/tencent/mm/ui/setting/dz;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/dz;-><init>(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isApplyToAll"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hfk:Z

    .line 124
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->username:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hgc:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 128
    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xa0

    .line 132
    instance-of v0, p4, Lcom/tencent/mm/n/ab;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/n/ab;

    invoke-interface {v0}, Lcom/tencent/mm/n/ab;->wQ()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 133
    :cond_0
    const-string v0, "MicroMsg.SettingsSelectBgUI"

    const-string v1, "another scene"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    .line 138
    const/16 v1, 0x9f

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_1

    .line 142
    :cond_3
    if-ne v0, v2, :cond_4

    .line 143
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->fhg:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->aF(Ljava/util/List;)V

    .line 146
    :cond_4
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    goto :goto_0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f03028c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->FR()V

    .line 83
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x9f

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 84
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 86
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lcom/tencent/mm/ab/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ab/j;-><init>(I)V

    .line 88
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 90
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 94
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hgb:Lcom/tencent/mm/ab/i;

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hgb:Lcom/tencent/mm/ab/i;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 98
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hgb:Lcom/tencent/mm/ab/i;

    invoke-virtual {v1}, Lcom/tencent/mm/ab/i;->BG()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/tencent/mm/ab/l;->L(II)V

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->fhg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ab/i;

    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/ab/i;->BG()I

    move-result v0

    invoke-virtual {v3, v0, v4}, Lcom/tencent/mm/ab/l;->L(II)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 103
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x9f

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 104
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 105
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hfZ:Lcom/tencent/mm/ui/setting/ec;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/ec;->closeCursor()V

    .line 107
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;->hfZ:Lcom/tencent/mm/ui/setting/ec;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ab/l;->f(Lcom/tencent/mm/sdk/e/al;)V

    .line 108
    return-void
.end method
