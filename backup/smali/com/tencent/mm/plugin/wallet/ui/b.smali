.class final Lcom/tencent/mm/plugin/wallet/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic fdW:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)V
    .locals 0
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/ui/b;->fdW:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 889
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/ui/b;->fdW:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->l(Lcom/tencent/mm/plugin/wallet/ui/EditHintView;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->dismiss()V

    .line 890
    return-void
.end method
