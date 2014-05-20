.class public Lcom/tencent/mm/ui/contact/SnsAddressUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# static fields
.field public static final eut:I


# instance fields
.field private dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

.field private dLM:Lcom/tencent/mm/ui/base/ek;

.field private diw:Lcom/tencent/mm/ui/tools/eo;

.field private eqt:Landroid/widget/Button;

.field private eyn:I

.field private gRX:Ljava/lang/String;

.field private gSA:Landroid/widget/ListView;

.field private gSB:Landroid/widget/TextView;

.field private gSH:I

.field private gSI:Landroid/widget/LinearLayout;

.field private gUR:Ljava/lang/String;

.field private gVB:Lcom/tencent/mm/ui/contact/en;

.field private gVC:Ljava/lang/String;

.field private gVD:Ljava/lang/String;

.field private gVE:I

.field private gVb:Lcom/tencent/mm/ui/base/ce;

.field private gVm:Landroid/view/View$OnClickListener;

.field private gVz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/tencent/mm/storage/g;->ggt:I

    sput v0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->eut:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVz:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVC:Ljava/lang/String;

    .line 64
    const-string v0, "@micromsg.qq.com"

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVD:Ljava/lang/String;

    .line 71
    iput v1, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->eyn:I

    .line 356
    new-instance v0, Lcom/tencent/mm/ui/contact/ez;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/ez;-><init>(Lcom/tencent/mm/ui/contact/SnsAddressUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->dLM:Lcom/tencent/mm/ui/base/ek;

    .line 423
    iput v1, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVE:I

    .line 554
    new-instance v0, Lcom/tencent/mm/ui/contact/er;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/er;-><init>(Lcom/tencent/mm/ui/contact/SnsAddressUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVm:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/SnsAddressUI;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSA:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/SnsAddressUI;Lcom/tencent/mm/ui/base/ce;)Lcom/tencent/mm/ui/base/ce;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/SnsAddressUI;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/contact/en;->ih(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/SnsAddressUI;)Lcom/tencent/mm/ui/contact/en;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/SnsAddressUI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->wR(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/contact/SnsAddressUI;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->eyn:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/contact/SnsAddressUI;)Lcom/tencent/mm/ui/base/ce;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    return-object v0
.end method

.method private wR(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0d003d

    const/4 v1, 0x0

    .line 512
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    if-eqz v0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/en;->aKZ()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 517
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/en;->aKZ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 520
    :goto_1
    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSI:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSI:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    move v0, v1

    .line 526
    :goto_2
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_3

    .line 527
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSI:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 529
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSI:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_0

    .line 526
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 535
    :cond_3
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 537
    invoke-static {v3, p1}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 541
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVm:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSI:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 544
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 545
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 546
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 547
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d001b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 548
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSI:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSI:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected final FR()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    const v0, 0x7f0a087c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 124
    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSA:Landroid/widget/ListView;

    .line 125
    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSB:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSB:Landroid/widget/TextView;

    const v3, 0x7f0703e6

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 127
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSB:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    new-instance v0, Lcom/tencent/mm/ui/contact/en;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVD:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gRX:Ljava/lang/String;

    iget v5, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSH:I

    iget-object v5, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVz:Ljava/lang/String;

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/tencent/mm/ui/contact/en;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    .line 129
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    new-instance v3, Lcom/tencent/mm/ui/contact/eq;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/contact/eq;-><init>(Lcom/tencent/mm/ui/contact/SnsAddressUI;)V

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/contact/en;->a(Lcom/tencent/mm/ui/bd;)V

    .line 141
    new-instance v0, Lcom/tencent/mm/ui/tools/eo;

    invoke-direct {v0}, Lcom/tencent/mm/ui/tools/eo;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    .line 142
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    new-instance v3, Lcom/tencent/mm/ui/contact/es;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/contact/es;-><init>(Lcom/tencent/mm/ui/contact/SnsAddressUI;)V

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/tools/eo;->a(Lcom/tencent/mm/ui/tools/ez;)V

    .line 168
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->a(ZLcom/tencent/mm/ui/tools/eo;)V

    .line 170
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSA:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSA:Landroid/widget/ListView;

    new-instance v3, Lcom/tencent/mm/ui/contact/et;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/contact/et;-><init>(Lcom/tencent/mm/ui/contact/SnsAddressUI;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSA:Landroid/widget/ListView;

    new-instance v3, Lcom/tencent/mm/ui/contact/eu;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/contact/eu;-><init>(Lcom/tencent/mm/ui/contact/SnsAddressUI;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSA:Landroid/widget/ListView;

    new-instance v3, Lcom/tencent/mm/ui/applet/a;

    new-instance v4, Lcom/tencent/mm/ui/contact/ev;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/contact/ev;-><init>(Lcom/tencent/mm/ui/contact/SnsAddressUI;)V

    invoke-direct {v3, v4}, Lcom/tencent/mm/ui/applet/a;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 251
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/en;->aKU()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->dg(Z)V

    .line 269
    new-instance v0, Lcom/tencent/mm/ui/contact/ew;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/ew;-><init>(Lcom/tencent/mm/ui/contact/SnsAddressUI;)V

    .line 277
    new-instance v0, Lcom/tencent/mm/ui/contact/ex;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/ex;-><init>(Lcom/tencent/mm/ui/contact/SnsAddressUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 290
    const v0, 0x7f0a0072

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    .line 291
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->dLM:Lcom/tencent/mm/ui/base/ek;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->a(Lcom/tencent/mm/ui/base/ek;)V

    .line 312
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/en;->aKV()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 317
    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    const v0, 0x7f0a0075

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSI:Landroid/widget/LinearLayout;

    .line 319
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gSI:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    const v0, 0x7f0a0077

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->eqt:Landroid/widget/Button;

    .line 321
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->eqt:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 322
    iget-object v4, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->eqt:Landroid/widget/Button;

    if-lez v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 323
    const-string v0, "%s(%d/%d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0709c4

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->eyn:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    sget v2, Lcom/tencent/mm/ui/contact/SnsAddressUI;->eut:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->wV(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->eqt:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/contact/ey;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/ey;-><init>(Lcom/tencent/mm/ui/contact/SnsAddressUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    return-void

    :cond_0
    move v0, v2

    .line 322
    goto :goto_0
.end method

.method public final dV(Z)V
    .locals 1
    .parameter

    .prologue
    .line 506
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->eqt:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->eqt:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 509
    :cond_0
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f03001d

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 417
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Contact_GroupFilter_Str"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gRX:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Block_list"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gUR:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Add_get_from_sns"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVz:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Select_Contact"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVC:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Contact_GroupFilter_Type"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "@micromsg.qq.com"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVD:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Add_address_titile"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "sns_address_count"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->eyn:I

    .line 89
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->vT(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->FR()V

    .line 91
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVC:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVC:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVC:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->c([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/contact/en;->aD(Ljava/util/List;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->wR(Ljava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    const-string v0, "%s(%d/%d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0709c4

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/contact/en;->VL()I

    move-result v4

    iget v5, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->eyn:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    sget v5, Lcom/tencent/mm/ui/contact/SnsAddressUI;->eut:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->wV(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/en;->VL()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->dV(Z)V

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gUR:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gUR:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gUR:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->c([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVE:I

    move-object v1, v0

    :goto_3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/w;->tT()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1
    move v0, v2

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    const-string v0, "weixin"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "weibo"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "qqmail"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "fmessage"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "tmessage"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "qmessage"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "qqsync"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "floatbottle"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "lbsapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "shakeapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "medianote"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "qqfriend"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "readerapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "newsapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "blogapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "facebookapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "masssendapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "meishiapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "feedsapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "voipapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "filehelper"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "officialaccounts"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "helper_entry"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "pc_share"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "cardpackage"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "voicevoipapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "voiceinputapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "linkedinplugin"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/en;->aB(Ljava/util/List;)V

    .line 93
    return-void

    :cond_3
    move-object v1, v0

    goto/16 :goto_3

    :cond_4
    move-object v4, v0

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 411
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 413
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->aHU()V

    .line 98
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/en;->closeCursor()V

    .line 99
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/en;->aDU()V

    .line 100
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 101
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 346
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->finish()V

    .line 348
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "stay_in_wechat"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/SnsAddressUI;->moveTaskToBack(Z)Z

    .line 353
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/eo;->aNE()V

    .line 118
    :cond_1
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 119
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->gVB:Lcom/tencent/mm/ui/contact/en;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/en;->ca(Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method

.method public final wV(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 500
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->eqt:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/SnsAddressUI;->eqt:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 503
    :cond_0
    return-void
.end method
