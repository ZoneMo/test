.class public final Loicq/wlogin_sdk/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static synthetic hxj:[I


# instance fields
.field private hxa:Loicq/wlogin_sdk/a/k;

.field private hxb:Loicq/wlogin_sdk/a/l;

.field private hxc:Loicq/wlogin_sdk/a/h;

.field private hxd:Loicq/wlogin_sdk/a/i;

.field private hxe:Loicq/wlogin_sdk/a/j;

.field private hxf:Loicq/wlogin_sdk/a/g;

.field private hxg:I

.field private hxh:I

.field private hxi:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Loicq/wlogin_sdk/a/k;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/k;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    .line 18
    new-instance v0, Loicq/wlogin_sdk/a/l;

    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/a/l;-><init>(Loicq/wlogin_sdk/a/k;)V

    iput-object v0, p0, Loicq/wlogin_sdk/a/d;->hxb:Loicq/wlogin_sdk/a/l;

    .line 19
    new-instance v0, Loicq/wlogin_sdk/a/h;

    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/a/h;-><init>(Loicq/wlogin_sdk/a/k;)V

    iput-object v0, p0, Loicq/wlogin_sdk/a/d;->hxc:Loicq/wlogin_sdk/a/h;

    .line 20
    new-instance v0, Loicq/wlogin_sdk/a/i;

    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/a/i;-><init>(Loicq/wlogin_sdk/a/k;)V

    iput-object v0, p0, Loicq/wlogin_sdk/a/d;->hxd:Loicq/wlogin_sdk/a/i;

    .line 21
    new-instance v0, Loicq/wlogin_sdk/a/j;

    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/a/j;-><init>(Loicq/wlogin_sdk/a/k;)V

    iput-object v0, p0, Loicq/wlogin_sdk/a/d;->hxe:Loicq/wlogin_sdk/a/j;

    .line 22
    iput-object v2, p0, Loicq/wlogin_sdk/a/d;->hxf:Loicq/wlogin_sdk/a/g;

    .line 23
    iput-object v2, p0, Loicq/wlogin_sdk/a/d;->mContext:Landroid/content/Context;

    .line 25
    const v0, 0x10400

    iput v0, p0, Loicq/wlogin_sdk/a/d;->hxg:I

    .line 26
    const/16 v0, 0x7c

    iput v0, p0, Loicq/wlogin_sdk/a/d;->hxh:I

    .line 27
    const/16 v0, 0x74

    iput v0, p0, Loicq/wlogin_sdk/a/d;->hxi:I

    .line 64
    iput-object p1, p0, Loicq/wlogin_sdk/a/d;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    invoke-virtual {v0, p1, p2}, Loicq/wlogin_sdk/a/k;->z(Landroid/content/Context;I)V

    .line 66
    invoke-direct {p0}, Loicq/wlogin_sdk/a/d;->aQq()I

    .line 67
    return-void
.end method

.method private aQq()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 406
    monitor-enter p0

    .line 408
    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->cs(Landroid/content/Context;)[B

    move-result-object v0

    .line 409
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_5

    .line 412
    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->cl(Landroid/content/Context;)[B

    move-result-object v0

    .line 413
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_4

    .line 414
    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "%4;7t>;28<fc.5*6"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 415
    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    const/4 v2, 0x0

    iput v2, v1, Loicq/wlogin_sdk/a/k;->hyb:I

    .line 421
    :goto_0
    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Loicq/wlogin_sdk/c/f;->b(Landroid/content/Context;[B)V

    .line 423
    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    const/4 v2, 0x1

    iput v2, v1, Loicq/wlogin_sdk/a/k;->hya:I

    .line 424
    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    const/4 v2, 0x1

    iput v2, v1, Loicq/wlogin_sdk/a/k;->hyc:I

    .line 432
    :goto_1
    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    array-length v2, v0

    new-array v2, v2, [B

    iput-object v2, v1, Loicq/wlogin_sdk/a/k;->hxQ:[B

    const/4 v1, 0x0

    iget-object v2, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v2, v2, Loicq/wlogin_sdk/a/k;->hxQ:[B

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x23

    aput-byte v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v2, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v2, v2, Loicq/wlogin_sdk/a/k;->hxG:Ljava/security/SecureRandom;

    invoke-static {v1}, Loicq/wlogin_sdk/c/f;->cL([B)[B

    move-result-object v1

    iput-object v1, v0, Loicq/wlogin_sdk/a/k;->hxH:[B

    .line 433
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v0, v0, Loicq/wlogin_sdk/a/k;->hxQ:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Loicq/wlogin_sdk/a/k;->hxR:[B

    .line 436
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->mContext:Landroid/content/Context;

    invoke-static {v1}, Loicq/wlogin_sdk/c/f;->cm(Landroid/content/Context;)[B

    move-result-object v1

    iput-object v1, v0, Loicq/wlogin_sdk/a/k;->hxS:[B

    .line 438
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->co(Landroid/content/Context;)I

    move-result v0

    .line 439
    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v2, p0, Loicq/wlogin_sdk/a/d;->mContext:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/c/f;->cn(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Loicq/wlogin_sdk/a/k;->hxT:I

    .line 440
    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget v1, v1, Loicq/wlogin_sdk/a/k;->hxT:I

    if-eq v0, v1, :cond_2

    .line 441
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->cp(Landroid/content/Context;)V

    .line 442
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->mContext:Landroid/content/Context;

    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget v1, v1, Loicq/wlogin_sdk/a/k;->hxT:I

    invoke-static {v0, v1}, Loicq/wlogin_sdk/c/f;->A(Landroid/content/Context;I)V

    .line 444
    :cond_2
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->mContext:Landroid/content/Context;

    invoke-static {v1}, Loicq/wlogin_sdk/c/f;->cq(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Loicq/wlogin_sdk/a/k;->hxV:[B

    .line 447
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->mContext:Landroid/content/Context;

    invoke-static {v1}, Loicq/wlogin_sdk/c/f;->cr(Landroid/content/Context;)[B

    move-result-object v1

    iput-object v1, v0, Loicq/wlogin_sdk/a/k;->hyd:[B

    .line 448
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->mContext:Landroid/content/Context;

    invoke-static {v1}, Loicq/wlogin_sdk/c/f;->ct(Landroid/content/Context;)[B

    move-result-object v1

    iput-object v1, v0, Loicq/wlogin_sdk/a/k;->hxU:[B

    .line 449
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v3, v3, Loicq/wlogin_sdk/a/k;->hxU:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v2}, Loicq/wlogin_sdk/c/f;->au(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Loicq/wlogin_sdk/a/k;->hxX:[B

    .line 450
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v2, v2, Loicq/wlogin_sdk/a/k;->hxU:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Loicq/wlogin_sdk/c/f;->aQY()[B

    move-result-object v1

    iput-object v1, v0, Loicq/wlogin_sdk/a/k;->hxY:[B

    .line 451
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 452
    if-nez v0, :cond_6

    .line 453
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, v0, Loicq/wlogin_sdk/a/k;->hxZ:[B

    .line 457
    :goto_2
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 458
    if-nez v0, :cond_3

    .line 459
    const-string v0, ""

    .line 460
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WtloginHelper init ok: android version:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " release time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Loicq/wlogin_sdk/c/f;->aRa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    .line 406
    monitor-exit p0

    .line 464
    return v5

    .line 417
    :cond_4
    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    const/4 v2, 0x1

    iput v2, v1, Loicq/wlogin_sdk/a/k;->hyb:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 426
    :cond_5
    :try_start_1
    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    const/4 v2, 0x1

    iput v2, v1, Loicq/wlogin_sdk/a/k;->hyb:I

    .line 429
    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    const/4 v2, 0x0

    iput v2, v1, Loicq/wlogin_sdk/a/k;->hya:I

    .line 430
    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    const/4 v2, 0x0

    iput v2, v1, Loicq/wlogin_sdk/a/k;->hyc:I

    goto/16 :goto_1

    .line 455
    :cond_6
    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, v1, Loicq/wlogin_sdk/a/k;->hxZ:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private static synthetic aQr()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Loicq/wlogin_sdk/a/d;->hxj:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Loicq/wlogin_sdk/a/e;->values()[Loicq/wlogin_sdk/a/e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Loicq/wlogin_sdk/a/e;->hxm:Loicq/wlogin_sdk/a/e;

    invoke-virtual {v1}, Loicq/wlogin_sdk/a/e;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Loicq/wlogin_sdk/a/e;->hxl:Loicq/wlogin_sdk/a/e;

    invoke-virtual {v1}, Loicq/wlogin_sdk/a/e;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Loicq/wlogin_sdk/a/e;->hxk:Loicq/wlogin_sdk/a/e;

    invoke-virtual {v1}, Loicq/wlogin_sdk/a/e;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Loicq/wlogin_sdk/a/d;->hxj:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(JLoicq/wlogin_sdk/a/e;Ljava/lang/String;)[B
    .locals 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wtlogin login with GetStWithPasswd:user:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appid:522017402 dwSigMap:8256 ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    .line 85
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_0

    .line 86
    const/4 v2, 0x0

    const/16 v3, 0x10

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 90
    :cond_0
    monitor-enter p0

    .line 93
    :try_start_0
    invoke-static {}, Loicq/wlogin_sdk/a/d;->aQr()[I

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Loicq/wlogin_sdk/a/e;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 127
    monitor-exit p0

    const/4 v2, 0x0

    .line 166
    :goto_0
    return-object v2

    .line 95
    :pswitch_0
    if-eqz p4, :cond_1

    :try_start_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 96
    :cond_1
    const-string v2, "USER_WITH_PWD userPasswd null"

    invoke-static {v2}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    .line 97
    monitor-exit p0

    const/4 v2, 0x0

    goto :goto_0

    .line 99
    :cond_2
    invoke-static/range {p4 .. p4}, Loicq/wlogin_sdk/c/d;->yf(Ljava/lang/String;)[B

    move-result-object v6

    .line 100
    const/4 v2, 0x0

    .line 131
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/a/d;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/c/f;->cn(Landroid/content/Context;)I

    move-result v4

    iput v4, v3, Loicq/wlogin_sdk/a/k;->hxT:I

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/a/d;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/c/f;->cq(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, v3, Loicq/wlogin_sdk/a/k;->hxV:[B

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    move-wide/from16 v0, p1

    iput-wide v0, v3, Loicq/wlogin_sdk/a/k;->hwZ:J

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    const-wide/32 v4, 0x1f1d5a7a

    iput-wide v4, v3, Loicq/wlogin_sdk/a/k;->hxM:J

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    const/16 v4, 0x2040

    iput v4, v3, Loicq/wlogin_sdk/a/k;->hxN:I

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    invoke-virtual {v3}, Loicq/wlogin_sdk/a/k;->aQv()V

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/d;->hxb:Loicq/wlogin_sdk/a/l;

    move-object/from16 v0, p0

    iput-object v3, v0, Loicq/wlogin_sdk/a/d;->hxf:Loicq/wlogin_sdk/a/g;

    .line 140
    if-eqz v2, :cond_9

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/a/d;->hxb:Loicq/wlogin_sdk/a/l;

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v5, v3, Loicq/wlogin_sdk/a/k;->hyg:[B

    .line 144
    move-object/from16 v0, p0

    iget v7, v0, Loicq/wlogin_sdk/a/d;->hxh:I

    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/a/d;->hxg:I

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v9, v3, Loicq/wlogin_sdk/a/k;->hyd:[B

    move-wide/from16 v3, p1

    .line 141
    invoke-virtual/range {v2 .. v9}, Loicq/wlogin_sdk/a/l;->a(J[B[BII[B)[B

    move-result-object v2

    .line 92
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wtlogin login with GetStWithPasswd:user:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appid:522017402 dwSigMap:8256 end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 164
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :pswitch_1
    if-eqz p4, :cond_3

    :try_start_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 105
    :cond_3
    const-string v2, "USER_WITH_MD5 userPasswd null"

    invoke-static {v2}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    .line 106
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 109
    :cond_4
    :try_start_3
    const-string v2, "ISO-8859-1"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 110
    const/4 v3, 0x0

    move-object v6, v2

    move v2, v3

    .line 111
    goto/16 :goto_1

    .line 113
    :catch_0
    move-exception v2

    :try_start_4
    monitor-exit p0

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 118
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Loicq/wlogin_sdk/a/k;->cs(J)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->hyo:[B

    if-eqz v3, :cond_5

    iget-object v3, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->hyo:[B

    array-length v3, v3

    if-gtz v3, :cond_7

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "userAccount:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appid:522017402 GetA1ByAccount return: null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 119
    :goto_3
    if-eqz v6, :cond_6

    array-length v2, v6

    const/16 v3, 0x10

    if-ge v2, v3, :cond_8

    .line 120
    :cond_6
    const-string v2, "USER_WITH_A1 tmp_pwd null"

    invoke-static {v2}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    .line 121
    monitor-exit p0

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 118
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "userAccount:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appid:522017402 GetA1ByAccount return: not null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    iget-object v2, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->hyo:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v6, v2

    goto :goto_3

    .line 123
    :cond_8
    const/4 v2, 0x1

    .line 124
    goto/16 :goto_1

    .line 150
    :cond_9
    const/4 v2, 0x4

    new-array v11, v2, [B

    .line 151
    const/4 v2, 0x0

    invoke-static {}, Loicq/wlogin_sdk/a/k;->aQu()J

    move-result-wide v3

    invoke-static {v11, v2, v3, v4}, Loicq/wlogin_sdk/c/f;->b([BIJ)V

    .line 152
    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/a/d;->hxb:Loicq/wlogin_sdk/a/l;

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v10, v2, Loicq/wlogin_sdk/a/k;->hyg:[B

    .line 155
    move-object/from16 v0, p0

    iget v13, v0, Loicq/wlogin_sdk/a/d;->hxh:I

    move-object/from16 v0, p0

    iget v14, v0, Loicq/wlogin_sdk/a/d;->hxg:I

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v15, v2, Loicq/wlogin_sdk/a/k;->hyd:[B

    move-wide/from16 v8, p1

    move-object v12, v6

    .line 152
    invoke-virtual/range {v7 .. v15}, Loicq/wlogin_sdk/a/l;->a(J[B[B[BII[B)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    goto/16 :goto_2

    .line 92
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final c(J[B)[B
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 220
    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    .line 221
    :cond_0
    const/4 v0, 0x0

    .line 235
    :goto_0
    return-object v0

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CheckPicture ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    .line 226
    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->hxd:Loicq/wlogin_sdk/a/i;

    iput-object v0, p0, Loicq/wlogin_sdk/a/d;->hxf:Loicq/wlogin_sdk/a/g;

    .line 229
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->hxd:Loicq/wlogin_sdk/a/i;

    invoke-virtual {v0, p3}, Loicq/wlogin_sdk/a/i;->cC([B)[B

    move-result-object v0

    .line 226
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "user:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CheckPicture end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final co(J)[B
    .locals 3
    .parameter

    .prologue
    .line 272
    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-object v0, v0, Loicq/wlogin_sdk/a/k;->hxL:Loicq/wlogin_sdk/b/g;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/g;->aQz()[B

    move-result-object v1

    .line 273
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "user:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " GetPicture data len:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    .line 279
    return-object v1

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 277
    :cond_0
    array-length v0, v1

    goto :goto_0
.end method

.method public final cp(J)Loicq/wlogin_sdk/a/b;
    .locals 2
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    invoke-virtual {v0, p1, p2}, Loicq/wlogin_sdk/a/k;->cs(J)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v1

    .line 315
    if-nez v1, :cond_0

    .line 316
    const/4 v0, 0x0

    .line 322
    :goto_0
    return-object v0

    .line 319
    :cond_0
    new-instance v0, Loicq/wlogin_sdk/a/b;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/b;-><init>()V

    .line 320
    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/a/b;->a(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    goto :goto_0
.end method

.method public final cq(J)V
    .locals 2
    .parameter

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ClearUserSigInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/a/k;->c(Ljava/lang/Long;)V

    .line 332
    return-void
.end method

.method public final cz([B)I
    .locals 4
    .parameter

    .prologue
    .line 293
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->hxf:Loicq/wlogin_sdk/a/g;

    if-nez v0, :cond_1

    .line 294
    :cond_0
    const/16 v0, -0x3f9

    .line 307
    :goto_0
    return v0

    .line 297
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-wide v1, v1, Loicq/wlogin_sdk/a/k;->hwZ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ResolveSvrData ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Loicq/wlogin_sdk/a/d;->hxf:Loicq/wlogin_sdk/a/g;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Loicq/wlogin_sdk/a/g;->o([BI)I

    move-result v0

    .line 301
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 302
    iget-object v1, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-wide v1, v1, Loicq/wlogin_sdk/a/k;->hwZ:J

    invoke-virtual {p0, v1, v2}, Loicq/wlogin_sdk/a/d;->cq(J)V

    .line 305
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "user:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Loicq/wlogin_sdk/a/d;->hxa:Loicq/wlogin_sdk/a/k;

    iget-wide v2, v2, Loicq/wlogin_sdk/a/k;->hwZ:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ResolveSvrData ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    goto :goto_0
.end method
