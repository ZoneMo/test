.class final Lcom/tencent/mm/ui/tools/gw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic hny:Lcom/tencent/mm/ui/tools/gv;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/gv;)V
    .locals 0
    .parameter

    .prologue
    .line 2038
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/gw;->hny:Lcom/tencent/mm/ui/tools/gv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gw;->hny:Lcom/tencent/mm/ui/tools/gv;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/gv;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->z(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gw;->hny:Lcom/tencent/mm/ui/tools/gv;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/gv;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->z(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2043
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gw;->hny:Lcom/tencent/mm/ui/tools/gv;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/gv;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->z(Lcom/tencent/mm/ui/tools/WebViewUI;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 2045
    :cond_0
    return-void
.end method
