.class public abstract Lcom/tencent/mm/network/w;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.tencent.mm.network.INetworkEvent_AIDL"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/mm/network/w;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static h(Landroid/os/IBinder;)Lcom/tencent/mm/network/v;
    .locals 2
    .parameter

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.tencent.mm.network.INetworkEvent_AIDL"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tencent/mm/network/v;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/tencent/mm/network/v;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/tencent/mm/network/x;

    invoke-direct {v0, p0}, Lcom/tencent/mm/network/x;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "com.tencent.mm.network.INetworkEvent_AIDL"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.tencent.mm.network.INetworkEvent_AIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/tencent/mm/network/w;->EP()I

    move-result v0

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    :sswitch_2
    const-string v2, "com.tencent.mm.network.INetworkEvent_AIDL"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/network/ah;->j(Landroid/os/IBinder;)Lcom/tencent/mm/network/ag;

    move-result-object v2

    .line 58
    invoke-virtual {p0, v2}, Lcom/tencent/mm/network/w;->c(Lcom/tencent/mm/network/ag;)Z

    move-result v2

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    :sswitch_3
    const-string v2, "com.tencent.mm.network.INetworkEvent_AIDL"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/network/ah;->j(Landroid/os/IBinder;)Lcom/tencent/mm/network/ag;

    move-result-object v2

    .line 68
    invoke-virtual {p0, v2}, Lcom/tencent/mm/network/w;->d(Lcom/tencent/mm/network/ag;)Z

    move-result v2

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    :sswitch_4
    const-string v0, "com.tencent.mm.network.INetworkEvent_AIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/tencent/mm/network/w;->EQ()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    :sswitch_5
    const-string v0, "com.tencent.mm.network.INetworkEvent_AIDL"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/tencent/mm/network/w;->ER()J

    move-result-wide v2

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
