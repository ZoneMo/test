.class final Lcom/tencent/map/location/x;
.super Landroid/os/Handler;


# instance fields
.field private synthetic UF:Lcom/tencent/map/location/s;


# direct methods
.method public constructor <init>(Lcom/tencent/map/location/s;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/map/location/x;->UF:Lcom/tencent/map/location/s;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/tencent/map/location/x;->UF:Lcom/tencent/map/location/s;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/map/location/q;

    invoke-static {v1, v0}, Lcom/tencent/map/location/s;->a(Lcom/tencent/map/location/s;Lcom/tencent/map/location/q;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/tencent/map/location/x;->UF:Lcom/tencent/map/location/s;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/map/location/m;

    invoke-static {v1, v0}, Lcom/tencent/map/location/s;->a(Lcom/tencent/map/location/s;Lcom/tencent/map/location/m;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/tencent/map/location/x;->UF:Lcom/tencent/map/location/s;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/map/location/z;

    invoke-static {v1, v0}, Lcom/tencent/map/location/s;->a(Lcom/tencent/map/location/s;Lcom/tencent/map/location/z;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/tencent/map/location/x;->UF:Lcom/tencent/map/location/s;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/tencent/map/location/s;->a(Lcom/tencent/map/location/s;I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/tencent/map/location/x;->UF:Lcom/tencent/map/location/s;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/tencent/map/location/s;->b(Lcom/tencent/map/location/s;I)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/tencent/map/location/x;->UF:Lcom/tencent/map/location/s;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-static {v1, v0}, Lcom/tencent/map/location/s;->a(Lcom/tencent/map/location/s;Landroid/location/Location;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/tencent/map/location/x;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->e(Lcom/tencent/map/location/s;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/map/location/x;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->c(Lcom/tencent/map/location/s;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/map/location/x;->UF:Lcom/tencent/map/location/s;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/map/location/s;->a(Lcom/tencent/map/location/s;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/map/location/x;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->f(Lcom/tencent/map/location/s;)Lcom/tencent/map/location/v;

    goto :goto_0

    :sswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/tencent/map/location/x;->UF:Lcom/tencent/map/location/s;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/map/location/s;->b(Lcom/tencent/map/location/s;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/map/location/x;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->g(Lcom/tencent/map/location/s;)Lcom/tencent/map/location/q;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/map/location/x;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->g(Lcom/tencent/map/location/s;)Lcom/tencent/map/location/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/map/location/q;->lZ()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/map/location/x;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->h(Lcom/tencent/map/location/s;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x8 -> :sswitch_8
        0x10 -> :sswitch_7
        0x100 -> :sswitch_6
    .end sparse-switch
.end method
