.class public final Landroid/support/v7/internal/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ag;
.implements Landroid/support/v7/internal/view/menu/q;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private hh:Landroid/support/v7/internal/view/menu/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-virtual {p0, p0}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    return-void
.end method


# virtual methods
.method public final c(Landroid/support/v7/internal/view/menu/s;)Z
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->hh:Landroid/support/v7/internal/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/internal/view/menu/o;->c(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public final d(Landroid/support/v7/internal/view/menu/o;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->hh:Landroid/support/v7/internal/view/menu/o;

    .line 50
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setChildrenDrawingCacheEnabled(Z)V

    .line 58
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->c(Landroid/support/v7/internal/view/menu/s;)Z

    .line 69
    return-void
.end method
