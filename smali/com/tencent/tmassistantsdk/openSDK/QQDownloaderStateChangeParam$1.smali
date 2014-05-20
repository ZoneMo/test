.class final Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;
    .locals 8
    .parameter

    .prologue
    .line 126
    const-class v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 133
    new-instance v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;

    invoke-direct/range {v0 .. v7}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;-><init>(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;
    .locals 1
    .parameter

    .prologue
    .line 121
    new-array v0, p1, [Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam$1;->newArray(I)[Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;

    move-result-object v0

    return-object v0
.end method
