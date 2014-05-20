.class final Landroid/support/v4/view/cb;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic fb:Landroid/support/v4/view/ViewPager;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 2805
    iput-object p1, p0, Landroid/support/v4/view/cb;->fb:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ViewPager;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2805
    invoke-direct {p0, p1}, Landroid/support/v4/view/cb;-><init>(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 2808
    iget-object v0, p0, Landroid/support/v4/view/cb;->fb:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->al()V

    .line 2809
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 2812
    iget-object v0, p0, Landroid/support/v4/view/cb;->fb:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->al()V

    .line 2813
    return-void
.end method
