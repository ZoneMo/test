.class public Landroid/support/v7/internal/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private final nh:Landroid/support/v7/internal/widget/s;

.field private final ni:Landroid/support/v7/internal/widget/t;

.field private final nj:Landroid/widget/LinearLayout;

.field private final nk:Landroid/graphics/drawable/Drawable;

.field private final nl:Landroid/widget/FrameLayout;

.field private final nm:Landroid/widget/ImageView;

.field private final nn:Landroid/widget/FrameLayout;

.field private final no:Landroid/widget/ImageView;

.field private final np:I

.field nq:Landroid/support/v4/view/n;

.field private final nr:Landroid/database/DataSetObserver;

.field private final ns:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private nt:Landroid/support/v7/internal/widget/ListPopupWindow;

.field private nu:Landroid/widget/PopupWindow$OnDismissListener;

.field private nv:Z

.field private nw:I

.field private nx:Z

.field private ny:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    new-instance v0, Landroid/support/v7/internal/widget/p;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/p;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nr:Landroid/database/DataSetObserver;

    .line 137
    new-instance v0, Landroid/support/v7/internal/widget/q;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/q;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->ns:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 171
    iput v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nw:I

    .line 212
    sget-object v0, Lcom/tencent/mm/p;->bJa:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 215
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nw:I

    .line 219
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 222
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 225
    sget v2, Lcom/tencent/mm/k;->aRT:I

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 227
    new-instance v0, Landroid/support/v7/internal/widget/t;

    invoke-direct {v0, p0, v3}, Landroid/support/v7/internal/widget/t;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->ni:Landroid/support/v7/internal/widget/t;

    .line 229
    sget v0, Lcom/tencent/mm/i;->akU:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nj:Landroid/widget/LinearLayout;

    .line 230
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nj:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nk:Landroid/graphics/drawable/Drawable;

    .line 232
    sget v0, Lcom/tencent/mm/i;->aqY:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nn:Landroid/widget/FrameLayout;

    .line 233
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nn:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->ni:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nn:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->ni:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 235
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nn:Landroid/widget/FrameLayout;

    sget v2, Lcom/tencent/mm/i;->awm:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->no:Landroid/widget/ImageView;

    .line 237
    sget v0, Lcom/tencent/mm/i;->asT:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nl:Landroid/widget/FrameLayout;

    .line 238
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nl:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->ni:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nl:Landroid/widget/FrameLayout;

    sget v2, Lcom/tencent/mm/i;->awm:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nm:Landroid/widget/ImageView;

    .line 241
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nm:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    new-instance v0, Landroid/support/v7/internal/widget/s;

    invoke-direct {v0, p0, v3}, Landroid/support/v7/internal/widget/s;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    .line 244
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    new-instance v1, Landroid/support/v7/internal/widget/r;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/r;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/s;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/tencent/mm/g;->abc:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->np:I

    .line 255
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/s;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/s;->dd()Landroid/support/v7/internal/widget/j;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No data model. Did you call #setDataModel?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->ns:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nn:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/s;->cR()I

    move-result v4

    if-eqz v0, :cond_5

    move v3, v1

    :goto_1
    const v5, 0x7fffffff

    if-eq p1, v5, :cond_6

    add-int/2addr v3, p1

    if-le v4, v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/s;->w(Z)V

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/s;->J(I)V

    :goto_2
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->db()Landroid/support/v7/internal/widget/ListPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nv:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_7

    :cond_1
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/internal/widget/s;->a(ZZ)V

    :goto_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/s;->dc()I

    move-result v0

    iget v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->np:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->setContentWidth(I)V

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nq:Landroid/support/v4/view/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nq:Landroid/support/v4/view/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/n;->c(Z)V

    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tencent/mm/n;->bcN:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_1

    :cond_6
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/s;->w(Z)V

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    invoke-virtual {v3, p1}, Landroid/support/v7/internal/widget/s;->J(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    invoke-virtual {v0, v2, v2}, Landroid/support/v7/internal/widget/s;->a(ZZ)V

    goto :goto_3
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ActivityChooserView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nv:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/ListPopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->db()Landroid/support/v7/internal/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 67
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/s;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nl:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/s;->cR()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/s;->getHistorySize()I

    move-result v1

    if-eq v0, v4, :cond_0

    if-le v0, v4, :cond_3

    if-lez v1, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nn:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/s;->cS()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->no:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->ny:I

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->ny:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nn:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nn:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nj:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nk:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nl:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nn:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nj:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method static synthetic d(Landroid/support/v7/internal/widget/ActivityChooserView;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nv:Z

    return v0
.end method

.method private db()Landroid/support/v7/internal/widget/ListPopupWindow;
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nt:Landroid/support/v7/internal/widget/ListPopupWindow;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nt:Landroid/support/v7/internal/widget/ListPopupWindow;

    .line 485
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nt:Landroid/support/v7/internal/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 486
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nt:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 487
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nt:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->dk()V

    .line 488
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nt:Landroid/support/v7/internal/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->ni:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 489
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nt:Landroid/support/v7/internal/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->ni:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 491
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nt:Landroid/support/v7/internal/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nn:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nl:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/internal/widget/ActivityChooserView;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nw:I

    return v0
.end method

.method static synthetic h(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nu:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method


# virtual methods
.method public final cZ()Z
    .locals 2

    .prologue
    .line 370
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->db()Landroid/support/v7/internal/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->db()Landroid/support/v7/internal/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->dismiss()V

    .line 372
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->ns:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 377
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final da()Z
    .locals 1

    .prologue
    .line 386
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->db()Landroid/support/v7/internal/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 391
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 392
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/s;->dd()Landroid/support/v7/internal/widget/j;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_0

    .line 394
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nr:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/j;->registerObserver(Ljava/lang/Object;)V

    .line 396
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nx:Z

    .line 397
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 401
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 402
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nh:Landroid/support/v7/internal/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/s;->dd()Landroid/support/v7/internal/widget/j;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_0

    .line 404
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nr:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/j;->unregisterObserver(Ljava/lang/Object;)V

    .line 406
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->ns:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 410
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->db()Landroid/support/v7/internal/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->cZ()Z

    .line 413
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nx:Z

    .line 414
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 432
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nj:Landroid/widget/LinearLayout;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 433
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->db()Landroid/support/v7/internal/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->cZ()Z

    .line 436
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nj:Landroid/widget/LinearLayout;

    .line 422
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->nn:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 426
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/internal/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    .line 427
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->setMeasuredDimension(II)V

    .line 428
    return-void
.end method
