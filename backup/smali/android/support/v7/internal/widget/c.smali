.class final Landroid/support/v7/internal/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final lO:Landroid/util/SparseArray;

.field final synthetic lP:Landroid/support/v7/internal/widget/AbsSpinnerICS;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/AbsSpinnerICS;)V
    .locals 1
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Landroid/support/v7/internal/widget/c;->lP:Landroid/support/v7/internal/widget/AbsSpinnerICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/c;->lO:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method final F(I)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 431
    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->lO:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 432
    if-eqz v0, :cond_0

    .line 434
    iget-object v1, p0, Landroid/support/v7/internal/widget/c;->lO:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 438
    :cond_0
    return-object v0
.end method

.method public final b(ILandroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->lO:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    return-void
.end method

.method final clear()V
    .locals 5

    .prologue
    .line 442
    iget-object v2, p0, Landroid/support/v7/internal/widget/c;->lO:Landroid/util/SparseArray;

    .line 443
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 444
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 445
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 446
    if-eqz v0, :cond_0

    .line 447
    iget-object v4, p0, Landroid/support/v7/internal/widget/c;->lP:Landroid/support/v7/internal/widget/AbsSpinnerICS;

    invoke-static {v4, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a(Landroid/support/v7/internal/widget/AbsSpinnerICS;Landroid/view/View;)V

    .line 444
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 451
    return-void
.end method
