.class public final Loicq/wlogin_sdk/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static hzA:I

.field public static hzB:I

.field public static hzC:I

.field public static hzD:I

.field public static hzE:I

.field public static hzF:I

.field public static hzG:I

.field public static hzH:I

.field public static hzI:I

.field public static hzJ:I

.field public static hzK:I

.field public static hzL:Loicq/wlogin_sdk/c/c;

.field public static hzM:Z

.field public static hzN:I

.field public static hzt:I

.field public static hzu:I

.field public static hzv:I

.field public static hzw:I

.field public static hzx:I

.field public static hzy:I

.field public static hzz:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    const v0, 0xffff

    sput v0, Loicq/wlogin_sdk/c/f;->hzt:I

    .line 54
    const/16 v0, 0x80

    sput v0, Loicq/wlogin_sdk/c/f;->hzu:I

    .line 56
    sput v1, Loicq/wlogin_sdk/c/f;->hzv:I

    .line 57
    sput v2, Loicq/wlogin_sdk/c/f;->hzw:I

    .line 58
    const/4 v0, 0x2

    sput v0, Loicq/wlogin_sdk/c/f;->hzx:I

    .line 59
    const/4 v0, 0x3

    sput v0, Loicq/wlogin_sdk/c/f;->hzy:I

    .line 60
    sput v3, Loicq/wlogin_sdk/c/f;->hzz:I

    .line 61
    const/4 v0, 0x5

    sput v0, Loicq/wlogin_sdk/c/f;->hzA:I

    .line 62
    const/4 v0, 0x6

    sput v0, Loicq/wlogin_sdk/c/f;->hzB:I

    .line 63
    const/4 v0, 0x7

    sput v0, Loicq/wlogin_sdk/c/f;->hzC:I

    .line 64
    const/16 v0, 0x8

    sput v0, Loicq/wlogin_sdk/c/f;->hzD:I

    .line 65
    const/16 v0, 0x9

    sput v0, Loicq/wlogin_sdk/c/f;->hzE:I

    .line 66
    const/16 v0, 0xa

    sput v0, Loicq/wlogin_sdk/c/f;->hzF:I

    .line 67
    const/16 v0, 0xb

    sput v0, Loicq/wlogin_sdk/c/f;->hzG:I

    .line 68
    const/16 v0, 0xc

    sput v0, Loicq/wlogin_sdk/c/f;->hzH:I

    .line 69
    const/16 v0, 0xd

    sput v0, Loicq/wlogin_sdk/c/f;->hzI:I

    .line 70
    const/16 v0, 0xe

    sput v0, Loicq/wlogin_sdk/c/f;->hzJ:I

    .line 73
    sput v2, Loicq/wlogin_sdk/c/f;->hzK:I

    .line 77
    const/4 v0, 0x0

    sput-object v0, Loicq/wlogin_sdk/c/f;->hzL:Loicq/wlogin_sdk/c/c;

    .line 78
    sput-boolean v1, Loicq/wlogin_sdk/c/f;->hzM:Z

    .line 80
    sput v3, Loicq/wlogin_sdk/c/f;->hzN:I

    return-void
.end method

