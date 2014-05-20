.class final Landroid/support/v7/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic qy:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Landroid/support/v7/widget/a;->qy:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Landroid/support/v7/widget/a;->qy:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 151
    if-eqz v0, :cond_0

    .line 152
    sget-object v1, Landroid/support/v7/widget/SearchView;->qk:Landroid/support/v7/widget/m;

    iget-object v2, p0, Landroid/support/v7/widget/a;->qy:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/m;->a(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    .line 154
    :cond_0
    return-void
.end method
