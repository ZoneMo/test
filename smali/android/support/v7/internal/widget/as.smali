.class final Landroid/support/v7/internal/widget/as;
.super Landroid/support/v7/internal/widget/ListPopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/au;


# instance fields
.field private ol:Landroid/widget/ListAdapter;

.field final synthetic pE:Landroid/support/v7/internal/widget/ap;

.field private pF:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/ap;Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 699
    iput-object p1, p0, Landroid/support/v7/internal/widget/as;->pE:Landroid/support/v7/internal/widget/ap;

    .line 700
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 702
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/as;->setAnchorView(Landroid/view/View;)V

    .line 703
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/as;->dk()V

    .line 704
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/as;->dj()V

    .line 706
    new-instance v0, Landroid/support/v7/internal/widget/x;

    new-instance v1, Landroid/support/v7/internal/widget/at;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/widget/at;-><init>(Landroid/support/v7/internal/widget/as;Landroid/support/v7/internal/widget/ap;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/x;-><init>(Landroid/support/v7/internal/widget/u;Landroid/support/v7/internal/widget/w;)V

    .line 717
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/as;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 718
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/as;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 694
    iget-object v0, p0, Landroid/support/v7/internal/widget/as;->ol:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public final f(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 732
    iput-object p1, p0, Landroid/support/v7/internal/widget/as;->pF:Ljava/lang/CharSequence;

    .line 733
    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 722
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 723
    iput-object p1, p0, Landroid/support/v7/internal/widget/as;->ol:Landroid/widget/ListAdapter;

    .line 724
    return-void
.end method

.method public final show()V
    .locals 6

    .prologue
    .line 737
    iget-object v0, p0, Landroid/support/v7/internal/widget/as;->pE:Landroid/support/v7/internal/widget/ap;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ap;->getPaddingLeft()I

    move-result v1

    .line 738
    iget-object v0, p0, Landroid/support/v7/internal/widget/as;->pE:Landroid/support/v7/internal/widget/ap;

    iget v0, v0, Landroid/support/v7/internal/widget/ap;->oq:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    .line 739
    iget-object v0, p0, Landroid/support/v7/internal/widget/as;->pE:Landroid/support/v7/internal/widget/ap;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ap;->getWidth()I

    move-result v2

    .line 740
    iget-object v0, p0, Landroid/support/v7/internal/widget/as;->pE:Landroid/support/v7/internal/widget/ap;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ap;->getPaddingRight()I

    move-result v3

    .line 741
    iget-object v4, p0, Landroid/support/v7/internal/widget/as;->pE:Landroid/support/v7/internal/widget/ap;

    iget-object v0, p0, Landroid/support/v7/internal/widget/as;->ol:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/as;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/support/v7/internal/widget/ap;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/as;->setContentWidth(I)V

    .line 751
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/as;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 752
    const/4 v0, 0x0

    .line 753
    if-eqz v2, :cond_0

    .line 754
    iget-object v0, p0, Landroid/support/v7/internal/widget/as;->pE:Landroid/support/v7/internal/widget/ap;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ap;->a(Landroid/support/v7/internal/widget/ap;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 755
    iget-object v0, p0, Landroid/support/v7/internal/widget/as;->pE:Landroid/support/v7/internal/widget/ap;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ap;->a(Landroid/support/v7/internal/widget/ap;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    .line 757
    :cond_0
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/as;->setHorizontalOffset(I)V

    .line 758
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/as;->dl()V

    .line 759
    invoke-super {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V

    .line 760
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/as;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 761
    iget-object v0, p0, Landroid/support/v7/internal/widget/as;->pE:Landroid/support/v7/internal/widget/ap;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ap;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/as;->setSelection(I)V

    .line 762
    return-void

    .line 744
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/as;->pE:Landroid/support/v7/internal/widget/ap;

    iget v0, v0, Landroid/support/v7/internal/widget/ap;->oq:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 745
    iget-object v0, p0, Landroid/support/v7/internal/widget/as;->pE:Landroid/support/v7/internal/widget/ap;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ap;->getWidth()I

    move-result v0

    .line 746
    iget-object v2, p0, Landroid/support/v7/internal/widget/as;->pE:Landroid/support/v7/internal/widget/ap;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ap;->getPaddingRight()I

    move-result v2

    .line 747
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/as;->setContentWidth(I)V

    goto :goto_0

    .line 749
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/as;->pE:Landroid/support/v7/internal/widget/ap;

    iget v0, v0, Landroid/support/v7/internal/widget/ap;->oq:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/as;->setContentWidth(I)V

    goto :goto_0
.end method
