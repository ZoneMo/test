.class final Lcom/tencent/mm/plugin/scanner/ui/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic eez:Lcom/tencent/mm/plugin/scanner/ui/au;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/au;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/av;->eez:Lcom/tencent/mm/plugin/scanner/ui/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/av;->eez:Lcom/tencent/mm/plugin/scanner/ui/au;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/au;->eey:Lcom/tencent/mm/plugin/scanner/ui/at;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->bd(Z)V

    .line 131
    return-void
.end method
