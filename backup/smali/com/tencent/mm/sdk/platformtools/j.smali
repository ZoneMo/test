.class public final Lcom/tencent/mm/sdk/platformtools/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static bKo:I

.field public static bKq:Ljava/lang/String;

.field public static bKs:I

.field public static gcm:I

.field public static gcn:Ljava/lang/String;

.field public static gco:Z

.field public static gcp:Z

.field public static gcq:Z

.field public static gcr:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    sput v2, Lcom/tencent/mm/sdk/platformtools/j;->bKo:I

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/sdk/platformtools/j;->bKq:Ljava/lang/String;

    .line 27
    sput v2, Lcom/tencent/mm/sdk/platformtools/j;->bKs:I

    .line 28
    sput v2, Lcom/tencent/mm/sdk/platformtools/j;->gcm:I

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market://details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/sdk/platformtools/j;->gcn:Ljava/lang/String;

    .line 30
    sput-boolean v2, Lcom/tencent/mm/sdk/platformtools/j;->gco:Z

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/sdk/platformtools/j;->gcp:Z

    .line 32
    sput-boolean v2, Lcom/tencent/mm/sdk/platformtools/j;->gcq:Z

    .line 37
    sput v2, Lcom/tencent/mm/sdk/platformtools/j;->gcr:I

    return-void
.end method

.method public static a(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v1, v0, 0xff

    .line 121
    if-nez v1, :cond_2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v2, p1, 0x18

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_0
    const-string v2, "MicroMsg.SDK.ChannelUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "minminor "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const v1, 0xfffffff

    and-int/2addr v1, p1

    .line 131
    if-eqz p0, :cond_0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 134
    if-eqz v2, :cond_0

    .line 135
    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 136
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(build."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/tencent/mm/sdk/platformtools/j;->gcm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    const-string v1, "MicroMsg.SDK.ChannelUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "full version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    return-object v0

    .line 125
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v2, p1, 0x18

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static bi(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "channel.ini"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/u;->sy(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 44
    const-string v1, "CHANNEL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tencent/mm/sdk/platformtools/j;->bKo:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.SDK.ChannelUtil"

    const-string v1, "setup channel id from channel.ini failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static bj(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "profile.ini"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/u;->sy(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 58
    const-string v0, "PROFILE_DEVICE_TYPE"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    sput-object v0, Lcom/tencent/mm/sdk/platformtools/j;->bKq:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/sdk/platformtools/j;->bKq:Ljava/lang/String;

    .line 63
    :cond_0
    const-string v0, "UPDATE_MODE"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/j;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tencent/mm/sdk/platformtools/j;->bKs:I

    .line 64
    const-string v0, "BUILD_REVISION"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/j;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tencent/mm/sdk/platformtools/j;->gcm:I

    .line 65
    const-string v0, "GPRS_ALERT"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/j;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/tencent/mm/sdk/platformtools/j;->gcq:Z

    .line 66
    const-string v0, "AUTO_ADD_ACOUNT"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/j;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tencent/mm/sdk/platformtools/j;->gcr:I

    .line 68
    const-string v0, "MicroMsg.SDK.ChannelUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "profileDeviceType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/mm/sdk/platformtools/j;->bKq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "MicroMsg.SDK.ChannelUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateMode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/tencent/mm/sdk/platformtools/j;->bKs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "MicroMsg.SDK.ChannelUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "shouldShowGprsAlert="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/tencent/mm/sdk/platformtools/j;->gcq:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "MicroMsg.SDK.ChannelUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "autoAddAccount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/tencent/mm/sdk/platformtools/j;->gcr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "MARKET_URL"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    sput-object v0, Lcom/tencent/mm/sdk/platformtools/j;->gcn:Ljava/lang/String;

    .line 77
    :cond_1
    const-string v0, "MicroMsg.SDK.ChannelUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "marketURL="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mm/sdk/platformtools/j;->gcn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.SDK.ChannelUtil"

    const-string v1, "setup profile from profile.ini failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static o(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    sget-boolean v0, Lcom/tencent/mm/sdk/platformtools/j;->gco:Z

    invoke-static {p0, p1, v0}, Lcom/tencent/mm/sdk/platformtools/j;->a(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseBoolean(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 97
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 101
    :goto_0
    return v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v1, "MicroMsg.SDK.ChannelUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 87
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 91
    :goto_0
    return v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v1, "MicroMsg.SDK.ChannelUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    goto :goto_0
.end method
