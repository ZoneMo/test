.class final Landroid/support/v7/internal/widget/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/support/v7/internal/widget/au;


# instance fields
.field private pB:Landroid/app/AlertDialog;

.field private pC:Landroid/widget/ListAdapter;

.field private pD:Ljava/lang/CharSequence;

.field final synthetic pE:Landroid/support/v7/internal/widget/ap;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Landroid/support/v7/internal/widget/aq;->pE:Landroid/support/v7/internal/widget/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ap;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 650
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/aq;-><init>(Landroid/support/v7/internal/widget/ap;)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->pB:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 657
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/aq;->pB:Landroid/app/AlertDialog;

    .line 658
    return-void
.end method

.method public final f(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Landroid/support/v7/internal/widget/aq;->pD:Ljava/lang/CharSequence;

    .line 670
    return-void
.end method

.method public final isShowing()Z
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->pB:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->pB:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 686
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->pE:Landroid/support/v7/internal/widget/ap;

    invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/ap;->setSelection(I)V

    .line 687
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->pE:Landroid/support/v7/internal/widget/ap;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ap;->nO:Landroid/support/v7/internal/widget/w;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->pE:Landroid/support/v7/internal/widget/ap;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/internal/widget/aq;->pC:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    invoke-virtual {v0, v1, p2}, Landroid/support/v7/internal/widget/ap;->g(Landroid/view/View;I)Z

    .line 690
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->dismiss()V

    .line 691
    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Landroid/support/v7/internal/widget/aq;->pC:Landroid/widget/ListAdapter;

    .line 666
    return-void
.end method

.method public final show()V
    .locals 3

    .prologue
    .line 677
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aq;->pE:Landroid/support/v7/internal/widget/ap;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ap;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 678
    iget-object v1, p0, Landroid/support/v7/internal/widget/aq;->pD:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Landroid/support/v7/internal/widget/aq;->pD:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 681
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/aq;->pC:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/support/v7/internal/widget/aq;->pE:Landroid/support/v7/internal/widget/ap;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ap;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/aq;->pB:Landroid/app/AlertDialog;

    .line 683
    return-void
.end method
