.class public final Landroid/support/v7/internal/view/b;
.super Landroid/support/v7/a/a;
.source "SourceFile"


# instance fields
.field final ig:Landroid/view/MenuInflater;

.field final ih:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/a/a;-><init>()V

    .line 35
    iput-object p2, p0, Landroid/support/v7/internal/view/b;->ih:Landroid/view/ActionMode;

    .line 36
    new-instance v0, Landroid/support/v7/internal/view/c;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/b;->ig:Landroid/view/MenuInflater;

    .line 37
    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->ih:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 82
    return-void
.end method
