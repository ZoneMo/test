.class public Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public SNGAppId:Ljava/lang/String;

.field public channelId:Ljava/lang/String;

.field public taskApkId:Ljava/lang/String;

.field public taskAppId:Ljava/lang/String;

.field public taskPackageName:Ljava/lang/String;

.field public taskVersion:I

.field public uin:Ljava/lang/String;

.field public uinType:Ljava/lang/String;

.field public via:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam$1;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam$1;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->SNGAppId:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskAppId:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskApkId:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskVersion:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->via:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskPackageName:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->uin:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->uinType:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->channelId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->SNGAppId:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskAppId:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskApkId:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskVersion:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->via:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskPackageName:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->uin:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->uinType:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->channelId:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->SNGAppId:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskAppId:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskApkId:Ljava/lang/String;

    .line 82
    iput p4, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskVersion:I

    .line 83
    iput-object p5, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->via:Ljava/lang/String;

    .line 84
    iput-object p6, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskPackageName:Ljava/lang/String;

    .line 85
    iput-object p7, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->uin:Ljava/lang/String;

    .line 86
    iput-object p8, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->uinType:Ljava/lang/String;

    .line 87
    iput-object p9, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->channelId:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->SNGAppId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->SNGAppId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskAppId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskAppId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskApkId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskApkId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    :goto_2
    iget v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->via:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->via:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    :goto_3
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskPackageName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 124
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->taskPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    :goto_4
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->uin:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 130
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->uin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    :goto_5
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->uinType:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 136
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->uinType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    :goto_6
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 142
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;->channelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    :goto_7
    return-void

    .line 100
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 120
    :cond_3
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 126
    :cond_4
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .line 132
    :cond_5
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .line 138
    :cond_6
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_6

    .line 144
    :cond_7
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_7
.end method
