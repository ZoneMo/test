.class public final Lcom/tencent/mm/ui/tools/dl;
.super Lcom/tencent/mm/ui/tools/fx;
.source "SourceFile"


# instance fields
.field private eCL:Z

.field private ge:Landroid/view/LayoutInflater;

.field private hli:Lcom/tencent/mm/ui/base/cc;

.field private hlj:Lcom/tencent/mm/ui/base/cd;

.field private hlk:Lcom/tencent/mm/ui/base/bx;

.field private hlm:Lcom/tencent/mm/ui/base/ca;

.field private hln:Lcom/tencent/mm/ui/base/cb;

.field private hlr:Lcom/tencent/mm/ui/tools/dm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/fx;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/dl;->eCL:Z

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/dl;->ge:Landroid/view/LayoutInflater;

    .line 37
    new-instance v0, Lcom/tencent/mm/ui/base/bx;

    invoke-direct {v0}, Lcom/tencent/mm/ui/base/bx;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/dl;->hlk:Lcom/tencent/mm/ui/base/bx;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/dl;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/dl;->eCL:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/dl;)Lcom/tencent/mm/ui/base/bx;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dl;->hlk:Lcom/tencent/mm/ui/base/bx;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/dl;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dl;->ge:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/tools/dl;)Lcom/tencent/mm/ui/base/ca;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dl;->hlm:Lcom/tencent/mm/ui/base/ca;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/tools/dl;)Lcom/tencent/mm/ui/base/cb;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dl;->hln:Lcom/tencent/mm/ui/base/cb;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/tools/dl;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dl;->hlk:Lcom/tencent/mm/ui/base/bx;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/bx;->aHg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bdt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dl;->hlk:Lcom/tencent/mm/ui/base/bx;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/bx;->aHg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/ca;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/dl;->hlm:Lcom/tencent/mm/ui/base/ca;

    .line 43
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/cb;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/dl;->hln:Lcom/tencent/mm/ui/base/cb;

    .line 47
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/cc;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/dl;->hli:Lcom/tencent/mm/ui/base/cc;

    .line 51
    return-void
.end method

.method protected final aFt()Landroid/widget/BaseAdapter;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dl;->hlr:Lcom/tencent/mm/ui/tools/dm;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/tencent/mm/ui/tools/dm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/tools/dm;-><init>(Lcom/tencent/mm/ui/tools/dl;B)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/dl;->hlr:Lcom/tencent/mm/ui/tools/dm;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dl;->hlr:Lcom/tencent/mm/ui/tools/dm;

    return-object v0
.end method

.method public final b(Lcom/tencent/mm/ui/base/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/dl;->hlj:Lcom/tencent/mm/ui/base/cd;

    .line 55
    return-void
.end method

.method public final cB()Z
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dl;->hli:Lcom/tencent/mm/ui/base/cc;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dl;->hli:Lcom/tencent/mm/ui/base/cc;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/dl;->hlk:Lcom/tencent/mm/ui/base/bx;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/cc;->a(Lcom/tencent/mm/ui/base/bx;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dl;->hlk:Lcom/tencent/mm/ui/base/bx;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/bx;->aHg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/dl;->eCL:Z

    .line 106
    invoke-super {p0}, Lcom/tencent/mm/ui/tools/fx;->cB()Z

    move-result v0

    return v0

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/dl;->eCL:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 134
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/dl;->eCL:Z

    if-eqz v0, :cond_1

    .line 118
    add-int/lit8 p3, p3, -0x1

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dl;->hlj:Lcom/tencent/mm/ui/base/cd;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dl;->hlj:Lcom/tencent/mm/ui/base/cd;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/dl;->hlk:Lcom/tencent/mm/ui/base/bx;

    invoke-virtual {v1, p3}, Lcom/tencent/mm/ui/base/bx;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/tencent/mm/ui/base/cd;->d(Landroid/view/MenuItem;I)V

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/dl;->dismiss()V

    goto :goto_0
.end method
