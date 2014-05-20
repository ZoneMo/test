.class public Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private oN:Landroid/support/v7/internal/widget/aj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/widget/aj;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->oN:Landroid/support/v7/internal/widget/aj;

    .line 38
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->oN:Landroid/support/v7/internal/widget/aj;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->oN:Landroid/support/v7/internal/widget/aj;

    invoke-interface {v0, p2}, Landroid/support/v7/internal/widget/aj;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p2

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
