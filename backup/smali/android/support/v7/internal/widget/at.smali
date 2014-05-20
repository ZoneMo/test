.class final Landroid/support/v7/internal/widget/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/w;


# instance fields
.field final synthetic pG:Landroid/support/v7/internal/widget/ap;

.field final synthetic pH:Landroid/support/v7/internal/widget/as;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/as;Landroid/support/v7/internal/widget/ap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Landroid/support/v7/internal/widget/at;->pH:Landroid/support/v7/internal/widget/as;

    iput-object p2, p0, Landroid/support/v7/internal/widget/at;->pG:Landroid/support/v7/internal/widget/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 709
    iget-object v0, p0, Landroid/support/v7/internal/widget/at;->pH:Landroid/support/v7/internal/widget/as;

    iget-object v0, v0, Landroid/support/v7/internal/widget/as;->pE:Landroid/support/v7/internal/widget/ap;

    invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/ap;->setSelection(I)V

    .line 710
    iget-object v0, p0, Landroid/support/v7/internal/widget/at;->pH:Landroid/support/v7/internal/widget/as;

    iget-object v0, v0, Landroid/support/v7/internal/widget/as;->pE:Landroid/support/v7/internal/widget/ap;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ap;->nO:Landroid/support/v7/internal/widget/w;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Landroid/support/v7/internal/widget/at;->pH:Landroid/support/v7/internal/widget/as;

    iget-object v0, v0, Landroid/support/v7/internal/widget/as;->pE:Landroid/support/v7/internal/widget/ap;

    iget-object v1, p0, Landroid/support/v7/internal/widget/at;->pH:Landroid/support/v7/internal/widget/as;

    invoke-static {v1}, Landroid/support/v7/internal/widget/as;->a(Landroid/support/v7/internal/widget/as;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/internal/widget/ap;->g(Landroid/view/View;I)Z

    .line 713
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/at;->pH:Landroid/support/v7/internal/widget/as;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/as;->dismiss()V

    .line 714
    return-void
.end method
