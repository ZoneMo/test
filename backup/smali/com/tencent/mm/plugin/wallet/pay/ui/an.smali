.class final Lcom/tencent/mm/plugin/wallet/pay/ui/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/plugin/wallet/ui/l;


# instance fields
.field final synthetic fcG:Lcom/tencent/mm/plugin/wallet/pay/ui/am;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/pay/ui/am;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/an;->fcG:Lcom/tencent/mm/plugin/wallet/pay/ui/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aN(Z)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/an;->fcG:Lcom/tencent/mm/plugin/wallet/pay/ui/am;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->a(Lcom/tencent/mm/plugin/wallet/pay/ui/am;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 76
    return-void
.end method
