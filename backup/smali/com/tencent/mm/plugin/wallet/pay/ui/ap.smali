.class final Lcom/tencent/mm/plugin/wallet/pay/ui/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fcG:Lcom/tencent/mm/plugin/wallet/pay/ui/am;

.field final synthetic fcJ:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/pay/ui/am;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/ap;->fcG:Lcom/tencent/mm/plugin/wallet/pay/ui/am;

    iput-object p2, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/ap;->fcJ:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/ap;->fcJ:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/ap;->fcJ:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/ap;->fcG:Lcom/tencent/mm/plugin/wallet/pay/ui/am;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/ap;->fcG:Lcom/tencent/mm/plugin/wallet/pay/ui/am;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->cancel()V

    .line 155
    return-void
.end method
