.class public final Lcom/tencent/mm/ui/dm;
.super Lcom/tencent/mm/ui/tools/fx;
.source "SourceFile"


# instance fields
.field private ge:Landroid/view/LayoutInflater;

.field private goo:I

.field private gop:I

.field private goq:I

.field private gor:I

.field private gos:I

.field private got:I

.field private gou:I

.field private gov:I

.field private gow:I

.field private gox:Lcom/tencent/mm/ui/dn;

.field private goy:Ljava/util/Map;

.field private goz:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 64
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/fx;-><init>(Landroid/content/Context;)V

    .line 47
    iput v1, p0, Lcom/tencent/mm/ui/dm;->goo:I

    .line 48
    iput v0, p0, Lcom/tencent/mm/ui/dm;->gop:I

    .line 49
    iput v0, p0, Lcom/tencent/mm/ui/dm;->goq:I

    .line 50
    iput v0, p0, Lcom/tencent/mm/ui/dm;->gor:I

    .line 51
    iput v0, p0, Lcom/tencent/mm/ui/dm;->gos:I

    .line 52
    iput v0, p0, Lcom/tencent/mm/ui/dm;->got:I

    .line 53
    iput v0, p0, Lcom/tencent/mm/ui/dm;->gou:I

    .line 54
    iput v0, p0, Lcom/tencent/mm/ui/dm;->gov:I

    .line 61
    iput-boolean v1, p0, Lcom/tencent/mm/ui/dm;->goz:Z

    .line 65
    iput-object p1, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/dm;->ge:Landroid/view/LayoutInflater;

    .line 67
    invoke-virtual {p0}, Lcom/tencent/mm/ui/dm;->aNO()V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/dm;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/tencent/mm/ui/dm;->gow:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/dm;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/tencent/mm/ui/dm;->goo:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/dm;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/ui/dm;->goy:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/dm;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/ui/dm;->ge:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/dm;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final aFt()Landroid/widget/BaseAdapter;
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/tencent/mm/ui/dm;->gox:Lcom/tencent/mm/ui/dn;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Lcom/tencent/mm/ui/dn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/dn;-><init>(Lcom/tencent/mm/ui/dm;B)V

    iput-object v0, p0, Lcom/tencent/mm/ui/dm;->gox:Lcom/tencent/mm/ui/dn;

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/dm;->gox:Lcom/tencent/mm/ui/dn;

    return-object v0
.end method

