.class final Landroid/support/v7/app/m;
.super Landroid/support/v7/app/k;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/aj;


# instance fields
.field final hT:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

.field private hU:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/k;-><init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V

    .line 36
    sget v0, Lcom/tencent/mm/i;->akN:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    iput-object v0, p0, Landroid/support/v7/app/m;->hT:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    .line 40
    iget-object v0, p0, Landroid/support/v7/app/m;->hT:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Landroid/support/v7/app/m;->hT:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->a(Landroid/support/v7/internal/widget/aj;)V

    .line 43
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/m;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Landroid/support/v7/app/m;->hU:Landroid/view/ActionMode;

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 1
    .parameter

    .prologue
    .line 48
    new-instance v0, Landroid/support/v7/app/n;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/n;-><init>(Landroid/support/v7/app/m;Landroid/view/ActionMode$Callback;)V

    return-object v0
.end method

.method final bl()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/v7/app/m;->hU:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/app/k;->bl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hide()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v7/app/k;->hide()V

    .line 62
    iget-object v0, p0, Landroid/support/v7/app/m;->hU:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Landroid/support/v7/app/m;->hU:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 65
    :cond_0
    return-void
.end method

.method public final show()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/support/v7/app/k;->show()V

    .line 54
    iget-object v0, p0, Landroid/support/v7/app/m;->hU:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Landroid/support/v7/app/m;->hU:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 57
    :cond_0
    return-void
.end method
