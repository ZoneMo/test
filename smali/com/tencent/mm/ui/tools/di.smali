.class final Lcom/tencent/mm/ui/tools/di;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic hlo:Landroid/view/View$OnCreateContextMenuListener;

.field final synthetic hlp:Lcom/tencent/mm/ui/tools/dg;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/dg;Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/di;->hlp:Lcom/tencent/mm/ui/tools/dg;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/di;->hlo:Landroid/view/View$OnCreateContextMenuListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 83
    const-string v0, "MicroMsg.MMSubMenuHelper"

    const-string v1, "registerForContextMenu normal view long click"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/di;->hlp:Lcom/tencent/mm/ui/tools/dg;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/dg;->a(Lcom/tencent/mm/ui/tools/dg;)Lcom/tencent/mm/ui/base/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/bx;->clear()V

    .line 85
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/di;->hlo:Landroid/view/View$OnCreateContextMenuListener;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/di;->hlp:Lcom/tencent/mm/ui/tools/dg;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/dg;->a(Lcom/tencent/mm/ui/tools/dg;)Lcom/tencent/mm/ui/base/bx;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 86
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/di;->hlp:Lcom/tencent/mm/ui/tools/dg;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/dg;->aNy()Lcom/tencent/mm/ui/base/ar;

    .line 87
    const/4 v0, 0x0

    return v0
.end method
