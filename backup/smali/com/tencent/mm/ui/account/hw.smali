.class final Lcom/tencent/mm/ui/account/hw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic gsV:Lcom/tencent/mm/modelsimple/ad;

.field final synthetic gsW:Lcom/tencent/mm/ui/account/hv;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/hv;Lcom/tencent/mm/modelsimple/ad;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tencent/mm/ui/account/hw;->gsW:Lcom/tencent/mm/ui/account/hv;

    iput-object p2, p0, Lcom/tencent/mm/ui/account/hw;->gsV:Lcom/tencent/mm/modelsimple/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 101
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/hw;->gsV:Lcom/tencent/mm/modelsimple/ad;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 102
    return-void
.end method
