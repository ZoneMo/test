.class final Landroid/support/v7/internal/widget/v;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field private oc:Landroid/os/Parcelable;

.field final synthetic od:Landroid/support/v7/internal/widget/u;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/u;)V
    .locals 1
    .parameter

    .prologue
    .line 796
    iput-object p1, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/v;->oc:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/u;->nP:Z

    .line 803
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    iget-object v1, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    iget v1, v1, Landroid/support/v7/internal/widget/u;->nV:I

    iput v1, v0, Landroid/support/v7/internal/widget/u;->nW:I

    .line 804
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    iget-object v1, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/internal/widget/u;->nV:I

    .line 808
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->oc:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    iget v0, v0, Landroid/support/v7/internal/widget/u;->nW:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    iget v0, v0, Landroid/support/v7/internal/widget/u;->nV:I

    if-lez v0, :cond_0

    .line 810
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    iget-object v1, p0, Landroid/support/v7/internal/widget/v;->oc:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/u;->a(Landroid/support/v7/internal/widget/u;Landroid/os/Parcelable;)V

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/v;->oc:Landroid/os/Parcelable;

    .line 815
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/u;->df()V

    .line 816
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/u;->requestLayout()V

    .line 817
    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/u;->di()V

    goto :goto_0
.end method

.method public final onInvalidated()V
    .locals 6

    .prologue
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 821
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/u;->nP:Z

    .line 823
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    invoke-static {v0}, Landroid/support/v7/internal/widget/u;->a(Landroid/support/v7/internal/widget/u;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/v;->oc:Landroid/os/Parcelable;

    .line 830
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    iget-object v1, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    iget v1, v1, Landroid/support/v7/internal/widget/u;->nV:I

    iput v1, v0, Landroid/support/v7/internal/widget/u;->nW:I

    .line 831
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    iput v3, v0, Landroid/support/v7/internal/widget/u;->nV:I

    .line 832
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    iput v2, v0, Landroid/support/v7/internal/widget/u;->nS:I

    .line 833
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    iput-wide v4, v0, Landroid/support/v7/internal/widget/u;->nT:J

    .line 834
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    iput v2, v0, Landroid/support/v7/internal/widget/u;->nQ:I

    .line 835
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    iput-wide v4, v0, Landroid/support/v7/internal/widget/u;->nR:J

    .line 836
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    iput-boolean v3, v0, Landroid/support/v7/internal/widget/u;->nK:Z

    .line 838
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/u;->df()V

    .line 839
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->od:Landroid/support/v7/internal/widget/u;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/u;->requestLayout()V

    .line 840
    return-void
.end method
