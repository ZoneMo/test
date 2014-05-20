.class final Lcom/tencent/mm/ui/tools/ew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hlX:Lcom/tencent/mm/ui/tools/eo;

.field final synthetic hlY:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/eo;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/ew;->hlX:Lcom/tencent/mm/ui/tools/eo;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/ew;->hlY:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 266
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ew;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->e(Lcom/tencent/mm/ui/tools/eo;)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ew;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->b(Lcom/tencent/mm/ui/tools/eo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on post expand search menu, but item is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ew;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->b(Lcom/tencent/mm/ui/tools/eo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "try to expand action view"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ew;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->e(Lcom/tencent/mm/ui/tools/eo;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/z;->f(Landroid/view/MenuItem;)Z

    .line 272
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ew;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->e(Lcom/tencent/mm/ui/tools/eo;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/z;->e(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ew;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/eo;->a(Lcom/tencent/mm/ui/tools/eo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    sget v1, Lcom/tencent/mm/i;->arK:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 277
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ew;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/eo;->d(Lcom/tencent/mm/ui/tools/eo;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/tools/ex;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/tools/ex;-><init>(Lcom/tencent/mm/ui/tools/ew;Landroid/view/View;)V

    const-wide/16 v3, 0x80

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
