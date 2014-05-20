.class final Lcom/tencent/mm/plugin/wallet/pay/ui/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fcG:Lcom/tencent/mm/plugin/wallet/pay/ui/am;

.field final synthetic fcH:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic fcI:Z


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/pay/ui/am;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/ao;->fcG:Lcom/tencent/mm/plugin/wallet/pay/ui/am;

    iput-object p2, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/ao;->fcH:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/ao;->fcI:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/ao;->fcH:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/ao;->fcH:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/ao;->fcG:Lcom/tencent/mm/plugin/wallet/pay/ui/am;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 131
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/ao;->fcI:Z

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/ao;->fcG:Lcom/tencent/mm/plugin/wallet/pay/ui/am;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->dismiss()V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/ao;->fcG:Lcom/tencent/mm/plugin/wallet/pay/ui/am;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcF:Lcom/tencent/mm/plugin/wallet/pay/ui/ar;

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/ao;->fcG:Lcom/tencent/mm/plugin/wallet/pay/ui/am;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcF:Lcom/tencent/mm/plugin/wallet/pay/ui/ar;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/ao;->fcG:Lcom/tencent/mm/plugin/wallet/pay/ui/am;

    iget-object v1, v1, Lcom/tencent/mm/plugin/wallet/pay/ui/am;->fcE:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/wallet/pay/ui/ar;->pJ(Ljava/lang/String;)V

    .line 138
    :cond_2
    return-void
.end method
