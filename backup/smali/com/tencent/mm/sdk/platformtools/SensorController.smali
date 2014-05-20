.class public Lcom/tencent/mm/sdk/platformtools/SensorController;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static geT:F

.field private static geW:F

.field public static gfc:Z


# instance fields
.field private context:Landroid/content/Context;

.field private geU:Landroid/hardware/SensorManager;

.field private geV:F

.field private geX:Lcom/tencent/mm/sdk/platformtools/bz;

.field private geY:Landroid/hardware/Sensor;

.field private final geZ:Z

.field private gfa:Z

.field private gfb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/high16 v0, 0x4f80

    sput v0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geT:F

    .line 26
    const/high16 v0, 0x3f00

    sput v0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geW:F

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/sdk/platformtools/SensorController;->gfc:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    iput-boolean v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->gfa:Z

    .line 31
    iput-boolean v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->gfb:Z

    .line 37
    if-nez p1, :cond_0

    .line 38
    iput-boolean v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geZ:Z

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->context:Landroid/content/Context;

    .line 42
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geU:Landroid/hardware/SensorManager;

    .line 43
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geU:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geY:Landroid/hardware/Sensor;

    .line 44
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geY:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geZ:Z

    .line 45
    sget v0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geW:F

    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geV:F

    goto :goto_0

    :cond_1
    move v0, v1

    .line 44
    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/platformtools/bz;)V
    .locals 3
    .parameter

    .prologue
    .line 49
    const-string v0, "MicroMsg.SensorController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sensor callback set, isRegistered:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->gfb:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-boolean v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->gfb:Z

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->context:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geU:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geY:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->gfb:Z

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geX:Lcom/tencent/mm/sdk/platformtools/bz;

    .line 59
    return-void
.end method

.method public final azI()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "MicroMsg.SensorController"

    const-string v1, "sensor callback removed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geU:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geY:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 69
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geU:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->gfb:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geX:Lcom/tencent/mm/sdk/platformtools/bz;

    .line 72
    return-void

    .line 66
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.SensorController"

    const-string v1, "sensor receiver has already unregistered"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final azJ()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->gfb:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    if-nez p2, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 157
    if-ne v0, v3, :cond_2

    .line 158
    iput-boolean v3, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->gfa:Z

    .line 160
    :cond_2
    if-nez v0, :cond_0

    .line 161
    iput-boolean v2, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->gfa:Z

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->gfa:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    .line 98
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    sget-boolean v1, Lcom/tencent/mm/sdk/platformtools/SensorController;->gfc:Z

    if-eqz v1, :cond_3

    .line 105
    const-string v1, "MicroMsg.SensorController"

    const-string v2, "isON: newValue:%f"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    const-wide/16 v1, 0x0

    float-to-double v3, v0

    cmpl-double v0, v1, v3

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geX:Lcom/tencent/mm/sdk/platformtools/bz;

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "MicroMsg.SensorController"

    const-string v1, "sensor near-far event false"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geX:Lcom/tencent/mm/sdk/platformtools/bz;

    invoke-interface {v0, v5}, Lcom/tencent/mm/sdk/platformtools/bz;->af(Z)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geX:Lcom/tencent/mm/sdk/platformtools/bz;

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "MicroMsg.SensorController"

    const-string v1, "sensor near-far event true"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geX:Lcom/tencent/mm/sdk/platformtools/bz;

    invoke-interface {v0, v6}, Lcom/tencent/mm/sdk/platformtools/bz;->af(Z)V

    goto :goto_0

    .line 122
    :cond_3
    sget v1, Lcom/tencent/mm/sdk/platformtools/SensorController;->geT:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    .line 124
    sput v0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geT:F

    const/high16 v1, 0x3f00

    add-float/2addr v1, v0

    sput v1, Lcom/tencent/mm/sdk/platformtools/SensorController;->geW:F

    .line 127
    :cond_4
    const-string v1, "MicroMsg.SensorController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isON: minValue:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/tencent/mm/sdk/platformtools/SensorController;->geT:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geV:F

    sget v2, Lcom/tencent/mm/sdk/platformtools/SensorController;->geW:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_6

    sget v1, Lcom/tencent/mm/sdk/platformtools/SensorController;->geW:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    .line 131
    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geX:Lcom/tencent/mm/sdk/platformtools/bz;

    if-eqz v1, :cond_5

    .line 132
    const-string v1, "MicroMsg.SensorController"

    const-string v2, "sensor event false"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geX:Lcom/tencent/mm/sdk/platformtools/bz;

    invoke-interface {v1, v5}, Lcom/tencent/mm/sdk/platformtools/bz;->af(Z)V

    .line 141
    :cond_5
    :goto_1
    iput v0, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geV:F

    goto/16 :goto_0

    .line 135
    :cond_6
    iget v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geV:F

    sget v2, Lcom/tencent/mm/sdk/platformtools/SensorController;->geW:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    sget v1, Lcom/tencent/mm/sdk/platformtools/SensorController;->geW:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    .line 136
    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geX:Lcom/tencent/mm/sdk/platformtools/bz;

    if-eqz v1, :cond_5

    .line 137
    const-string v1, "MicroMsg.SensorController"

    const-string v2, "sensor event true"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/SensorController;->geX:Lcom/tencent/mm/sdk/platformtools/bz;

    invoke-interface {v1, v6}, Lcom/tencent/mm/sdk/platformtools/bz;->af(Z)V

    goto :goto_1

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
