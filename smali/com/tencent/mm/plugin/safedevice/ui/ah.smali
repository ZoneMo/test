.class final Lcom/tencent/mm/plugin/safedevice/ui/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic eaL:Lcom/tencent/mm/n/x;

.field final synthetic eaM:Lcom/tencent/mm/plugin/safedevice/ui/ag;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/safedevice/ui/ag;Lcom/tencent/mm/n/x;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/tencent/mm/plugin/safedevice/ui/ah;->eaM:Lcom/tencent/mm/plugin/safedevice/ui/ag;

    iput-object p2, p0, Lcom/tencent/mm/plugin/safedevice/ui/ah;->eaL:Lcom/tencent/mm/n/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 241
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/safedevice/ui/ah;->eaL:Lcom/tencent/mm/n/x;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 242
    return-void
.end method
