.class final Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;
    .locals 10
    .parameter

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 166
    new-instance v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;

    invoke-direct/range {v0 .. v9}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;
    .locals 1
    .parameter

    .prologue
    .line 152
    new-array v0, p1, [Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam$1;->newArray(I)[Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;

    move-result-object v0

    return-object v0
.end method
