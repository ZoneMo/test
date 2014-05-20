.class public Lcom/tencent/mm/ui/base/MMLoadMoreListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# instance fields
.field private gAA:Z

.field private gAz:Lcom/tencent/mm/ui/base/bw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/MMLoadMoreListView;->gAz:Lcom/tencent/mm/ui/base/bw;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/MMLoadMoreListView;->gAA:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/MMLoadMoreListView;->gAz:Lcom/tencent/mm/ui/base/bw;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/MMLoadMoreListView;->gAA:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/MMLoadMoreListView;->gAz:Lcom/tencent/mm/ui/base/bw;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/MMLoadMoreListView;->gAA:Z

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/base/MMLoadMoreListView;)Lcom/tencent/mm/ui/base/bw;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/tencent/mm/ui/base/MMLoadMoreListView;->gAz:Lcom/tencent/mm/ui/base/bw;

    return-object v0
.end method

.method public static aHe()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/bw;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tencent/mm/ui/base/MMLoadMoreListView;->gAz:Lcom/tencent/mm/ui/base/bw;

    .line 31
    return-void
.end method

.method public final aHc()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/MMLoadMoreListView;->gAA:Z

    return v0
.end method

.method public final aHd()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/MMLoadMoreListView;->gAA:Z

    .line 47
    new-instance v0, Lcom/tencent/mm/ui/base/bv;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/bv;-><init>(Lcom/tencent/mm/ui/base/MMLoadMoreListView;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/MMLoadMoreListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 61
    return-void
.end method
