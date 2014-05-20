.class final Lcom/tencent/mm/pluginsdk/ui/applet/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fnF:Lcom/tencent/mm/pluginsdk/ui/applet/r;

.field final synthetic fnG:Lcom/tencent/mm/ui/base/ce;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/applet/r;Lcom/tencent/mm/ui/base/ce;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/m;->fnF:Lcom/tencent/mm/pluginsdk/ui/applet/r;

    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/m;->fnG:Lcom/tencent/mm/ui/base/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 742
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/m;->fnF:Lcom/tencent/mm/pluginsdk/ui/applet/r;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/m;->fnF:Lcom/tencent/mm/pluginsdk/ui/applet/r;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/r;->a(ZLjava/lang/String;I)V

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/m;->fnG:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 746
    return-void
.end method