.method public final cB()Z
    .locals 10

    .prologue
    const v9, 0x41008

    const/4 v0, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 158
    iput v7, p0, Lcom/tencent/mm/ui/dm;->gop:I

    iget-object v1, p0, Lcom/tencent/mm/ui/dm;->goy:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/dm;->goy:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/ui/dm;->goy:Ljava/util/Map;

    iget-object v1, p0, Lcom/tencent/mm/ui/dm;->goy:Ljava/util/Map;

    iget v2, p0, Lcom/tencent/mm/ui/dm;->gop:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/do;

    iget-object v4, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    const v5, 0x7f070285

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const v6, 0x7f0205bd

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/tencent/mm/ui/do;-><init>(Lcom/tencent/mm/ui/dm;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, p0, Lcom/tencent/mm/ui/dm;->goq:I

    iget-object v1, p0, Lcom/tencent/mm/ui/dm;->goy:Ljava/util/Map;

    iget v2, p0, Lcom/tencent/mm/ui/dm;->goq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/do;

    iget-object v4, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    const v5, 0x7f070287

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const v6, 0x7f0205ad

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/tencent/mm/ui/do;-><init>(Lcom/tencent/mm/ui/dm;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/v;->tp()Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/tencent/mm/ui/dm;->gor:I

    iget-object v0, p0, Lcom/tencent/mm/ui/dm;->goy:Ljava/util/Map;

    iget v1, p0, Lcom/tencent/mm/ui/dm;->gor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/do;

    iget-object v3, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    const v4, 0x7f070286

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const v5, 0x7f0205ab

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/tencent/mm/ui/do;-><init>(Lcom/tencent/mm/ui/dm;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    :cond_1
    const-string v1, "MicroMsg.MainSubMenuHelper"

    const-string v2, "setting pos:%d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v0, p0, Lcom/tencent/mm/ui/dm;->gos:I

    iget-object v1, p0, Lcom/tencent/mm/ui/dm;->goy:Ljava/util/Map;

    iget v2, p0, Lcom/tencent/mm/ui/dm;->gos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/do;

    iget-object v4, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    const v5, 0x7f07027a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const v6, 0x7f0205c3

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/tencent/mm/ui/do;-><init>(Lcom/tencent/mm/ui/dm;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/dm;->got:I

    iget-object v1, p0, Lcom/tencent/mm/ui/dm;->goy:Ljava/util/Map;

    iget v2, p0, Lcom/tencent/mm/ui/dm;->got:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/do;

    iget-object v4, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    const v5, 0x7f07032f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const v6, 0x7f0205b0

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/tencent/mm/ui/do;-><init>(Lcom/tencent/mm/ui/dm;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/dm;->gow:I

    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v1, 0x40001

    const v2, 0x41002

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/i/a;->x(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/dm;->goy:Ljava/util/Map;

    iget v1, p0, Lcom/tencent/mm/ui/dm;->gos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/do;

    iput-boolean v7, v0, Lcom/tencent/mm/ui/do;->goz:Z

    iput-boolean v7, p0, Lcom/tencent/mm/ui/dm;->goz:Z

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/v;->tp()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x32014

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v8}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Integer;I)I

    move-result v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v2, 0x32011

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v8}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Integer;I)I

    move-result v0

    add-int/2addr v1, v0

    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v2, 0x40004

    invoke-virtual {v0, v2, v9}, Lcom/tencent/mm/i/a;->x(II)Z

    move-result v2

    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/tencent/mm/i/a;->cc(I)Z

    move-result v3

    const-string v0, "MicroMsg.MainSubMenuHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isShowNew : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.MainSubMenuHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isShowDot : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/dm;->goy:Ljava/util/Map;

    iget v4, p0, Lcom/tencent/mm/ui/dm;->gor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/do;

    if-eqz v2, :cond_4

    iput-boolean v7, p0, Lcom/tencent/mm/ui/dm;->goz:Z

    iput-boolean v7, v0, Lcom/tencent/mm/ui/do;->goz:Z

    .line 159
    :cond_3
    :goto_0
    invoke-super {p0}, Lcom/tencent/mm/ui/tools/fx;->cB()Z

    move-result v0

    return v0

    .line 158
    :cond_4
    if-lez v1, :cond_5

    iput-boolean v7, p0, Lcom/tencent/mm/ui/dm;->goz:Z

    iput v1, v0, Lcom/tencent/mm/ui/do;->goC:I

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_3

    iput-boolean v7, p0, Lcom/tencent/mm/ui/dm;->goz:Z

    iput-boolean v3, v0, Lcom/tencent/mm/ui/do;->goB:Z

    goto :goto_0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x10b25

    const/16 v2, 0x2aa7

    .line 164
    iget-object v0, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/support/v7/app/ActionBarActivity;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->u()V

    .line 167
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/dm;->goo:I

    if-ne p3, v0, :cond_2

    .line 168
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "1-1"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 169
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/mm/ui/setting/SettingsPersonalInfoUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    iget-object v1, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    iget v0, p0, Lcom/tencent/mm/ui/dm;->gop:I

    if-ne p3, v0, :cond_4

    .line 175
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "1-2"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "sns_userName"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x2000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Integer;I)I

    move-result v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    const-string v2, "sns"

    const-string v3, ".ui.SnsUserUI"

    invoke-static {v0, v2, v3, v1}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 180
    :cond_4
    iget v0, p0, Lcom/tencent/mm/ui/dm;->got:I

    if-ne p3, v0, :cond_5

    .line 181
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "1-6"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/mm/ui/setting/SendFeedBackUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 186
    :cond_5
    iget v0, p0, Lcom/tencent/mm/ui/dm;->gos:I

    if-ne p3, v0, :cond_6

    .line 187
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "1-5"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v1, 0x40001

    const v2, 0x41002

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/i/a;->y(II)V

    .line 190
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    iget-object v1, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 195
    :cond_6
    iget v0, p0, Lcom/tencent/mm/ui/dm;->goq:I

    if-ne p3, v0, :cond_7

    .line 196
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "1-3"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    const-string v1, "favorite"

    const-string v2, ".ui.FavoriteIndexUI"

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ak/a;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :cond_7
    iget v0, p0, Lcom/tencent/mm/ui/dm;->gor:I

    if-ne p3, v0, :cond_8

    .line 202
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "1-4"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    const-string v1, "mall"

    const-string v2, ".ui.MallIndexUI"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 205
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v1, 0x40004

    const v2, 0x41008

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/i/a;->y(II)V

    .line 206
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    new-instance v0, Lcom/tencent/mm/ab/j;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/tencent/mm/ab/j;-><init>(I)V

    .line 208
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto/16 :goto_0

    .line 213
    :cond_8
    iget v0, p0, Lcom/tencent/mm/ui/dm;->gov:I

    if-ne p3, v0, :cond_9

    .line 214
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "1-7"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 215
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    iget-object v1, p0, Lcom/tencent/mm/ui/dm;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 220
    :cond_9
    invoke-virtual {p0}, Lcom/tencent/mm/ui/dm;->dismiss()V

    goto/16 :goto_0
.end method
