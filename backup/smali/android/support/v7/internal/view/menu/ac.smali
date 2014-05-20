.class public Landroid/support/v7/internal/view/menu/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ae;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# static fields
.field static final lm:I


# instance fields
.field private ge:Landroid/view/LayoutInflater;

.field private hh:Landroid/support/v7/internal/view/menu/o;

.field private kO:Landroid/support/v7/internal/view/menu/af;

.field kj:Z

.field private ln:Landroid/support/v7/internal/widget/ListPopupWindow;

.field private lo:I

.field private lp:Landroid/view/View;

.field private lq:Z

.field private lr:Landroid/view/ViewTreeObserver;

.field private ls:Landroid/support/v7/internal/view/menu/ad;

.field private lt:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/tencent/mm/k;->aSa:I

    sput v0, Landroid/support/v7/internal/view/menu/ac;->lm:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ac;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ge:Landroid/view/LayoutInflater;

    .line 82
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/ac;->hh:Landroid/support/v7/internal/view/menu/o;

    .line 83
    iput-boolean p4, p0, Landroid/support/v7/internal/view/menu/ac;->lq:Z

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/tencent/mm/g;->abc:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/menu/ac;->lo:I

    .line 89
    iput-object p3, p0, Landroid/support/v7/internal/view/menu/ac;->lp:Landroid/view/View;

    .line 91
    invoke-virtual {p2, p0}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/support/v7/internal/view/menu/ae;)V

    .line 92
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/ac;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ac;->lq:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/internal/view/menu/ac;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ge:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/view/menu/ac;)Landroid/support/v7/internal/view/menu/o;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->hh:Landroid/support/v7/internal/view/menu/o;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/af;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ac;->kO:Landroid/support/v7/internal/view/menu/af;

    .line 231
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/o;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->hh:Landroid/support/v7/internal/view/menu/o;

    if-eq p1, v0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ac;->dismiss()V

    .line 268
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->kO:Landroid/support/v7/internal/view/menu/af;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->kO:Landroid/support/v7/internal/view/menu/af;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/af;->a(Landroid/support/v7/internal/view/menu/o;Z)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/ak;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ak;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    new-instance v3, Landroid/support/v7/internal/view/menu/ac;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ac;->lp:Landroid/view/View;

    invoke-direct {v3, v0, p1, v4, v2}, Landroid/support/v7/internal/view/menu/ac;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;Landroid/view/View;Z)V

    .line 237
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->kO:Landroid/support/v7/internal/view/menu/af;

    iput-object v0, v3, Landroid/support/v7/internal/view/menu/ac;->kO:Landroid/support/v7/internal/view/menu/af;

    .line 240
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ak;->size()I

    move-result v4

    move v0, v2

    .line 241
    :goto_0
    if-ge v0, v4, :cond_3

    .line 242
    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/ak;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 243
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 248
    :goto_1
    iput-boolean v0, v3, Landroid/support/v7/internal/view/menu/ac;->kj:Z

    .line 250
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/ac;->cB()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->kO:Landroid/support/v7/internal/view/menu/af;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->kO:Landroid/support/v7/internal/view/menu/af;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/af;->b(Landroid/support/v7/internal/view/menu/o;)Z

    .line 257
    :cond_0
    :goto_2
    return v1

    .line 241
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 257
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final bN()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public final cB()Z
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 109
    new-instance v0, Landroid/support/v7/internal/widget/ListPopupWindow;

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ac;->mContext:Landroid/content/Context;

    sget v5, Lcom/tencent/mm/d;->popupMenuStyle:I

    invoke-direct {v0, v4, v3, v5}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ln:Landroid/support/v7/internal/widget/ListPopupWindow;

    .line 110
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ln:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 111
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ln:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    new-instance v0, Landroid/support/v7/internal/view/menu/ad;

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ac;->hh:Landroid/support/v7/internal/view/menu/o;

    invoke-direct {v0, p0, v4}, Landroid/support/v7/internal/view/menu/ad;-><init>(Landroid/support/v7/internal/view/menu/ac;Landroid/support/v7/internal/view/menu/o;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ls:Landroid/support/v7/internal/view/menu/ad;

    .line 114
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ln:Landroid/support/v7/internal/widget/ListPopupWindow;

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ac;->ls:Landroid/support/v7/internal/view/menu/ad;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ln:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->dk()V

    .line 117
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ac;->lp:Landroid/view/View;

    .line 118
    if-eqz v4, :cond_3

    .line 119
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->lr:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_2

    move v0, v1

    .line 120
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/internal/view/menu/ac;->lr:Landroid/view/ViewTreeObserver;

    .line 121
    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->lr:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ln:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 129
    iget-object v7, p0, Landroid/support/v7/internal/view/menu/ac;->ln:Landroid/support/v7/internal/widget/ListPopupWindow;

    iget-object v8, p0, Landroid/support/v7/internal/view/menu/ac;->ls:Landroid/support/v7/internal/view/menu/ad;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    move v5, v2

    move-object v4, v3

    move v6, v2

    :goto_1
    if-ge v5, v11, :cond_4

    invoke-interface {v8, v5}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v2, :cond_5

    move-object v2, v3

    :goto_2
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ac;->lt:Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v12, p0, Landroid/support/v7/internal/view/menu/ac;->mContext:Landroid/content/Context;

    invoke-direct {v4, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v7/internal/view/menu/ac;->lt:Landroid/view/ViewGroup;

    :cond_1
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ac;->lt:Landroid/view/ViewGroup;

    invoke-interface {v8, v5, v2, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 119
    goto :goto_0

    :cond_3
    move v1, v2

    .line 133
    :goto_3
    return v1

    .line 129
    :cond_4
    iget v0, p0, Landroid/support/v7/internal/view/menu/ac;->lo:I

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->setContentWidth(I)V

    .line 130
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ln:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->dl()V

    .line 131
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ln:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V

    .line 132
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ln:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_3

    :cond_5
    move v0, v2

    move-object v2, v4

    goto :goto_2
.end method

.method public final d(Landroid/support/v7/internal/view/menu/s;)Z
    .locals 1
    .parameter

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public final dismiss()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ac;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ln:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->dismiss()V

    .line 140
    :cond_0
    return-void
.end method

.method public final e(Landroid/support/v7/internal/view/menu/s;)Z
    .locals 1
    .parameter

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public final isShowing()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ln:Landroid/support/v7/internal/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ln:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j(Z)V
    .locals 1
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ls:Landroid/support/v7/internal/view/menu/ad;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ls:Landroid/support/v7/internal/view/menu/ad;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ad;->notifyDataSetChanged()V

    .line 226
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/ac;->ln:Landroid/support/v7/internal/widget/ListPopupWindow;

    .line 144
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->hh:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->close()V

    .line 145
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->lr:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->lr:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->lp:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->lr:Landroid/view/ViewTreeObserver;

    .line 149
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->lr:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 150
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/ac;->lr:Landroid/view/ViewTreeObserver;

    .line 152
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ac;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->lp:Landroid/view/View;

    .line 202
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ac;->dismiss()V

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ac;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ln:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ac;->ls:Landroid/support/v7/internal/view/menu/ad;

    .line 161
    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ad;->a(Landroid/support/v7/internal/view/menu/ad;)Landroid/support/v7/internal/view/menu/o;

    move-result-object v1

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/view/menu/ad;->C(I)Landroid/support/v7/internal/view/menu/s;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/view/menu/o;->c(Landroid/view/MenuItem;I)Z

    .line 162
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 165
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 166
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ac;->dismiss()V

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
