.class public Lcom/tencent/tmassistantsdk/util/GlobalUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final NET_TYPE_WIFI:I = 0x4

.field private static final SharedPreferencesName:Ljava/lang/String; = "TMAssistantSDKSharedPreference"

.field private static mInstance:Lcom/tencent/tmassistantsdk/util/GlobalUtil;

.field private static mMemUUID:I

.field private static mPhoneTerminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

.field private static mQUA:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    sput-object v1, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mInstance:Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    .line 45
    const-string v0, ""

    sput-object v0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mQUA:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mMemUUID:I

    .line 139
    sput-object v1, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mPhoneTerminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static String2List(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter

    .prologue
    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 261
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 262
    aget-object v3, v2, v0

    .line 263
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 264
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    return-object v1
.end method

.method public static assistantErrorCode2SDKErrorCode(I)I
    .locals 1
    .parameter

    .prologue
    const/16 v0, 0x25c

    .line 415
    sparse-switch p0, :sswitch_data_0

    .line 469
    :goto_0
    :sswitch_0
    return v0

    .line 418
    :sswitch_1
    const/4 v0, 0x0

    .line 419
    goto :goto_0

    .line 424
    :sswitch_2
    const/16 v0, 0x2c5

    .line 425
    goto :goto_0

    .line 427
    :sswitch_3
    const/16 v0, 0x2c4

    .line 428
    goto :goto_0

    .line 430
    :sswitch_4
    const/16 v0, 0x2c6

    .line 431
    goto :goto_0

    .line 433
    :sswitch_5
    const/16 v0, 0x2bf

    .line 434
    goto :goto_0

    .line 436
    :sswitch_6
    const/4 v0, 0x1

    .line 437
    goto :goto_0

    .line 439
    :sswitch_7
    const/16 v0, 0x2c7

    .line 440
    goto :goto_0

    .line 442
    :sswitch_8
    const/16 v0, 0x2bc

    .line 443
    goto :goto_0

    .line 445
    :sswitch_9
    const/16 v0, 0x2c8

    .line 446
    goto :goto_0

    .line 448
    :sswitch_a
    const/16 v0, 0x259

    .line 449
    goto :goto_0

    .line 454
    :sswitch_b
    const/16 v0, 0x25a

    .line 455
    goto :goto_0

    .line 460
    :sswitch_c
    const/16 v0, 0x2c9

    .line 461
    goto :goto_0

    .line 463
    :sswitch_d
    const/16 v0, 0x2bd

    .line 464
    goto :goto_0

    .line 415
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_0
        -0x1c -> :sswitch_d
        -0x1b -> :sswitch_c
        -0x1a -> :sswitch_0
        -0x19 -> :sswitch_b
        -0x18 -> :sswitch_0
        -0x17 -> :sswitch_a
        -0x16 -> :sswitch_9
        -0x15 -> :sswitch_8
        -0x10 -> :sswitch_7
        -0xf -> :sswitch_6
        -0xd -> :sswitch_5
        -0xc -> :sswitch_4
        -0xb -> :sswitch_3
        -0x1 -> :sswitch_2
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public static assistantState2SDKState(I)I
    .locals 1
    .parameter

    .prologue
    .line 381
    packed-switch p0, :pswitch_data_0

    .line 402
    :pswitch_0
    const/4 v0, 0x0

    .line 405
    :goto_0
    return v0

    .line 384
    :pswitch_1
    const/4 v0, 0x2

    .line 385
    goto :goto_0

    .line 387
    :pswitch_2
    const/4 v0, 0x1

    .line 388
    goto :goto_0

    .line 390
    :pswitch_3
    const/4 v0, 0x3

    .line 391
    goto :goto_0

    .line 393
    :pswitch_4
    const/4 v0, 0x4

    .line 394
    goto :goto_0

    .line 396
    :pswitch_5
    const/4 v0, 0x5

    .line 397
    goto :goto_0

    .line 399
    :pswitch_6
    const/4 v0, 0x6

    .line 400
    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static calcMD5AsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 221
    const-string v0, ""

    .line 222
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 223
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 226
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 227
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 228
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 229
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 231
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 232
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 233
    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 237
    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static getAppPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 99
    if-eqz p0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 111
    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 115
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 116
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 118
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/tmassistantsdk/util/GlobalUtil;
    .locals 2

    .prologue
    .line 56
    const-class v1, Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mInstance:Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mInstance:Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    .line 59
    :cond_0
    sget-object v0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mInstance:Lcom/tencent/tmassistantsdk/util/GlobalUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getMemUUID()I
    .locals 3

    .prologue
    .line 249
    const-class v1, Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mMemUUID:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mMemUUID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isWap()B
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateFilePathAuthorized(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 353
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 355
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 356
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 358
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "chmod 777 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "chmod 777 "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod 777 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod 777"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public canReportValue()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 292
    invoke-static {}, Lcom/tencent/tmassistantsdk/downloadservice/DownloadHelper;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mContext:Landroid/content/Context;

    const-string v2, "TMAssistantSDKSharedPreference"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 295
    if-eqz v1, :cond_1

    .line 296
    const-string v2, "TMAssistantSDKNetType"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    .line 298
    :goto_0
    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 300
    :cond_0
    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method public getAndroidIdInPhone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 195
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 200
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 205
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 84
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 90
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getPhoneGuid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mContext:Landroid/content/Context;

    const-string v1, "TMAssistantSDKSharedPreference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    const-string v1, "TMAssistantSDKPhoneGUID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public declared-synchronized getPhoneTerminal()Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;
    .locals 4

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mPhoneTerminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getAndroidIdInPhone()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getPhoneGuid()Ljava/lang/String;

    move-result-object v1

    .line 145
    const-class v2, Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    :try_start_1
    new-instance v3, Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    invoke-direct {v3}, Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;-><init>()V

    .line 147
    sput-object v3, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mPhoneTerminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    iput-object v0, v3, Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;->androidId:Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mPhoneTerminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;->androidIdSdCard:Ljava/lang/String;

    .line 149
    sget-object v0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mPhoneTerminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getImei()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;->imei:Ljava/lang/String;

    .line 150
    sget-object v0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mPhoneTerminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getImsi()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;->imsi:Ljava/lang/String;

    .line 151
    sget-object v0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mPhoneTerminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;

    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;->macAdress:Ljava/lang/String;

    .line 152
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :cond_0
    :try_start_2
    sget-object v0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mPhoneTerminal:Lcom/tencent/tmassistantsdk/protocol/jce/Terminal;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 152
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getQQDownloaderAPILevel()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 311
    const-string v2, "com.tencent.android.qqdownloader"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 312
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 313
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.tencent.android.qqdownloader.sdk.apilevel"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 319
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getQQDownloaderVersionCode()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 330
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 333
    if-eqz v1, :cond_0

    .line 335
    :try_start_0
    const-string v2, "com.tencent.android.qqdownloader"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 336
    if-nez v1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v0

    .line 339
    :cond_1
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getQUA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mQUA:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Lcom/tencent/tmassistantsdk/util/QUASetting;

    invoke-direct {v0, p1}, Lcom/tencent/tmassistantsdk/util/QUASetting;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/util/QUASetting;->buildQUA()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mQUA:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setNetTypeValue(B)V
    .locals 3
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mContext:Landroid/content/Context;

    const-string v1, "TMAssistantSDKSharedPreference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_0

    .line 279
    const-string v1, "TMAssistantSDKNetType"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    .line 281
    if-eq v1, p1, :cond_0

    .line 282
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TMAssistantSDKNetType"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 285
    :cond_0
    return-void
.end method

.method public setPhoneGuid(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->mContext:Landroid/content/Context;

    const-string v1, "TMAssistantSDKSharedPreference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TMAssistantSDKPhoneGUID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    :cond_0
    return-void
.end method
