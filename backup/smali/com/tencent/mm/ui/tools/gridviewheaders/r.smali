.class public final Lcom/tencent/mm/ui/tools/gridviewheaders/r;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/tools/gridviewheaders/b;


# instance fields
.field private hoA:Landroid/widget/ListAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 12
    new-instance v0, Lcom/tencent/mm/ui/tools/gridviewheaders/s;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/gridviewheaders/s;-><init>(Lcom/tencent/mm/ui/tools/gridviewheaders/r;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/r;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 25
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/r;->hoA:Landroid/widget/ListAdapter;

    .line 26
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/r;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public final aOk()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/r;->hoA:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/r;->hoA:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/r;->hoA:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/r;->hoA:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final oo(I)I
    .locals 1
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method
