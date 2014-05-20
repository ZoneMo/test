.class final Lcom/tencent/mm/plugin/scanner/ui/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic eeC:Lcom/tencent/mm/modelsimple/x;

.field final synthetic eey:Lcom/tencent/mm/plugin/scanner/ui/at;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/at;Lcom/tencent/mm/modelsimple/x;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/bc;->eey:Lcom/tencent/mm/plugin/scanner/ui/at;

    iput-object p2, p0, Lcom/tencent/mm/plugin/scanner/ui/bc;->eeC:Lcom/tencent/mm/modelsimple/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 537
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/bc;->eeC:Lcom/tencent/mm/modelsimple/x;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 538
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bc;->eey:Lcom/tencent/mm/plugin/scanner/ui/at;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bc;->eey:Lcom/tencent/mm/plugin/scanner/ui/at;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->a(JZ)V

    .line 540
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bc;->eey:Lcom/tencent/mm/plugin/scanner/ui/at;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/at;->d(Lcom/tencent/mm/plugin/scanner/ui/at;)Z

    .line 541
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/bc;->eey:Lcom/tencent/mm/plugin/scanner/ui/at;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/at;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0, v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->bd(Z)V

    .line 543
    :cond_0
    return-void
.end method
