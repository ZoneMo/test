.class final Lcom/tencent/mm/plugin/scanner/ui/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic cPJ:Lcom/tencent/mm/modelsimple/aj;

.field final synthetic edO:Lcom/tencent/mm/plugin/scanner/ui/ai;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/ai;Lcom/tencent/mm/modelsimple/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/ak;->edO:Lcom/tencent/mm/plugin/scanner/ui/ai;

    iput-object p2, p0, Lcom/tencent/mm/plugin/scanner/ui/ak;->cPJ:Lcom/tencent/mm/modelsimple/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 244
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ak;->cPJ:Lcom/tencent/mm/modelsimple/aj;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 245
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ak;->edO:Lcom/tencent/mm/plugin/scanner/ui/ai;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->bd(Z)V

    .line 246
    return-void
.end method