.method public static A(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 399
    .line 400
    const-string v0, "WLOGIN_SERVER_INFO"

    const/4 v1, 0x0

    .line 399
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 401
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 402
    const-string v1, "network_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 405
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 406
    return-void
.end method

.method public static a(Landroid/content/Context;[B)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 443
    invoke-static {p0}, Loicq/wlogin_sdk/c/f;->cr(Landroid/content/Context;)[B

    move-result-object v0

    .line 444
    if-eqz v0, :cond_0

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 446
    :cond_0
    const-string v0, "WLOGIN_DEVICE_INFO"

    const/4 v1, 0x0

    .line 445
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 447
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 449
    const-string v1, "ksid"

    invoke-static {p1}, Loicq/wlogin_sdk/c/f;->cM([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 452
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 454
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    .line 627
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 628
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 629
    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 630
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 631
    invoke-virtual {v0}, Ljava/io/StringWriter;->flush()V

    .line 632
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    const-string v1, "exception:"

    invoke-static {v1, v0}, Loicq/wlogin_sdk/c/f;->bn(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method public static a([BIJ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    add-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 112
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x8

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 113
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x10

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 114
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x18

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 115
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x20

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 116
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x28

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 117
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x30

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 118
    add-int/lit8 v0, p1, 0x0

    const/16 v1, 0x38

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 119
    return-void
.end method

.method public static aQT()[B
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/String;

    const-string v1, "android"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static aQU()[B
    .locals 1

    .prologue
    .line 91
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static aQV()I
    .locals 4

    .prologue
    .line 158
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x41dfffffffc00000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static aQW()[B
    .locals 1

    .prologue
    .line 166
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v0

    .line 167
    return-object v0
.end method

.method public static aQX()J
    .locals 2

    .prologue
    .line 194
    invoke-static {}, Loicq/wlogin_sdk/a/k;->aQu()J

    move-result-wide v0

    return-wide v0
.end method

.method public static aQY()[B
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method private static aQZ()Ljava/lang/String;
    .locals 3

    .prologue
    .line 544
    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 554
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static aRa()Ljava/lang/String;
    .locals 2

    .prologue
    .line 699
    new-instance v0, Ljava/lang/String;

    const-string v1, "2013/09/23 17:30"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static au(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 528
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 530
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-array v0, v2, [B

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;[B)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 485
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 487
    const-string v0, "WLOGIN_DEVICE_INFO"

    const/4 v1, 0x0

    .line 486
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 488
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 489
    const-string v1, "imei"

    invoke-static {p1}, Loicq/wlogin_sdk/c/f;->cM([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 491
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 493
    :cond_0
    return-void
.end method

.method public static b([BIJ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    add-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 123
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x8

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 124
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x10

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 125
    add-int/lit8 v0, p1, 0x0

    const/16 v1, 0x18

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 126
    return-void
.end method

.method public static bm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 589
    :try_start_0
    sget v0, Loicq/wlogin_sdk/c/f;->hzK:I

    if-lt v0, v1, :cond_0

    .line 591
    sget-object v0, Loicq/wlogin_sdk/c/f;->hzL:Loicq/wlogin_sdk/c/c;

    if-eqz v0, :cond_1

    .line 592
    sget-object v0, Loicq/wlogin_sdk/c/f;->hzL:Loicq/wlogin_sdk/c/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1}, Loicq/wlogin_sdk/c/c;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    sget-boolean v0, Loicq/wlogin_sdk/c/f;->hzM:Z

    if-eqz v0, :cond_0

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wlogin_sdk"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Loicq/wlogin_sdk/c/f;->aQZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static bn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 604
    :try_start_0
    sget v0, Loicq/wlogin_sdk/c/f;->hzK:I

    if-ltz v0, :cond_0

    .line 605
    sget-object v0, Loicq/wlogin_sdk/c/f;->hzL:Loicq/wlogin_sdk/c/c;

    if-eqz v0, :cond_1

    .line 606
    sget-object v0, Loicq/wlogin_sdk/c/f;->hzL:Loicq/wlogin_sdk/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Loicq/wlogin_sdk/c/c;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    sget-boolean v0, Loicq/wlogin_sdk/c/f;->hzM:Z

    if-eqz v0, :cond_0

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wlogin_sdk"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Loicq/wlogin_sdk/c/f;->aQZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c(B)B
    .locals 1
    .parameter

    .prologue
    .line 247
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 248
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    .line 254
    :goto_0
    return v0

    .line 249
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 250
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 251
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 252
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 254
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cL([B)[B
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 171
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v0

    .line 172
    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 174
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    array-length v0, v0

    array-length v2, p0

    invoke-static {p0, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    invoke-static {v1}, Loicq/wlogin_sdk/c/d;->cK([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static cM([B)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 214
    if-nez p0, :cond_1

    .line 215
    const-string v1, ""

    .line 222
    :cond_0
    return-object v1

    .line 217
    :cond_1
    const-string v1, ""

    .line 218
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v1, p0, v0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static cN([B)J
    .locals 2
    .parameter

    .prologue
    .line 241
    if-nez p0, :cond_0

    .line 242
    const-wide/16 v0, 0x0

    .line 243
    :goto_0
    return-wide v0

    :cond_0
    array-length v0, p0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static cj(Landroid/content/Context;)[B
    .locals 1
    .parameter

    .prologue
    .line 288
    .line 291
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 290
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static ck(Landroid/content/Context;)[B
    .locals 1
    .parameter

    .prologue
    .line 305
    .line 307
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 306
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 308
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static cl(Landroid/content/Context;)[B
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 317
    .line 319
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 318
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 320
    if-eqz v0, :cond_4

    .line 321
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 325
    :goto_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 324
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 326
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 332
    :cond_0
    const-string v0, ""

    .line 333
    if-eqz v1, :cond_1

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    :cond_1
    if-eqz v2, :cond_2

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 338
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 340
    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/c/d;->cK([B)[B

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_0
.end method

.method public static cm(Landroid/content/Context;)[B
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 355
    .line 356
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 355
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 357
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 358
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    .line 360
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    new-array v0, v3, [B

    goto :goto_0
.end method

.method public static cn(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 374
    .line 375
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 374
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 376
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 382
    :goto_0
    if-nez v0, :cond_0

    move v0, v1

    .line 387
    :goto_1
    return v0

    .line 379
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    .line 384
    :cond_0
    if-ne v0, v1, :cond_1

    .line 385
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    move v0, v2

    .line 387
    goto :goto_1
.end method

.method public static co(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 393
    .line 394
    const-string v0, "WLOGIN_SERVER_INFO"

    .line 393
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 395
    const-string v1, "network_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static cp(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 409
    .line 410
    const-string v0, "WLOGIN_NET_RETRY_TYPE"

    .line 409
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 411
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 412
    const-string v1, "type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 414
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 415
    return-void
.end method

.method public static cq(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 426
    .line 427
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 426
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 428
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 430
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 431
    if-eqz v0, :cond_1

    .line 439
    :goto_0
    return-object v0

    .line 435
    :cond_0
    const-string v0, "wifi"

    goto :goto_0

    :catch_0
    move-exception v0

    .line 439
    :cond_1
    const-string v0, "wifi"

    goto :goto_0
.end method

.method public static cr(Landroid/content/Context;)[B
    .locals 5
    .parameter

    .prologue
    .line 457
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 460
    :try_start_0
    const-string v0, "WLOGIN_DEVICE_INFO"

    const/4 v2, 0x0

    .line 459
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 463
    const-string v2, "ksid"

    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->yg(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 476
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 477
    :cond_0
    const-string v1, "get_ksid:null"

    invoke-static {v1}, Loicq/wlogin_sdk/c/f;->tf(Ljava/lang/String;)V

    .line 481
    :goto_1
    return-object v0

    .line 464
    :catch_0
    move-exception v0

    .line 467
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 468
    new-instance v3, Ljava/io/PrintWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 469
    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 470
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 471
    invoke-virtual {v2}, Ljava/io/StringWriter;->flush()V

    .line 472
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    const-string v2, "exception"

    invoke-static {v2, v0}, Loicq/wlogin_sdk/c/f;->bn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 479
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get_ksid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->cM([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loicq/wlogin_sdk/c/f;->tf(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static cs(Landroid/content/Context;)[B
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 496
    new-array v1, v5, [B

    .line 499
    :try_start_0
    const-string v0, "WLOGIN_DEVICE_INFO"

    const/4 v2, 0x0

    .line 498
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 501
    const-string v2, "imei"

    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->yg(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 514
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 515
    :cond_0
    new-array v0, v5, [B

    .line 519
    :goto_1
    return-object v0

    .line 502
    :catch_0
    move-exception v0

    .line 505
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 506
    new-instance v3, Ljava/io/PrintWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 507
    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 508
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 509
    invoke-virtual {v2}, Ljava/io/StringWriter;->flush()V

    .line 510
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    const-string v2, "exception"

    invoke-static {v2, v0}, Loicq/wlogin_sdk/c/f;->bn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 517
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get_imei:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->cM([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loicq/wlogin_sdk/c/f;->tf(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static ct(Landroid/content/Context;)[B
    .locals 1
    .parameter

    .prologue
    .line 523
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static h([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    add-int/lit8 v0, p1, 0x0

    shr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 96
    return-void
.end method

.method public static i([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 100
    add-int/lit8 v0, p1, 0x0

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 101
    return-void
.end method

.method public static j([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    add-int/lit8 v0, p1, 0x3

    shr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 105
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 106
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 107
    add-int/lit8 v0, p1, 0x0

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 108
    return-void
.end method

.method public static tf(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 574
    :try_start_0
    sget v0, Loicq/wlogin_sdk/c/f;->hzK:I

    if-lt v0, v1, :cond_0

    .line 576
    sget-object v0, Loicq/wlogin_sdk/c/f;->hzL:Loicq/wlogin_sdk/c/c;

    if-eqz v0, :cond_1

    .line 577
    sget-object v0, Loicq/wlogin_sdk/c/f;->hzL:Loicq/wlogin_sdk/c/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Loicq/wlogin_sdk/c/c;->f(ILjava/lang/String;)V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    sget-boolean v0, Loicq/wlogin_sdk/c/f;->hzM:Z

    if-eqz v0, :cond_0

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wlogin_sdk"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Loicq/wlogin_sdk/c/f;->aQZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static v([BI)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 129
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static w([BI)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 133
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static x([BI)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 137
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    .line 138
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    .line 137
    add-int/2addr v0, v1

    .line 139
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    .line 137
    add-int/2addr v0, v1

    .line 139
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    .line 137
    add-int/2addr v0, v1

    return v0
.end method

.method private static yg(Ljava/lang/String;)[B
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 258
    if-nez p0, :cond_0

    .line 259
    new-array v0, v0, [B

    .line 266
    :goto_0
    return-object v0

    .line 261
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 262
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_1

    move-object v0, v1

    .line 266
    goto :goto_0

    .line 263
    :cond_1
    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Loicq/wlogin_sdk/c/f;->c(B)B

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    .line 264
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    .line 263
    invoke-static {v3}, Loicq/wlogin_sdk/c/f;->c(B)B

    move-result v3

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static yh(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 560
    :try_start_0
    sget v0, Loicq/wlogin_sdk/c/f;->hzK:I

    if-lez v0, :cond_0

    .line 561
    sget-object v0, Loicq/wlogin_sdk/c/f;->hzL:Loicq/wlogin_sdk/c/c;

    if-eqz v0, :cond_1

    .line 562
    sget-object v0, Loicq/wlogin_sdk/c/f;->hzL:Loicq/wlogin_sdk/c/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Loicq/wlogin_sdk/c/c;->f(ILjava/lang/String;)V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    sget-boolean v0, Loicq/wlogin_sdk/c/f;->hzM:Z

    if-eqz v0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wlogin_sdk"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Loicq/wlogin_sdk/c/f;->aQZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
