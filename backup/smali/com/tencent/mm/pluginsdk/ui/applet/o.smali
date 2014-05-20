.class final Lcom/tencent/mm/pluginsdk/ui/applet/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic dXr:Landroid/view/View;

.field final synthetic fnG:Lcom/tencent/mm/ui/base/ce;

.field final synthetic fnI:Lcom/tencent/mm/pluginsdk/ui/applet/r;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/applet/r;Landroid/view/View;Lcom/tencent/mm/ui/base/ce;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/o;->fnI:Lcom/tencent/mm/pluginsdk/ui/applet/r;

    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/o;->dXr:Landroid/view/View;

    iput-object p3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/o;->fnG:Lcom/tencent/mm/ui/base/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 767
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/o;->fnI:Lcom/tencent/mm/pluginsdk/ui/applet/r;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/o;->fnI:Lcom/tencent/mm/pluginsdk/ui/applet/r;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/o;->dXr:Landroid/view/View;

    invoke-static {v2}, Lcom/tencent/mm/pluginsdk/ui/applet/i;->Y(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/o;->dXr:Landroid/view/View;

    invoke-static {v3}, Lcom/tencent/mm/pluginsdk/ui/applet/i;->Z(Landroid/view/View;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/pluginsdk/ui/applet/r;->a(ZLjava/lang/String;I)V

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/o;->fnG:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 771
    return-void
.end method
