.class final Landroid/support/v7/internal/widget/an;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic pv:Landroid/support/v7/internal/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Landroid/support/v7/internal/widget/an;->pv:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 441
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/an;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Landroid/support/v7/internal/widget/an;->pv:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Landroid/support/v7/internal/widget/an;->pv:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->dq()Landroid/support/v7/app/c;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 455
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 460
    if-nez p2, :cond_0

    .line 461
    iget-object v1, p0, Landroid/support/v7/internal/widget/an;->pv:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/an;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/c;

    invoke-static {v1, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/app/c;)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p2

    .line 465
    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    .line 463
    check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/an;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->c(Landroid/support/v7/app/c;)V

    goto :goto_0
.end method
