.class final Lcom/tencent/mm/ui/base/bp;
.super Landroid/widget/ListView;
.source "SourceFile"


# instance fields
.field private oL:Z

.field private oM:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1186
    const/4 v0, 0x0

    sget v1, Lcom/tencent/mm/d;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1187
    iput-boolean p2, p0, Lcom/tencent/mm/ui/base/bp;->oM:Z

    .line 1188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/bp;->setCacheColorHint(I)V

    .line 1189
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/base/bp;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1135
    iput-boolean p1, p0, Lcom/tencent/mm/ui/base/bp;->oL:Z

    return p1
.end method


# virtual methods
.method final g(II)I
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1297
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/bp;->getListPaddingTop()I

    move-result v2

    .line 1298
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/bp;->getListPaddingBottom()I

    move-result v3

    .line 1299
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/bp;->getListPaddingLeft()I

    .line 1300
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/bp;->getListPaddingRight()I

    .line 1301
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/bp;->getDividerHeight()I

    move-result v0

    .line 1302
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/bp;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1304
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/bp;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    .line 1306
    if-nez v8, :cond_1

    .line 1307
    add-int p2, v2, v3

    .line 1367
    :cond_0
    :goto_0
    return p2

    .line 1311
    :cond_1
    add-int/2addr v3, v2

    .line 1312
    if-lez v0, :cond_2

    if-eqz v4, :cond_2

    .line 1321
    :goto_1
    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    move v7, v1

    move v4, v1

    move-object v6, v5

    .line 1322
    :goto_2
    if-ge v7, v9, :cond_4

    .line 1323
    invoke-interface {v8, v7}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 1324
    if-eq v2, v4, :cond_5

    move v4, v2

    move-object v2, v5

    .line 1328
    :goto_3
    invoke-interface {v8, v7, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1333
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1334
    if-lez v2, :cond_3

    .line 1335
    const/high16 v10, 0x4000

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1340
    :goto_4
    invoke-virtual {v6, p1, v2}, Landroid/view/View;->measure(II)V

    .line 1342
    if-lez v7, :cond_6

    .line 1344
    add-int v2, v3, v0

    .line 1347
    :goto_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 1349
    if-ge v3, p2, :cond_0

    .line 1360
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 1312
    goto :goto_1

    .line 1338
    :cond_3
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_4

    :cond_4
    move p2, v3

    .line 1367
    goto :goto_0

    :cond_5
    move-object v2, v6

    goto :goto_3

    :cond_6
    move v2, v3

    goto :goto_5
.end method

.method public final hasFocus()Z
    .locals 1

    .prologue
    .line 1264
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/bp;->oM:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1244
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/bp;->oM:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocused()Z
    .locals 1

    .prologue
    .line 1254
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/bp;->oM:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInTouchMode()Z
    .locals 1

    .prologue
    .line 1234
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/bp;->oM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/bp;->oL:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
