.class public Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public errorCode:I

.field public errorMsg:Ljava/lang/String;

.field public hostPackageName:Ljava/lang/String;

.field public hostVersion:Ljava/lang/String;

.field public param:Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;

.field public state:I

.field public taskId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam$1;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam$1;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->param:Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;

    .line 65
    iput-object p2, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->hostPackageName:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->hostVersion:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->taskId:Ljava/lang/String;

    .line 68
    iput p5, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->state:I

    .line 69
    iput p6, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->errorCode:I

    .line 70
    iput-object p7, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->errorMsg:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->param:Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->param:Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->hostPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->hostPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    :goto_1
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->hostVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->hostVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    :goto_2
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->taskId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->taskId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    :goto_3
    iget v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->errorMsg:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderStateChangeParam;->errorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    :goto_4
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 93
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 105
    :cond_3
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 113
    :cond_4
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4
.end method
