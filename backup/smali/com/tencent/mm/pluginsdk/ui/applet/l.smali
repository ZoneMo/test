.class final Lcom/tencent/mm/pluginsdk/ui/applet/l;
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
    .line 725
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/l;->fnF:Lcom/tencent/mm/pluginsdk/ui/applet/r;

    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/l;->dXr:Landroid/view/View;

    iput-object p3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/l;->fnG:Lcom/tencent/mm/ui/base/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 729
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/l;->fnF:Lcom/tencent/mm/pluginsdk/ui/applet/r;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/l;->fnF:Lcom/tencent/mm/pluginsdk/ui/applet/r;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/l;->dXr:Landroid/view/View;

    invoke-static {v2}, Lcom/tencent/mm/pluginsdk/ui/applet/i;->Y(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/l;->dXr:Landroid/view/View;

    invoke-static {v3}, Lcom/tencent/mm/pluginsdk/ui/applet/i;->Z(Landroid/view/View;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/pluginsdk/ui/applet/r;->a(ZLjava/lang/String;I)V

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/l;->fnG:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 733
    return-void
.end method
