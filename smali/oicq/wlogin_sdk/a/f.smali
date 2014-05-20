.class public final Loicq/wlogin_sdk/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field hxo:Landroid/content/Context;

.field hxp:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/a/f;->hxp:Ljava/util/TreeMap;

    .line 38
    iput-object p1, p0, Loicq/wlogin_sdk/a/f;->hxo:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;[B)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x0

    const/16 v8, -0x3fe

    .line 446
    .line 451
    :try_start_0
    new-instance v10, Loicq/wlogin_sdk/a/a;

    invoke-direct {v10, p0, p1}, Loicq/wlogin_sdk/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :try_start_1
    invoke-virtual {v10}, Loicq/wlogin_sdk/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v0

    .line 468
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (ID INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BLOB);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 478
    const/4 v1, 0x1

    :try_start_3
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "ID"

    aput-object v3, v2, v1

    .line 479
    const-string v3, "ID=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 488
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 489
    if-nez v2, :cond_0

    .line 492
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insert into "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (ID, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") values (?,?);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 493
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [B

    aput-object v5, v3, v4

    .line 494
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_3

    .line 505
    :cond_0
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " =? where ID=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 506
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 507
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_4

    .line 515
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 516
    invoke-virtual {v10}, Loicq/wlogin_sdk/a/a;->close()V

    move v0, v9

    .line 517
    :goto_0
    return v0

    .line 459
    :catch_0
    move-exception v0

    :goto_1
    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->a(Ljava/lang/Exception;)V

    .line 460
    if-eqz v1, :cond_1

    .line 461
    invoke-virtual {v1}, Loicq/wlogin_sdk/a/a;->close()V

    :cond_1
    move v0, v8

    .line 463
    goto :goto_0

    .line 471
    :catch_1
    move-exception v0

    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->a(Ljava/lang/Exception;)V

    .line 472
    invoke-virtual {v10}, Loicq/wlogin_sdk/a/a;->close()V

    move v0, v8

    .line 473
    goto :goto_0

    .line 481
    :catch_2
    move-exception v0

    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->a(Ljava/lang/Exception;)V

    .line 482
    invoke-virtual {v10}, Loicq/wlogin_sdk/a/a;->close()V

    move v0, v8

    .line 486
    goto :goto_0

    .line 496
    :catch_3
    move-exception v0

    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->a(Ljava/lang/Exception;)V

    .line 497
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 498
    invoke-virtual {v10}, Loicq/wlogin_sdk/a/a;->close()V

    move v0, v8

    .line 499
    goto :goto_0

    .line 509
    :catch_4
    move-exception v0

    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->a(Ljava/lang/Exception;)V

    .line 510
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 511
    invoke-virtual {v10}, Loicq/wlogin_sdk/a/a;->close()V

    move v0, v8

    .line 512
    goto :goto_0

    .line 459
    :catch_5
    move-exception v0

    move-object v1, v10

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/util/TreeMap;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 264
    monitor-enter p0

    const/4 v0, 0x0

    .line 265
    :try_start_0
    const-string v1, "tk_file"

    if-ne p2, v1, :cond_0

    .line 266
    invoke-direct {p0, p1, p2}, Loicq/wlogin_sdk/a/f;->b(Ljava/util/TreeMap;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 269
    :cond_0
    monitor-exit p0

    return v0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static as(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 306
    .line 307
    const/4 v1, 0x0

    .line 310
    invoke-static {p0, p1}, Loicq/wlogin_sdk/a/f;->at(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    .line 311
    if-eqz v2, :cond_8

    .line 315
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Loicq/wlogin_sdk/a/k;->hxR:[B

    .line 316
    const-string v4, "DESede"

    .line 315
    invoke-direct {v0, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 318
    const-string v3, "DESede"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 320
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 322
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 323
    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-direct {v4, v0, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 324
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 325
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    if-eqz v0, :cond_7

    .line 327
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 441
    :cond_0
    :goto_0
    return-object v0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    :goto_1
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 332
    new-instance v4, Ljava/io/PrintWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 333
    invoke-virtual {v0, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 334
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 335
    invoke-virtual {v3}, Ljava/io/StringWriter;->flush()V

    .line 336
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    const-string v3, "exception"

    invoke-static {v3, v0}, Loicq/wlogin_sdk/c/f;->bn(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :goto_2
    :try_start_2
    invoke-static {p0}, Loicq/wlogin_sdk/c/f;->cl(Landroid/content/Context;)[B

    move-result-object v0

    .line 343
    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    .line 346
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "DESede"

    invoke-direct {v3, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 348
    const-string v0, "DESede"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 350
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 352
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 353
    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-direct {v4, v3, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 354
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 355
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 356
    if-eqz v0, :cond_1

    .line 357
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    :cond_1
    :goto_3
    move-object v1, v0

    .line 367
    :cond_2
    :try_start_4
    invoke-static {p0}, Loicq/wlogin_sdk/c/f;->ck(Landroid/content/Context;)[B

    move-result-object v0

    .line 368
    if-eqz v0, :cond_4

    array-length v3, v0

    if-lez v3, :cond_4

    .line 371
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 372
    invoke-static {v0}, Loicq/wlogin_sdk/c/d;->cK([B)[B

    move-result-object v0

    const-string v4, "DESede"

    .line 371
    invoke-direct {v3, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 374
    const-string v0, "DESede"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 376
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 378
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 379
    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-direct {v4, v3, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 380
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 381
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 382
    if-eqz v0, :cond_3

    .line 383
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    :cond_3
    :goto_4
    move-object v1, v0

    .line 393
    :cond_4
    :try_start_6
    invoke-static {p0}, Loicq/wlogin_sdk/c/f;->cj(Landroid/content/Context;)[B

    move-result-object v0

    .line 394
    if-eqz v0, :cond_6

    array-length v3, v0

    if-lez v3, :cond_6

    .line 397
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 398
    invoke-static {v0}, Loicq/wlogin_sdk/c/d;->cK([B)[B

    move-result-object v0

    const-string v4, "DESede"

    .line 397
    invoke-direct {v3, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 400
    const-string v0, "DESede"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 402
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 404
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 405
    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-direct {v4, v3, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 406
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 407
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 408
    if-eqz v0, :cond_5

    .line 409
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    :cond_5
    :goto_5
    move-object v1, v0

    .line 421
    :cond_6
    :try_start_8
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    new-instance v3, Ljava/lang/String;

    .line 422
    const-string v4, "%4;7t>;28<fc.5*6"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "DESede"

    .line 421
    invoke-direct {v0, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 424
    const-string v3, "DESede"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 426
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 428
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 429
    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, v0, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 430
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 431
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 432
    if-eqz v0, :cond_0

    .line 433
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :catch_6
    move-exception v0

    move-object v0, v1

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v0, v1

    goto/16 :goto_4

    :catch_8
    move-exception v0

    move-object v0, v1

    goto/16 :goto_3

    .line 330
    :catch_9
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_1

    :cond_7
    move-object v1, v0

    goto/16 :goto_2

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private static at(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 522
    .line 529
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 532
    :try_start_0
    new-instance v9, Loicq/wlogin_sdk/a/a;

    invoke-direct {v9, p0, p1}, Loicq/wlogin_sdk/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :try_start_1
    invoke-virtual {v9}, Loicq/wlogin_sdk/a/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 544
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select count(*) from sqlite_master where type =\'table\' and name =\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 544
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 546
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    .line 547
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 548
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 549
    if-lez v2, :cond_0

    .line 550
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 553
    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 554
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 557
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 558
    invoke-virtual {v9}, Loicq/wlogin_sdk/a/a;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v8

    .line 586
    :goto_0
    return-object v0

    .line 536
    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_1
    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->a(Ljava/lang/Exception;)V

    .line 537
    if-eqz v1, :cond_2

    .line 538
    invoke-virtual {v1}, Loicq/wlogin_sdk/a/a;->close()V

    :cond_2
    move-object v0, v8

    .line 540
    goto :goto_0

    .line 562
    :cond_3
    const/4 v1, 0x1

    :try_start_4
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v2, v1

    .line 563
    const-string v3, "ID=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    .line 573
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 574
    if-nez v0, :cond_5

    .line 576
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 577
    invoke-virtual {v9}, Loicq/wlogin_sdk/a/a;->close()V

    move-object v0, v8

    .line 578
    goto :goto_0

    .line 565
    :catch_1
    move-exception v0

    move-object v1, v8

    :goto_2
    invoke-static {v0}, Loicq/wlogin_sdk/c/f;->a(Ljava/lang/Exception;)V

    .line 566
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 567
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 569
    :cond_4
    invoke-virtual {v9}, Loicq/wlogin_sdk/a/a;->close()V

    move-object v0, v8

    .line 570
    goto :goto_0

    .line 582
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 583
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 584
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 585
    invoke-virtual {v9}, Loicq/wlogin_sdk/a/a;->close()V

    goto :goto_0

    .line 565
    :catch_2
    move-exception v0

    move-object v1, v10

    goto :goto_2

    .line 536
    :catch_3
    move-exception v0

    move-object v1, v9

    goto :goto_1
.end method

.method private declared-synchronized b(Ljava/util/TreeMap;Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 273
    monitor-enter p0

    .line 278
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Loicq/wlogin_sdk/a/k;->hxR:[B

    .line 279
    const-string v2, "DESede"

    .line 278
    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 281
    const-string v1, "DESede"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 283
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 285
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 286
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v2, v0, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 287
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 288
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 289
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 290
    iget-object v1, p0, Loicq/wlogin_sdk/a/f;->hxo:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v1, p2, v0}, Loicq/wlogin_sdk/a/f;->a(Landroid/content/Context;Ljava/lang/String;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 302
    :goto_0
    monitor-exit p0

    return v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    :try_start_1
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 293
    new-instance v2, Ljava/io/PrintWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 294
    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 295
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 296
    invoke-virtual {v1}, Ljava/io/StringWriter;->flush()V

    .line 297
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string v1, "exception"

    invoke-static {v1, v0}, Loicq/wlogin_sdk/c/f;->bn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    const/16 v0, -0x3fe

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized cr(J)Loicq/wlogin_sdk/a/c;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 121
    monitor-enter p0

    :try_start_0
    const-string v0, "get_all_siginfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uin="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Loicq/wlogin_sdk/c/f;->bm(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Loicq/wlogin_sdk/a/f;->hxp:Ljava/util/TreeMap;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-eqz v0, :cond_0

    .line 150
    :goto_0
    monitor-exit p0

    return-object v0

    .line 129
    :cond_0
    :try_start_1
    iget-object v0, p0, Loicq/wlogin_sdk/a/f;->hxo:Landroid/content/Context;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 130
    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Loicq/wlogin_sdk/a/f;->hxo:Landroid/content/Context;

    .line 135
    const-string v2, "tk_file"

    .line 134
    invoke-static {v0, v2}, Loicq/wlogin_sdk/a/f;->as(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v0

    .line 136
    if-nez v0, :cond_2

    move-object v0, v1

    .line 137
    goto :goto_0

    .line 141
    :cond_2
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/a/c;

    .line 142
    if-nez v0, :cond_3

    .line 143
    const-string v0, "get_all_siginfo"

    const-string v2, "null"

    invoke-static {v0, v2}, Loicq/wlogin_sdk/c/f;->bm(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 144
    goto :goto_0

    .line 148
    :cond_3
    iget-object v1, p0, Loicq/wlogin_sdk/a/f;->hxp:Ljava/util/TreeMap;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {v0}, Loicq/wlogin_sdk/a/c;->aQp()Loicq/wlogin_sdk/a/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(JJJJJJ[B[B[B[B[B[B[B[B[B[B[B[B[B[B[B[B[[B)I
    .locals 28
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 48
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/a/f;->hxp:Ljava/util/TreeMap;

    new-instance v3, Ljava/lang/Long;

    move-wide/from16 v0, p1

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loicq/wlogin_sdk/a/c;

    .line 50
    if-nez v2, :cond_4

    .line 51
    new-instance v2, Loicq/wlogin_sdk/a/c;

    invoke-direct {v2}, Loicq/wlogin_sdk/a/c;-><init>()V

    move-object/from16 v27, v2

    .line 55
    :goto_0
    const/4 v2, 0x0

    new-array v3, v2, [B

    .line 56
    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/a/c;->hwY:Ljava/util/TreeMap;

    new-instance v4, Ljava/lang/Long;

    move-wide/from16 v0, p3

    invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    .line 58
    if-eqz v2, :cond_3

    iget-object v4, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->hyo:[B

    if-eqz v4, :cond_3

    .line 59
    iget-object v2, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->hyo:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object/from16 v26, v2

    .line 62
    :goto_1
    new-instance v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    move-wide/from16 v3, p1

    move-object/from16 v5, p13

    move-object/from16 v6, p14

    move-object/from16 v7, p15

    move-object/from16 v8, p16

    invoke-direct/range {v2 .. v8}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>(J[B[B[B[B)V

    move-object/from16 v0, v27

    iput-object v2, v0, Loicq/wlogin_sdk/a/c;->hwX:Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    move-object/from16 v2, v27

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-object/from16 v13, p17

    move-object/from16 v14, p18

    move-object/from16 v15, p19

    move-object/from16 v16, p20

    move-object/from16 v17, p21

    move-object/from16 v18, p22

    move-object/from16 v19, p23

    move-object/from16 v20, p24

    move-object/from16 v21, p25

    move-object/from16 v22, p26

    move-object/from16 v23, p27

    move-object/from16 v24, p28

    move-object/from16 v25, p29

    .line 64
    invoke-virtual/range {v2 .. v25}, Loicq/wlogin_sdk/a/c;->a(JJJJJ[B[B[B[B[B[B[B[B[B[B[B[B[[B)I

    move-result v2

    .line 68
    const-string v3, "before put_siginfo, ret=0"

    invoke-static {v3}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/a/f;->hxo:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 72
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/a/f;->hxo:Landroid/content/Context;

    .line 73
    const-string v3, "tk_file"

    .line 72
    invoke-static {v2, v3}, Loicq/wlogin_sdk/a/f;->as(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v2

    .line 74
    if-nez v2, :cond_0

    .line 75
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 77
    :cond_0
    const-string v3, "after loadTKTreeMap"

    invoke-static {v3}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    .line 78
    new-instance v3, Ljava/lang/Long;

    move-wide/from16 v0, p1

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual/range {v27 .. v27}, Loicq/wlogin_sdk/a/c;->aQp()Loicq/wlogin_sdk/a/c;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v3, "tk_file"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Loicq/wlogin_sdk/a/f;->a(Ljava/util/TreeMap;Ljava/lang/String;)I

    move-result v2

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "after refreshTKTreeMap, ret="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Loicq/wlogin_sdk/c/f;->yh(Ljava/lang/String;)V

    :cond_1
    move v4, v2

    .line 84
    if-eqz v4, :cond_2

    .line 85
    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/a/c;->hwY:Ljava/util/TreeMap;

    new-instance v3, Ljava/lang/Long;

    move-wide/from16 v0, p3

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    .line 86
    if-eqz v2, :cond_2

    .line 87
    invoke-virtual/range {v26 .. v26}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->hyo:[B

    .line 91
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/a/f;->hxp:Ljava/util/TreeMap;

    new-instance v3, Ljava/lang/Long;

    move-wide/from16 v0, p1

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return v4

    .line 48
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    move-object/from16 v26, v3

    goto/16 :goto_1

    :cond_4
    move-object/from16 v27, v2

    goto/16 :goto_0
.end method

.method public final declared-synchronized a(JJJJ[B[B)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/a/f;->hxp:Ljava/util/TreeMap;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-nez v0, :cond_0

    .line 102
    const/4 v0, -0x1

    .line 117
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move-wide v1, p3

    move-wide v3, p5

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 104
    :try_start_1
    invoke-virtual/range {v0 .. v8}, Loicq/wlogin_sdk/a/c;->a(JJJ[B[B)I

    .line 107
    iget-object v1, p0, Loicq/wlogin_sdk/a/f;->hxo:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Loicq/wlogin_sdk/a/f;->hxo:Landroid/content/Context;

    .line 109
    const-string v2, "tk_file"

    .line 108
    invoke-static {v1, v2}, Loicq/wlogin_sdk/a/f;->as(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;

    move-result-object v1

    .line 110
    if-nez v1, :cond_1

    .line 111
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 113
    :cond_1
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Loicq/wlogin_sdk/a/c;->aQp()Loicq/wlogin_sdk/a/c;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "tk_file"

    invoke-direct {p0, v1, v0}, Loicq/wlogin_sdk/a/f;->a(Ljava/util/TreeMap;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Ljava/lang/Long;)V
    .locals 2
    .parameter

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/a/f;->hxp:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Loicq/wlogin_sdk/a/f;->hxo:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Loicq/wlogin_sdk/a/f;->hxo:Landroid/content/Context;

    .line 198
    const-string v1, "tk_file"

    .line 197
    invoke-static {v0, v1}, Loicq/wlogin_sdk/a/f;->as(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TreeMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 199
    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 202
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "tk_file"

    invoke-direct {p0, v0, v1}, Loicq/wlogin_sdk/a/f;->a(Ljava/util/TreeMap;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized cs(J)Loicq/wlogin_sdk/sharemem/WloginSigInfo;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 155
    monitor-enter p0

    :try_start_0
    const-string v0, "get_siginfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uin="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "appid=522017402"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Loicq/wlogin_sdk/c/f;->bm(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0, p1, p2}, Loicq/wlogin_sdk/a/f;->cr(J)Loicq/wlogin_sdk/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 160
    if-nez v0, :cond_1

    move-object v0, v1

    .line 167
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 163
    :cond_1
    :try_start_1
    iget-object v0, v0, Loicq/wlogin_sdk/a/c;->hwY:Ljava/util/TreeMap;

    new-instance v2, Ljava/lang/Long;

    const-wide/32 v3, 0x1f1d5a7a

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    if-nez v0, :cond_0

    move-object v0, v1

    .line 165
    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
