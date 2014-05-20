.class final Lcom/tencent/mm/pluginsdk/ui/applet/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic dXr:Landroid/view/View;

.field final synthetic fnF:Lcom/tencent/mm/pluginsdk/ui/applet/r;

.field final synthetic fnG:Lcom/tencent/mm/ui/base/ce;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/applet/r;Landroid/view/View;Lcom/tencent/mm/ui/base/ce;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/j;->fnF:Lcom/tencent/mm/pluginsdk/ui/applet/r;

    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/j;->dXr:Landroid/view/View;

    iput-object p3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/j;->fnG:Lcom/tencent/mm/ui/base/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 647
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/j;->fnF:Lcom/tencent/mm/pluginsdk/ui/applet/r;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/j;->fnF:Lcom/tencent/mm/pluginsdk/ui/applet/r;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/j;->dXr:Landroid/view/View;

    invoke-static {v2}, Lcom/tencent/mm/pluginsdk/ui/applet/i;->Y(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/j;->dXr:Landroid/view/View;

    invoke-static {v3}, Lcom/tencent/mm/pluginsdk/ui/applet/i;->Z(Landroid/view/View;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/pluginsdk/ui/applet/r;->a(ZLjava/lang/String;I)V

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/j;->fnG:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 651
    return-void
.end method
