.class final Lcom/tencent/mm/ui/tools/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dXr:Landroid/view/View;

.field final synthetic hma:Lcom/tencent/mm/ui/tools/ew;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/ew;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/ex;->hma:Lcom/tencent/mm/ui/tools/ew;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/ex;->dXr:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ex;->hma:Lcom/tencent/mm/ui/tools/ew;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/ew;->hlY:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 282
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ex;->dXr:Landroid/view/View;

    sget v2, Lcom/tencent/mm/i;->arK:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 283
    return-void
.end method
