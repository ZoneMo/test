.class public final Lcom/tencent/mapapi/map/bq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static UK:Ljava/lang/String;

.field public static UL:Ljava/lang/String;

.field public static VK:Lcom/tencent/mapapi/map/br;

.field static WE:Landroid/graphics/Bitmap;

.field public static XF:Lcom/tencent/mapapi/map/bs;

.field public static a:I

.field public static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const/4 v0, 0x2

    sput v0, Lcom/tencent/mapapi/map/bq;->a:I

    .line 38
    sput-object v1, Lcom/tencent/mapapi/map/bq;->WE:Landroid/graphics/Bitmap;

    .line 45
    sput-object v1, Lcom/tencent/mapapi/map/bq;->UK:Ljava/lang/String;

    .line 46
    sput-object v1, Lcom/tencent/mapapi/map/bq;->d:Ljava/lang/String;

    .line 47
    sput-object v1, Lcom/tencent/mapapi/map/bq;->UL:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/tencent/mapapi/map/br;->XI:Lcom/tencent/mapapi/map/br;

    sput-object v0, Lcom/tencent/mapapi/map/bq;->VK:Lcom/tencent/mapapi/map/br;

    .line 59
    sget-object v0, Lcom/tencent/mapapi/map/bs;->XL:Lcom/tencent/mapapi/map/bs;

    sput-object v0, Lcom/tencent/mapapi/map/bq;->XF:Lcom/tencent/mapapi/map/bs;

    return-void
.end method

.method public static a(DJ)D
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/high16 v6, 0x3ff0

    .line 314
    sub-double v0, p0, v6

    .line 315
    long-to-double v2, p2

    const-wide v4, 0x4063e00000000000L

    div-double/2addr v2, v4

    .line 316
    mul-double/2addr v2, v2

    .line 317
    mul-double/2addr v2, v2

    .line 318
    sub-double v2, v6, v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    .line 319
    return-wide v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 264
    if-nez p0, :cond_0

    .line 266
    const/4 v0, 0x0

    .line 286
    :goto_0
    return-object v0

    .line 268
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 270
    const-string v0, ""

    goto :goto_0

    .line 272
    :cond_1
    const-string v0, ""

    .line 273
    sget v1, Lcom/tencent/mapapi/map/bq;->a:I

    packed-switch v1, :pswitch_data_0

    .line 285
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 276
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_small"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 279
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_middle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 282
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_large"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 95
    const-class v1, Lcom/tencent/mapapi/map/bq;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 111
    :goto_0
    monitor-exit v1

    return-void

    .line 110
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/a/a/b;->na()Lcom/tencent/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/a/a/b;->r(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 305
    const-string v0, "http://apikey.map.soso.com/mkey/index.php/mkey/check?key=%s&output=json&from=%s&pf=%s&suid=%s&ver=%s&nt=%s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/tencent/mapapi/map/bq;->UK:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Android_SDK"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/tencent/mapapi/map/bq;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "1.0.3"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/tencent/mapapi/map/bq;->UL:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 306
    return-object v0
.end method

.method public static final e(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 291
    const/4 v0, 0x0

    .line 294
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 295
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 296
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 132
    if-nez p0, :cond_0

    .line 134
    const-string v0, ""

    .line 142
    :goto_0
    return-object v0

    .line 136
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 137
    if-nez v0, :cond_1

    .line 139
    const-string v0, ""

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 187
    if-nez p0, :cond_0

    .line 189
    const-string v0, ""

    .line 207
    :goto_0
    return-object v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 192
    const/4 v0, 0x0

    .line 194
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 197
    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 200
    const-string v0, "default"

    .line 203
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static p(Landroid/content/Context;)V
    .locals 10
    .parameter

    .prologue
    const/16 v1, 0xa0

    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x1

    const-wide/32 v5, 0x25800

    .line 212
    if-nez p0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 218
    const/4 v0, 0x0

    .line 220
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "densityDpi"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 225
    :goto_1
    if-eqz v0, :cond_5

    .line 227
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v3, v4

    int-to-long v3, v3

    .line 229
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 233
    :goto_2
    const/16 v2, 0x78

    if-gt v0, v2, :cond_1

    .line 236
    sput v7, Lcom/tencent/mapapi/map/bq;->a:I

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_2

    .line 237
    :cond_1
    if-le v0, v1, :cond_4

    .line 238
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_2

    .line 240
    sput v8, Lcom/tencent/mapapi/map/bq;->a:I

    goto :goto_0

    .line 242
    :cond_2
    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    .line 243
    sput v8, Lcom/tencent/mapapi/map/bq;->a:I

    goto :goto_0

    .line 244
    :cond_3
    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    .line 245
    sput v7, Lcom/tencent/mapapi/map/bq;->a:I

    goto :goto_0

    .line 247
    :cond_4
    sput v9, Lcom/tencent/mapapi/map/bq;->a:I

    goto :goto_0

    .line 251
    :cond_5
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 252
    cmp-long v2, v0, v5

    if-lez v2, :cond_6

    .line 253
    sput v8, Lcom/tencent/mapapi/map/bq;->a:I

    goto :goto_0

    .line 254
    :cond_6
    cmp-long v0, v0, v5

    if-gez v0, :cond_7

    .line 255
    sput v7, Lcom/tencent/mapapi/map/bq;->a:I

    goto :goto_0

    .line 257
    :cond_7
    sput v9, Lcom/tencent/mapapi/map/bq;->a:I

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_1

    .line 223
    :catch_3
    move-exception v3

    goto :goto_1
.end method
