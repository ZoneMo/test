.class final Lcom/tencent/mm/ui/c/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic hsn:Lcom/tencent/mm/ui/c/k;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/c/k;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/tencent/mm/ui/c/l;->hsn:Lcom/tencent/mm/ui/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tencent/mm/ui/c/l;->hsn:Lcom/tencent/mm/ui/c/k;

    invoke-static {v0}, Lcom/tencent/mm/ui/c/k;->a(Lcom/tencent/mm/ui/c/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/tencent/mm/ui/c/l;->hsn:Lcom/tencent/mm/ui/c/k;

    iget-object v0, v0, Lcom/tencent/mm/ui/c/k;->hsm:Lcom/tencent/mm/ui/c/h;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/tencent/mm/ui/c/l;->hsn:Lcom/tencent/mm/ui/c/k;

    iget-object v0, v0, Lcom/tencent/mm/ui/c/k;->hsm:Lcom/tencent/mm/ui/c/h;

    invoke-static {v0}, Lcom/tencent/mm/ui/c/h;->a(Lcom/tencent/mm/ui/c/h;)Lcom/tencent/mm/ui/c/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/c/j;->onCancel()V

    .line 193
    iget-object v0, p0, Lcom/tencent/mm/ui/c/l;->hsn:Lcom/tencent/mm/ui/c/k;

    iget-object v0, v0, Lcom/tencent/mm/ui/c/k;->hsm:Lcom/tencent/mm/ui/c/h;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/c/h;->dismiss()V

    .line 196
    :cond_0
    return-void
.end method
