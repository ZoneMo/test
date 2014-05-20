.class public final Lcom/tencent/tmassistantsdk/util/QUABuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAdrRelease:Ljava/lang/String;

.field private mBuildNo:Ljava/lang/String;

.field private mChannel:Ljava/lang/String;

.field private mChannelId:Ljava/lang/String;

.field private mDeviceHeight:I

.field private mDeviceWidth:I

.field private mRootStatus:I

.field private mUA:Ljava/lang/String;

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAppSpec()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mVersionName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 108
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mBuildNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/tencent/tmassistantsdk/util/QUABuilder;->getAppSpec()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    const-string v2, "TMASDK_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mChannel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mChannel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    :cond_0
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v2, "&NA/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mAdrRelease:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    iget v0, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mRootStatus:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 84
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    iget v0, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mDeviceWidth:I

    div-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 86
    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    iget v0, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mDeviceHeight:I

    div-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 88
    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v0, "14&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mUA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mChannelId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v0, "NA"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string v0, "V3"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setAdrRelease(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mAdrRelease:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public final setBuildNo(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mBuildNo:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public final setChannel(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mChannel:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public final setChannelId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mChannelId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public final setDeviceHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mDeviceHeight:I

    .line 60
    return-void
.end method

.method public final setDeviceWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mDeviceWidth:I

    .line 56
    return-void
.end method

.method public final setRootStatus(I)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput p1, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mRootStatus:I

    .line 64
    return-void
.end method

.method public final setUA(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mUA:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public final setVersionName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/util/QUABuilder;->mVersionName:Ljava/lang/String;

    .line 36
    return-void
.end method
