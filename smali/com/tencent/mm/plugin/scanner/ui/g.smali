.class final Lcom/tencent/mm/plugin/scanner/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

.field final synthetic ecx:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/g;->ecu:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    iput-object p2, p0, Lcom/tencent/mm/plugin/scanner/ui/g;->ecx:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/g;->ecx:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/g;->ecx:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1070
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
