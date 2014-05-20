.class public Lcom/tencent/mm/ui/base/MMRadioGroupView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private gBt:I

.field private gBu:I

.field private gBv:Lcom/tencent/mm/ui/base/cs;

.field private gBw:Lcom/tencent/mm/ui/base/cp;

.field private gBx:Lcom/tencent/mm/ui/base/cq;

.field private gBy:Lcom/tencent/mm/ui/base/MMRadioImageButton;

.field private gBz:Lcom/tencent/mm/ui/base/cr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/base/MMRadioGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBt:I

    .line 19
    iput v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBu:I

    .line 31
    new-instance v0, Lcom/tencent/mm/ui/base/co;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/co;-><init>(Lcom/tencent/mm/ui/base/MMRadioGroupView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBv:Lcom/tencent/mm/ui/base/cs;

    new-instance v0, Lcom/tencent/mm/ui/base/cq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/base/cq;-><init>(Lcom/tencent/mm/ui/base/MMRadioGroupView;B)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBx:Lcom/tencent/mm/ui/base/cq;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBx:Lcom/tencent/mm/ui/base/cq;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/base/MMRadioGroupView;)I
    .locals 1
    .parameter

    .prologue
    .line 16
    iget v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBt:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/base/MMRadioGroupView;Lcom/tencent/mm/ui/base/MMRadioImageButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBy:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/base/MMRadioGroupView;)Lcom/tencent/mm/ui/base/cs;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBv:Lcom/tencent/mm/ui/base/cs;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/base/MMRadioGroupView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->n(IZ)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/base/MMRadioGroupView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->nj(I)V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/ui/base/MMRadioGroupView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16
    iput p1, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBu:I

    iget-object v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBw:Lcom/tencent/mm/ui/base/cp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBw:Lcom/tencent/mm/ui/base/cp;

    iget v1, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBu:I

    invoke-interface {v0, p0, v1}, Lcom/tencent/mm/ui/base/cp;->b(Lcom/tencent/mm/ui/base/MMRadioGroupView;I)V

    :cond_0
    return-void
.end method

.method private n(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/tencent/mm/ui/base/MMRadioImageButton;

    if-eqz v1, :cond_0

    .line 67
    check-cast v0, Lcom/tencent/mm/ui/base/MMRadioImageButton;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->setChecked(Z)V

    .line 69
    :cond_0
    return-void
.end method

.method private nj(I)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBt:I

    .line 73
    iget-object v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBw:Lcom/tencent/mm/ui/base/cp;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBw:Lcom/tencent/mm/ui/base/cp;

    iget v1, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBt:I

    invoke-interface {v0, p0, v1}, Lcom/tencent/mm/ui/base/cp;->a(Lcom/tencent/mm/ui/base/MMRadioGroupView;I)V

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/cp;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBw:Lcom/tencent/mm/ui/base/cp;

    .line 91
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/cr;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBz:Lcom/tencent/mm/ui/base/cr;

    .line 190
    return-void
.end method

.method public final aHn()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBu:I

    return v0
.end method

.method public final aHo()Lcom/tencent/mm/ui/base/MMRadioImageButton;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBy:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    return-object v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    instance-of v0, p1, Lcom/tencent/mm/ui/base/MMRadioImageButton;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 52
    check-cast v0, Lcom/tencent/mm/ui/base/MMRadioImageButton;

    .line 53
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    iget v1, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBt:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 55
    iget v1, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBt:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->n(IZ)V

    .line 57
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMRadioImageButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->nj(I)V

    .line 58
    iput-object v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBy:Lcom/tencent/mm/ui/base/MMRadioImageButton;

    .line 61
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 62
    return-void
.end method

.method public final getCheckedRadioButtonId()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBt:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 43
    iget v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBt:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 44
    iget v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBt:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->n(IZ)V

    .line 45
    iget v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBt:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/base/MMRadioGroupView;->nj(I)V

    .line 47
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 207
    if-gtz p1, :cond_0

    if-lez p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBz:Lcom/tencent/mm/ui/base/cr;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/tencent/mm/ui/base/MMRadioGroupView;->gBz:Lcom/tencent/mm/ui/base/cr;

    invoke-interface {v0, p1}, Lcom/tencent/mm/ui/base/cr;->kQ(I)V

    .line 210
    :cond_1
    return-void
.end method
