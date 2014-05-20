.class final Lcom/tencent/mm/plugin/safedevice/ui/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic eav:Lcom/tencent/mm/plugin/safedevice/a/a;

.field final synthetic eaw:Lcom/tencent/mm/plugin/safedevice/ui/r;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/safedevice/ui/r;Lcom/tencent/mm/plugin/safedevice/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/tencent/mm/plugin/safedevice/ui/s;->eaw:Lcom/tencent/mm/plugin/safedevice/ui/r;

    iput-object p2, p0, Lcom/tencent/mm/plugin/safedevice/ui/s;->eav:Lcom/tencent/mm/plugin/safedevice/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 139
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/safedevice/ui/s;->eav:Lcom/tencent/mm/plugin/safedevice/a/a;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 140
    iget-object v0, p0, Lcom/tencent/mm/plugin/safedevice/ui/s;->eaw:Lcom/tencent/mm/plugin/safedevice/ui/r;

    iget-object v0, v0, Lcom/tencent/mm/plugin/safedevice/ui/r;->eau:Lcom/tencent/mm/plugin/safedevice/ui/SafeDeviceListPreference;

    invoke-static {v0}, Lcom/tencent/mm/plugin/safedevice/ui/SafeDeviceListPreference;->c(Lcom/tencent/mm/plugin/safedevice/ui/SafeDeviceListPreference;)V

    .line 141
    return-void
.end method
