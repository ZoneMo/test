.class public Lcom/tencent/tmassistantsdk/util/QUASetting;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APP_VERSION:Ljava/lang/String; = "100"

.field private static final BUILD_NO:Ljava/lang/String; = "100"

.field public static final KEY_ROOT:Ljava/lang/String; = "root"

.field private static final UN_DEFINED:Ljava/lang/String; = "NA"

.field private static mChannelId:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "NA"

    sput-object v0, Lcom/tencent/tmassistantsdk/util/QUASetting;->mChannelId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/util/QUASetting;->mContext:Landroid/content/Context;

    .line 30
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/util/QUASetting;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private filter(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 5
    .parameter

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "NA"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v0, v1

    .line 147
    :goto_0
    return-object v0

    .line 141
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 142
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 143
    aget-char v3, v2, v0

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x26

    if-eq v3, v4, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x7c

    if-eq v3, v4, :cond_1

    aget-char v3, v2, v0

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_1

    .line 144
    aget-char v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 142
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 147
    goto :goto_0
.end method

.method private getAndroidVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 117
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    const-string v1, "NA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    :goto_0
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getBuildNo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    const-string v0, "100"

    const-string v1, "BuildNo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "0000"

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "100"

    goto :goto_0
.end method

.method private getDeviceHeight()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/util/QUASetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private getDeviceWidth()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/util/QUASetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private getRootStatus()Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;->UNKNOWN:Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

    return-object v0
.end method

.method private getUA()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 104
    invoke-direct {p0, v1}, Lcom/tencent/tmassistantsdk/util/QUASetting;->filter(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 105
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 109
    invoke-direct {p0, v1}, Lcom/tencent/tmassistantsdk/util/QUASetting;->filter(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildQUA()Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    const-string v0, ""

    .line 39
    new-instance v1, Lcom/tencent/tmassistantsdk/util/QUABuilder;

    invoke-direct {v1}, Lcom/tencent/tmassistantsdk/util/QUABuilder;-><init>()V

    .line 42
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/QUASetting;->getBuildNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tmassistantsdk/util/QUABuilder;->setBuildNo(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/util/QUABuilder;->setChannel(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/tencent/tmassistantsdk/util/QUASetting;->mChannelId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/util/QUABuilder;->setChannelId(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/tencent/tmassistantsdk/util/QUASetting;->getAndroidVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/util/QUABuilder;->setAdrRelease(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/tencent/tmassistantsdk/util/QUASetting;->getDeviceHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/util/QUABuilder;->setDeviceHeight(I)V

    .line 57
    invoke-direct {p0}, Lcom/tencent/tmassistantsdk/util/QUASetting;->getDeviceWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/util/QUABuilder;->setDeviceWidth(I)V

    .line 60
    invoke-direct {p0}, Lcom/tencent/tmassistantsdk/util/QUASetting;->getRootStatus()Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;->ordinal()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/util/QUABuilder;->setRootStatus(I)V

    .line 63
    invoke-direct {p0}, Lcom/tencent/tmassistantsdk/util/QUASetting;->getUA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/util/QUABuilder;->setUA(Ljava/lang/String;)V

    .line 66
    const-string v0, "100"

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/util/QUABuilder;->setVersionName(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Lcom/tencent/tmassistantsdk/util/QUABuilder;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
