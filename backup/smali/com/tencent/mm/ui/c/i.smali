.class final Lcom/tencent/mm/ui/c/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic hsm:Lcom/tencent/mm/ui/c/h;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/c/h;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tencent/mm/ui/c/i;->hsm:Lcom/tencent/mm/ui/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tencent/mm/ui/c/i;->hsm:Lcom/tencent/mm/ui/c/h;

    invoke-static {v0}, Lcom/tencent/mm/ui/c/h;->a(Lcom/tencent/mm/ui/c/h;)Lcom/tencent/mm/ui/c/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/c/j;->onCancel()V

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/ui/c/i;->hsm:Lcom/tencent/mm/ui/c/h;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/c/h;->dismiss()V

    .line 97
    return-void
.end method
