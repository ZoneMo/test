.class final Lcom/tencent/mm/ui/tools/ev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hlZ:Lcom/tencent/mm/ui/tools/er;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/er;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/ev;->hlZ:Lcom/tencent/mm/ui/tools/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ev;->hlZ:Lcom/tencent/mm/ui/tools/er;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->e(Lcom/tencent/mm/ui/tools/eo;)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ev;->hlZ:Lcom/tencent/mm/ui/tools/er;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->b(Lcom/tencent/mm/ui/tools/eo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "want to collapse search view, but search menu item is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ev;->hlZ:Lcom/tencent/mm/ui/tools/er;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/er;->hlY:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ev;->hlZ:Lcom/tencent/mm/ui/tools/er;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/er;->hlY:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ev;->hlZ:Lcom/tencent/mm/ui/tools/er;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ev;->hlZ:Lcom/tencent/mm/ui/tools/er;

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/er;->hlY:Landroid/support/v4/app/FragmentActivity;

    const-string v0, "input_method"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ev;->hlZ:Lcom/tencent/mm/ui/tools/er;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->e(Lcom/tencent/mm/ui/tools/eo;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/z;->e(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_2

    .line 227
    sget v1, Lcom/tencent/mm/i;->arK:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ev;->hlZ:Lcom/tencent/mm/ui/tools/er;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->f(Lcom/tencent/mm/ui/tools/eo;)Landroid/view/MenuItem;

    .line 230
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ev;->hlZ:Lcom/tencent/mm/ui/tools/er;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/mm/ui/tools/eo;->hgH:Lcom/tencent/mm/ui/tools/ActionBarSearchView;

    goto :goto_0
.end method
