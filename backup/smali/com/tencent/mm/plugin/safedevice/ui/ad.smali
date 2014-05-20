.class final Lcom/tencent/mm/plugin/safedevice/ui/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic eaC:Lcom/tencent/mm/n/x;

.field final synthetic eaK:Lcom/tencent/mm/plugin/safedevice/ui/ac;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/safedevice/ui/ac;Lcom/tencent/mm/n/x;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/tencent/mm/plugin/safedevice/ui/ad;->eaK:Lcom/tencent/mm/plugin/safedevice/ui/ac;

    iput-object p2, p0, Lcom/tencent/mm/plugin/safedevice/ui/ad;->eaC:Lcom/tencent/mm/n/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 172
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/safedevice/ui/ad;->eaC:Lcom/tencent/mm/n/x;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 173
    return-void
.end method
