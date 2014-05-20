.class public Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI$ScreenOnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private ecy:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI$ScreenOnOffReceiver;->ecy:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    .line 101
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI$ScreenOnOffReceiver;->ecy:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    .line 102
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 106
    if-nez p2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI$ScreenOnOffReceiver;->ecy:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 116
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "ScreenOnOffReceiver ACTION_SCREEN_ON"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "ScreenOnOffReceiver ACTION_SCREEN_OFF"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI$ScreenOnOffReceiver;->ecy:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->a(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V

    .line 122
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI$ScreenOnOffReceiver;->ecy:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->VX()V

    goto :goto_0
.end method
