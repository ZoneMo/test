.class public Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;
.super Linfo/guardianproject/database/sqlcipher/SQLiteClosable;
.source "SourceFile"


# static fields
.field private static final COMMIT_SQL:Ljava/lang/String; = "COMMIT;"

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String; = null

.field public static final CREATE_IF_NECESSARY:I = 0x10000000

.field private static final EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field private static final EVENT_DB_OPERATION:I = 0xcb20

.field static final GET_LOCK_LOG_PREFIX:Ljava/lang/String; = "GETLOCK:"

.field private static final LOCK_ACQUIRED_WARNING_THREAD_TIME_IN_MS:I = 0x64

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS:I = 0x12c

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS_ALWAYS_PRINT:I = 0x7d0

.field private static final LOCK_WARNING_WINDOW_IN_MS:I = 0x4e20

.field private static final LOG_SLOW_QUERIES_PROPERTY:Ljava/lang/String; = "db.log.slow_query_threshold"

.field public static final MAX_SQL_CACHE_SIZE:I = 0xfa

.field private static final MAX_WARNINGS_ON_CACHESIZE_CONDITION:I = 0x1

.field public static final NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x0

.field private static final OPEN_READ_MASK:I = 0x1

.field private static final QUERY_LOG_SQL_LENGTH:I = 0x40

.field private static final SLEEP_AFTER_YIELD_QUANTUM:I = 0x3e8

.field public static final SQLITE_MAX_LIKE_PATTERN_LENGTH:I = 0xc350

.field private static final TAG:Ljava/lang/String; = "Database"

.field private static hasLoadLib:I

.field private static sQueryLogTimeInMillis:I


# instance fields
.field private mCacheFullWarnings:I

.field mCompiledQueries:Ljava/util/Map;

.field private mFactory:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;

.field private mFlags:I

.field private mInnerTransactionIsSuccessful:Z

.field private mLastLockMessageTime:J

.field private mLastSqlStatement:Ljava/lang/String;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mLockAcquiredThreadTime:J

.field private mLockAcquiredWallTime:J

.field private mLockingEnabled:Z

.field private mMaxSqlCacheSize:I

.field mNativeHandle:I

.field private mNumCacheHits:I

.field private mNumCacheMisses:I

.field private mPath:Ljava/lang/String;

.field private mPathForLogs:Ljava/lang/String;

.field private mPrograms:Ljava/util/WeakHashMap;

.field private final mRandom:Ljava/util/Random;

.field private final mSlowQueryThreshold:I

.field private mStackTrace:Ljava/lang/Throwable;

.field private final mSyncUpdateInfo:Ljava/util/Map;

.field mTempTableSequence:I

.field private mTimeClosed:Ljava/lang/String;

.field private mTimeOpened:Ljava/lang/String;

.field private mTransactionIsSuccessful:Z

.field private mTransactionListener:Linfo/guardianproject/database/sqlcipher/SQLiteTransactionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    const-string v0, "mmdb"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, " OR ROLLBACK "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " OR ABORT "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " OR FAIL "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " OR IGNORE "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " OR REPLACE "

    aput-object v2, v0, v1

    .line 175
    sput-object v0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 258
    const-string v0, "[\\w\\.\\-]+@[\\w\\.\\-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    .line 271
    sput v3, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->sQueryLogTimeInMillis:I

    .line 902
    sput v3, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->hasLoadLib:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1921
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteClosable;-><init>()V

    .line 241
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 243
    iput-wide v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 244
    iput-wide v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 260
    iput-wide v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLastLockMessageTime:J

    .line 274
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mRandom:Ljava/util/Random;

    .line 275
    iput-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    .line 282
    iput v4, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mNativeHandle:I

    .line 285
    iput v4, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTempTableSequence:I

    .line 291
    iput-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    .line 322
    const/16 v0, 0xfa

    iput v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mMaxSqlCacheSize:I

    .line 331
    iput-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    .line 332
    iput-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 335
    iput-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 395
    iput-boolean v5, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLockingEnabled:Z

    .line 786
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    .line 1924
    if-nez p1, :cond_0

    .line 1925
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1927
    :cond_0
    iput p3, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mFlags:I

    .line 1928
    iput-object p1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPath:Ljava/lang/String;

    .line 1929
    const/4 v0, -0x1

    iput v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mSlowQueryThreshold:I

    .line 1930
    new-instance v0, Linfo/guardianproject/database/sqlcipher/DatabaseObjectNotClosedException;

    invoke-direct {v0}, Linfo/guardianproject/database/sqlcipher/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 1931
    iput-object p2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mFactory:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;

    .line 1932
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPath:Ljava/lang/String;

    iget v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mFlags:I

    invoke-direct {p0, v0, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->dbopen(Ljava/lang/String;I)V

    .line 1937
    sget-boolean v0, Linfo/guardianproject/database/sqlcipher/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_1

    .line 1938
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    .line 1940
    :cond_1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    .line 1942
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1943
    return-void

    :catch_0
    move-exception v0

    .line 1944
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->dbclose()V

    .line 1946
    sget-boolean v1, Linfo/guardianproject/database/sqlcipher/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v1, :cond_2

    .line 1947
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 1949
    :cond_2
    throw v0
.end method

.method private checkLockHoldTime()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x7d0

    .line 483
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 484
    iget-wide v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLockAcquiredWallTime:J

    sub-long v2, v0, v2

    .line 485
    cmp-long v4, v2, v8

    if-gez v4, :cond_1

    .line 486
    const-string v4, "Database"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 487
    iget-wide v4, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLastLockMessageTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x4e20

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    const-wide/16 v4, 0x12c

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 492
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    iget-wide v6, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLockAcquiredThreadTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 493
    const/16 v5, 0x64

    if-gt v4, v5, :cond_2

    .line 494
    cmp-long v5, v2, v8

    if-lez v5, :cond_0

    .line 495
    :cond_2
    iput-wide v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLastLockMessageTime:J

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lock held on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms. Thread time was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 497
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    sget-boolean v0, Linfo/guardianproject/database/sqlcipher/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING_STACK_TRACE:Z

    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    goto :goto_0
.end method

.method private closeClosable()V
    .locals 2

    .prologue
    .line 972
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->deallocCachedSqlStatements()V

    .line 974
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 975
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 982
    return-void

    .line 976
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 977
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/guardianproject/database/sqlcipher/SQLiteClosable;

    .line 978
    if-eqz v0, :cond_0

    .line 979
    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    goto :goto_0
.end method

.method public static create(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;)Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;
    .locals 2
    .parameter

    .prologue
    .line 943
    const-string v0, ":memory:"

    const/high16 v1, 0x1000

    invoke-static {v0, p0, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->openDatabase(Ljava/lang/String;Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;I)Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private native dbclose()V
.end method

.method private native dbopen(Ljava/lang/String;I)V
.end method

.method private deallocCachedSqlStatements()V
    .locals 3

    .prologue
    .line 2142
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2143
    :try_start_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2146
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2142
    monitor-exit v1

    return-void

    .line 2143
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/guardianproject/database/sqlcipher/SQLiteCompiledSql;

    .line 2144
    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2142
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native enableSqlProfiling(Ljava/lang/String;)V
.end method

.method private native enableSqlTracing(Ljava/lang/String;)V
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1189
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1191
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1192
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1194
    if-lez v0, :cond_2

    if-lt v0, v1, :cond_0

    if-gez v1, :cond_2

    .line 1195
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1199
    :cond_1
    :goto_0
    return-object p0

    .line 1196
    :cond_2
    if-lez v1, :cond_1

    if-lt v1, v0, :cond_3

    if-gez v0, :cond_1

    .line 1197
    :cond_3
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1201
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid tables"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getAttachedDbs(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2331
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2340
    :goto_0
    return-object v0

    .line 2334
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2335
    const-string v2, "pragma database_list;"

    invoke-virtual {p0, v2, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2336
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2339
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 2340
    goto :goto_0

    .line 2337
    :cond_1
    new-instance v2, Linfo/guardianproject/database/sqlcipher/Pair;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Linfo/guardianproject/database/sqlcipher/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static getDbStats()Ljava/util/ArrayList;
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v8, 0x0

    .line 2258
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2259
    invoke-static {}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$ActiveDatabases;->getInstance()Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$ActiveDatabases;

    move-result-object v0

    #getter for: Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$ActiveDatabases;->mActiveDatabases:Ljava/util/HashSet;
    invoke-static {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$ActiveDatabases;->access$0(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$ActiveDatabases;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2302
    return-object v11

    .line 2259
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 2260
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    .line 2261
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2262
    invoke-direct {v7}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->native_getDbLookaside()I

    move-result v6

    .line 2268
    invoke-virtual {v7}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2269
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2270
    if-eq v0, v14, :cond_3

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 2273
    invoke-static {v7}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->getAttachedDbs(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v13

    .line 2274
    if-eqz v13, :cond_0

    move v9, v8

    .line 2277
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 2278
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/guardianproject/database/sqlcipher/Pair;

    .line 2279
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, v0, Linfo/guardianproject/database/sqlcipher/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".page_count;"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->getPragmaVal(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    .line 2284
    if-nez v9, :cond_4

    move-object v1, v10

    .line 2296
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 2297
    new-instance v0, Linfo/guardianproject/database/sqlcipher/SQLiteDebug$DbStats;

    invoke-virtual {v7}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->getPageSize()J

    move-result-wide v4

    .line 2298
    invoke-direct/range {v0 .. v6}, Linfo/guardianproject/database/sqlcipher/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJI)V

    .line 2297
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2277
    :cond_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_3
    move v0, v8

    .line 2270
    goto :goto_0

    .line 2289
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "  (attached) "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Linfo/guardianproject/database/sqlcipher/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2291
    iget-object v1, v0, Linfo/guardianproject/database/sqlcipher/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 2292
    iget-object v1, v0, Linfo/guardianproject/database/sqlcipher/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 2293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " : "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Linfo/guardianproject/database/sqlcipher/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eq v1, v14, :cond_5

    add-int/lit8 v1, v1, 0x1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v6, v8

    goto :goto_2

    :cond_5
    move v1, v8

    goto :goto_3

    :cond_6
    move-object v1, v4

    move v6, v8

    goto :goto_2
.end method

.method private getPathForLogs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2052
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2053
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 2063
    :goto_0
    return-object v0

    .line 2055
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2056
    const/4 v0, 0x0

    goto :goto_0

    .line 2058
    :cond_1
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPath:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2059
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPath:Ljava/lang/String;

    iput-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 2063
    :goto_1
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_0

    .line 2061
    :cond_2
    sget-object v0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "XX@YY"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getPragmaVal(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;)J
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2312
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2313
    const-wide/16 v0, 0x0

    .line 2319
    :goto_0
    return-wide v0

    .line 2315
    :cond_0
    const/4 v1, 0x0

    .line 2317
    :try_start_0
    new-instance v2, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "PRAGMA "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;-><init>(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2318
    :try_start_1
    invoke-virtual {v2}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 2319
    invoke-virtual {v2}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    goto :goto_0

    .line 2320
    :catchall_0
    move-exception v0

    .line 2321
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    .line 2322
    :cond_1
    throw v0

    .line 2320
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private getTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1954
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private lockForced()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 443
    sget-boolean v0, Linfo/guardianproject/database/sqlcipher/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 446
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 447
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 450
    :cond_0
    return-void
.end method

.method private markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1147
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 1149
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT _sync_dirty FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1150
    const-string v1, " LIMIT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1149
    invoke-virtual {p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1152
    const-string v1, " LIMIT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1151
    invoke-virtual {p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1157
    new-instance v0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$SyncUpdateInfo;

    invoke-direct {v0, p3, p4, p2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$SyncUpdateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v1

    .line 1160
    :try_start_1
    iget-object v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 1153
    :catchall_0
    move-exception v0

    .line 1154
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1155
    throw v0

    .line 1159
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native native_getDbLookaside()I
.end method

.method public static openDatabase(Ljava/lang/String;Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;I)Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 862
    .line 865
    :try_start_0
    new-instance v0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-direct {v0, p0, p1, p2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;-><init>(Ljava/lang/String;Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;I)V

    .line 866
    sget-boolean v1, Linfo/guardianproject/database/sqlcipher/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    if-eqz v1, :cond_0

    .line 867
    invoke-direct {v0, p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->enableSqlTracing(Ljava/lang/String;)V

    .line 869
    :cond_0
    sget-boolean v1, Linfo/guardianproject/database/sqlcipher/SQLiteDebug;->DEBUG_SQL_TIME:Z

    if-eqz v1, :cond_1

    .line 870
    invoke-direct {v0, p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->enableSqlProfiling(Ljava/lang/String;)V
    :try_end_0
    .catch Linfo/guardianproject/database/sqlcipher/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :cond_1
    :goto_0
    invoke-static {}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$ActiveDatabases;->getInstance()Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$ActiveDatabases;

    move-result-object v1

    #getter for: Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$ActiveDatabases;->mActiveDatabases:Ljava/util/HashSet;
    invoke-static {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$ActiveDatabases;->access$0(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$ActiveDatabases;)Ljava/util/HashSet;

    move-result-object v1

    .line 884
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 883
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 885
    return-object v0

    .line 875
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deleting and re-creating corrupt database "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 877
    const-string v0, ":memory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 879
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 881
    :cond_2
    new-instance v0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-direct {v0, p0, p1, p2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;-><init>(Ljava/lang/String;Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;I)V

    goto :goto_0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;)Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 905
    sget v1, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->hasLoadLib:I

    if-ne v1, v4, :cond_0

    .line 927
    :goto_0
    return-object v0

    .line 908
    :cond_0
    sget v1, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->hasLoadLib:I

    if-nez v1, :cond_1

    .line 911
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 913
    const-string v1, "mmdb4"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    :cond_1
    :goto_1
    const/4 v0, 0x1

    sput v0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->hasLoadLib:I

    .line 927
    const/high16 v0, 0x1000

    invoke-static {p0, p1, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->openDatabase(Ljava/lang/String;Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;I)Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    move-result-object v0

    goto :goto_0

    .line 916
    :cond_2
    :try_start_1
    const-string v1, "mmdb"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 919
    :catch_0
    move-exception v1

    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msg:["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] lmsg:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 921
    sput v4, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->hasLoadLib:I

    goto :goto_0
.end method

.method public static native releaseMemory()I
.end method

.method public static native setICURoot(Ljava/lang/String;)V
.end method

.method private unlockForced()V
    .locals 2

    .prologue
    .line 473
    sget-boolean v0, Linfo/guardianproject/database/sqlcipher/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 475
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->checkLockHoldTime()V

    .line 478
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 479
    return-void
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const-wide/16 v4, 0x3e8

    .line 745
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v0

    if-nez v0, :cond_0

    .line 748
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 749
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 750
    const/4 v0, 0x0

    .line 780
    :goto_0
    return v0

    .line 752
    :cond_0
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->setTransactionSuccessful()V

    .line 753
    iget-object v6, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTransactionListener:Linfo/guardianproject/database/sqlcipher/SQLiteTransactionListener;

    .line 754
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->endTransaction()V

    .line 755
    if-eqz p1, :cond_1

    .line 756
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 758
    const-string v1, "Db locked more than once. yielfIfContended cannot yield"

    .line 757
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_1
    cmp-long v0, p2, v7

    if-lez v0, :cond_2

    move-wide v2, p2

    .line 775
    :goto_1
    cmp-long v0, v2, v7

    if-gtz v0, :cond_3

    .line 779
    :cond_2
    invoke-virtual {p0, v6}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->beginTransactionWithListener(Linfo/guardianproject/database/sqlcipher/SQLiteTransactionListener;)V

    .line 780
    const/4 v0, 0x1

    goto :goto_0

    .line 768
    :cond_3
    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    move-wide v0, v2

    :goto_2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :goto_3
    sub-long/2addr v2, v4

    .line 774
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_4
    move-wide v0, v4

    .line 769
    goto :goto_2

    .line 771
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_3
.end method


# virtual methods
.method addSQLiteClosable(Linfo/guardianproject/database/sqlcipher/SQLiteClosable;)V
    .locals 2
    .parameter

    .prologue
    .line 345
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 347
    :try_start_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 351
    return-void

    .line 348
    :catchall_0
    move-exception v0

    .line 349
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 350
    throw v0
.end method

.method addToCompiledQueries(Ljava/lang/String;Linfo/guardianproject/database/sqlcipher/SQLiteCompiledSql;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2097
    iget v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-nez v0, :cond_1

    .line 2099
    sget-boolean v0, Linfo/guardianproject/database/sqlcipher/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_0

    .line 2100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "|NOT adding_sql_to_cache|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2132
    :cond_0
    :goto_0
    return-void

    .line 2105
    :cond_1
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2108
    :try_start_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/guardianproject/database/sqlcipher/SQLiteCompiledSql;

    .line 2109
    if-eqz v0, :cond_2

    .line 2110
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2113
    :cond_2
    :try_start_1
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-ne v0, v2, :cond_4

    .line 2121
    iget v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCacheFullWarnings:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCacheFullWarnings:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Reached MAX size for compiled-sql statement cache for database "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2123
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; i.e., NO space for this sql statement in cache: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2124
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Please change your sql statements to use \'?\' for bindargs, instead of using actual values"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2132
    :cond_3
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 2130
    :cond_4
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    sget-boolean v0, Linfo/guardianproject/database/sqlcipher/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_3

    .line 2132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "|adding_sql_to_cache|"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2133
    iget-object v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public beginTransaction()V
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->beginTransactionWithListener(Linfo/guardianproject/database/sqlcipher/SQLiteTransactionListener;)V

    .line 527
    return-void
.end method

.method public beginTransactionWithListener(Linfo/guardianproject/database/sqlcipher/SQLiteTransactionListener;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 551
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lockForced()V

    .line 552
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_0
    :try_start_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 559
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v0, :cond_2

    .line 560
    const-string v0, "Cannot call beginTransaction between calling setTransactionSuccessful and endTransaction"

    .line 562
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 563
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    :catchall_0
    move-exception v0

    .line 589
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlockForced()V

    .line 591
    throw v0

    .line 572
    :cond_1
    :try_start_1
    const-string v0, "BEGIN EXCLUSIVE;"

    invoke-virtual {p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 573
    iput-object p1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTransactionListener:Linfo/guardianproject/database/sqlcipher/SQLiteTransactionListener;

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTransactionIsSuccessful:Z

    .line 575
    const/4 v0, 0x0

    iput-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    if-eqz p1, :cond_2

    .line 578
    :try_start_2
    invoke-interface {p1}, Linfo/guardianproject/database/sqlcipher/SQLiteTransactionListener;->onBegin()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 585
    :cond_2
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    :try_start_3
    const-string v1, "ROLLBACK;"

    invoke-virtual {p0, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 581
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 951
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 962
    :goto_0
    return-void

    .line 954
    :cond_0
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 956
    :try_start_0
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->closeClosable()V

    .line 958
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->onAllReferencesReleased()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    goto :goto_0

    .line 959
    :catchall_0
    move-exception v0

    .line 960
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 961
    throw v0
.end method

.method public compileStatement(Ljava/lang/String;)Linfo/guardianproject/database/sqlcipher/SQLiteStatement;
    .locals 2
    .parameter

    .prologue
    .line 1218
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 1219
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1223
    :cond_0
    :try_start_0
    new-instance v0, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;

    invoke-direct {v0, p0, p1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;-><init>(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1223
    return-object v0

    .line 1224
    :catchall_0
    move-exception v0

    .line 1225
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1226
    throw v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1701
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 1702
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1703
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1705
    :cond_0
    const/4 v1, 0x0

    .line 1707
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1708
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " WHERE "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1708
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1707
    invoke-virtual {p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Linfo/guardianproject/database/sqlcipher/SQLiteStatement;

    move-result-object v1

    .line 1710
    if-eqz p3, :cond_1

    .line 1711
    array-length v2, p3

    .line 1712
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_4

    .line 1716
    :cond_1
    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->execute()V

    .line 1717
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lastChangeCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Linfo/guardianproject/database/sqlcipher/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1722
    if-eqz v1, :cond_2

    .line 1723
    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    .line 1725
    :cond_2
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1717
    return v0

    .line 1709
    :cond_3
    :try_start_1
    const-string v0, ""

    goto :goto_0

    .line 1713
    :cond_4
    add-int/lit8 v3, v0, 0x1

    aget-object v4, p3, v0

    invoke-static {v1, v3, v4}, Linfo/guardianproject/database/DatabaseUtils;->bindObjectToProgram(Linfo/guardianproject/database/sqlcipher/SQLiteProgram;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Linfo/guardianproject/database/sqlcipher/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1712
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1718
    :catch_0
    move-exception v0

    .line 1719
    :try_start_2
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->onCorruption()V

    .line 1720
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1721
    :catchall_0
    move-exception v0

    .line 1722
    if-eqz v1, :cond_5

    .line 1723
    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    .line 1725
    :cond_5
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1726
    throw v0
.end method

.method public endTransaction()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 599
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 603
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no transaction pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v0, :cond_2

    .line 607
    const/4 v0, 0x0

    iput-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 611
    :goto_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 643
    iput-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTransactionListener:Linfo/guardianproject/database/sqlcipher/SQLiteTransactionListener;

    .line 644
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlockForced()V

    .line 650
    :goto_1
    return-void

    .line 609
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 637
    :catchall_0
    move-exception v0

    .line 643
    iput-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTransactionListener:Linfo/guardianproject/database/sqlcipher/SQLiteTransactionListener;

    .line 644
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlockForced()V

    .line 649
    throw v0

    .line 615
    :cond_3
    :try_start_2
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTransactionListener:Linfo/guardianproject/database/sqlcipher/SQLiteTransactionListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_7

    .line 617
    :try_start_3
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v0, :cond_5

    .line 618
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTransactionListener:Linfo/guardianproject/database/sqlcipher/SQLiteTransactionListener;

    invoke-interface {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteTransactionListener;->onCommit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    .line 627
    :goto_2
    :try_start_4
    iget-boolean v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v2, :cond_6

    .line 628
    const-string v0, "COMMIT;"

    invoke-virtual {p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 643
    :cond_4
    :goto_3
    iput-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTransactionListener:Linfo/guardianproject/database/sqlcipher/SQLiteTransactionListener;

    .line 644
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlockForced()V

    goto :goto_1

    .line 620
    :cond_5
    :try_start_5
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTransactionListener:Linfo/guardianproject/database/sqlcipher/SQLiteTransactionListener;

    invoke-interface {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteTransactionListener;->onRollback()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v0, v1

    .line 622
    goto :goto_2

    .line 623
    :catch_0
    move-exception v0

    .line 624
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 631
    :cond_6
    :try_start_7
    const-string v2, "ROLLBACK;"

    invoke-virtual {p0, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 632
    if-eqz v0, :cond_4

    .line 633
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Linfo/guardianproject/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1

    .line 637
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1838
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1839
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 1840
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1841
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1843
    :cond_0
    iget-object v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    const-string v3, "GETLOCK:"

    invoke-virtual {p0, v2, v0, v1, v3}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 1845
    :try_start_0
    invoke-virtual {p0, p1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Linfo/guardianproject/database/sqlcipher/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1850
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1856
    const-string v2, "COMMIT;"

    if-ne p1, v2, :cond_1

    .line 1857
    iget-object v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    const-string v3, "COMMIT;"

    invoke-virtual {p0, v2, v0, v1, v3}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 1861
    :goto_0
    return-void

    .line 1846
    :catch_0
    move-exception v0

    .line 1847
    :try_start_1
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->onCorruption()V

    .line 1848
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1849
    :catchall_0
    move-exception v0

    .line 1850
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1851
    throw v0

    .line 1859
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1873
    if-nez p2, :cond_0

    .line 1874
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty bindArgs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1876
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1877
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 1878
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1879
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1881
    :cond_1
    const/4 v1, 0x0

    .line 1883
    :try_start_0
    invoke-virtual {p0, p1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Linfo/guardianproject/database/sqlcipher/SQLiteStatement;

    move-result-object v1

    .line 1884
    if-eqz p2, :cond_2

    .line 1885
    array-length v4, p2

    .line 1886
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_4

    .line 1890
    :cond_2
    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Linfo/guardianproject/database/sqlcipher/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1895
    if-eqz v1, :cond_3

    .line 1896
    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    .line 1898
    :cond_3
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1900
    invoke-virtual {p0, p1, v2, v3}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V

    .line 1901
    return-void

    .line 1887
    :cond_4
    add-int/lit8 v5, v0, 0x1

    :try_start_1
    aget-object v6, p2, v0

    invoke-static {v1, v5, v6}, Linfo/guardianproject/database/DatabaseUtils;->bindObjectToProgram(Linfo/guardianproject/database/sqlcipher/SQLiteProgram;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Linfo/guardianproject/database/sqlcipher/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1886
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1891
    :catch_0
    move-exception v0

    .line 1892
    :try_start_2
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->onCorruption()V

    .line 1893
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1894
    :catchall_0
    move-exception v0

    .line 1895
    if-eqz v1, :cond_5

    .line 1896
    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    .line 1898
    :cond_5
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1899
    throw v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 1905
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1906
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close() was never explicitly called on database \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1907
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 1906
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->closeClosable()V

    .line 1909
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->onAllReferencesReleased()V

    .line 1911
    :cond_0
    return-void
.end method

.method getCompiledStatementForSql(Ljava/lang/String;)Linfo/guardianproject/database/sqlcipher/SQLiteCompiledSql;
    .locals 4
    .parameter

    .prologue
    .line 2155
    .line 2157
    iget-object v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v2

    .line 2158
    :try_start_0
    iget v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-nez v0, :cond_2

    .line 2160
    sget-boolean v0, Linfo/guardianproject/database/sqlcipher/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_0

    .line 2161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "|cache NOT found|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2163
    :cond_0
    monitor-exit v2

    const/4 v0, 0x0

    .line 2174
    :cond_1
    :goto_0
    return-object v0

    .line 2165
    :cond_2
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/guardianproject/database/sqlcipher/SQLiteCompiledSql;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 2157
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2167
    if-eqz v1, :cond_4

    .line 2168
    iget v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mNumCacheHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mNumCacheHits:I

    .line 2173
    :goto_2
    sget-boolean v2, Linfo/guardianproject/database/sqlcipher/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v2, :cond_1

    .line 2174
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|cache_stats|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2175
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2176
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mNumCacheHits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mNumCacheMisses:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2177
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 2165
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 2157
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 2170
    :cond_4
    iget v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mNumCacheMisses:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mNumCacheMisses:I

    goto :goto_2
.end method

.method public declared-synchronized getMaxSqlCacheSize()I
    .locals 1

    .prologue
    .line 2217
    monitor-enter p0

    :try_start_0
    iget v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mMaxSqlCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaximumSize()J
    .locals 6

    .prologue
    .line 1025
    const/4 v2, 0x0

    .line 1026
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 1027
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1028
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1031
    :cond_0
    :try_start_0
    new-instance v1, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;

    .line 1032
    const-string v0, "PRAGMA max_page_count;"

    .line 1031
    invoke-direct {v1, p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;-><init>(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    :try_start_1
    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    .line 1034
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->getPageSize()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    mul-long/2addr v2, v4

    .line 1036
    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    .line 1037
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1034
    return-wide v2

    .line 1035
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 1036
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    .line 1037
    :cond_1
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1038
    throw v0

    .line 1035
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public getPageSize()J
    .locals 4

    .prologue
    .line 1077
    const/4 v2, 0x0

    .line 1078
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 1079
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1080
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1083
    :cond_0
    :try_start_0
    new-instance v1, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;

    .line 1084
    const-string v0, "PRAGMA page_size;"

    .line 1083
    invoke-direct {v1, p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;-><init>(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    :try_start_1
    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 1086
    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    .line 1089
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1086
    return-wide v2

    .line 1087
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 1088
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    .line 1089
    :cond_1
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1090
    throw v0

    .line 1087
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncedTables()Ljava/util/Map;
    .locals 6

    .prologue
    .line 789
    iget-object v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v2

    .line 790
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 791
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 797
    monitor-exit v2

    return-object v3

    .line 791
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 792
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$SyncUpdateInfo;

    .line 793
    iget-object v5, v1, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$SyncUpdateInfo;->deletedTable:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 794
    iget-object v1, v1, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$SyncUpdateInfo;->deletedTable:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getVersion()I
    .locals 4

    .prologue
    .line 995
    const/4 v2, 0x0

    .line 996
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 997
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 998
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1001
    :cond_0
    :try_start_0
    new-instance v1, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;

    const-string v0, "PRAGMA user_version;"

    invoke-direct {v1, p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;-><init>(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    :try_start_1
    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 1003
    long-to-int v0, v2

    .line 1005
    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    .line 1006
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1003
    return v0

    .line 1004
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 1005
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    .line 1006
    :cond_1
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1007
    throw v0

    .line 1004
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1527
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Linfo/guardianproject/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1530
    :goto_0
    return-wide v0

    .line 1529
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error inserting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1530
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1549
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0x28

    const/4 v1, 0x0

    .line 1609
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1610
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1614
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v0, 0x98

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1615
    const-string v0, "INSERT"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    sget-object v0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v0, v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    const-string v0, " INTO "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1623
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1624
    invoke-virtual {p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    .line 1625
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1626
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1629
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1640
    const/16 v0, 0x29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v0, v3

    .line 1646
    :goto_1
    const-string v2, " VALUES("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1648
    const-string v2, ");"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 1653
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Linfo/guardianproject/database/sqlcipher/SQLiteStatement;

    move-result-object v4

    .line 1656
    if-eqz v0, :cond_1

    .line 1657
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 1658
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1659
    :goto_2
    if-lt v1, v2, :cond_7

    .line 1667
    :cond_1
    invoke-virtual {v4}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->execute()V

    .line 1669
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lastInsertRow()J

    move-result-wide v0

    .line 1670
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_8

    .line 1671
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error inserting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Linfo/guardianproject/database/sqlcipher/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 1684
    invoke-virtual {v4}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    .line 1686
    :cond_3
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1678
    return-wide v0

    .line 1630
    :cond_4
    if-eqz v0, :cond_5

    .line 1631
    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1632
    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    :cond_5
    const/4 v2, 0x1

    .line 1635
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1636
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    const/16 v0, 0x3f

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_0

    .line 1642
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    const-string v0, "NULL"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v4

    goto/16 :goto_1

    .line 1660
    :cond_7
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1661
    add-int/lit8 v6, v1, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v6, v0}, Linfo/guardianproject/database/DatabaseUtils;->bindObjectToProgram(Linfo/guardianproject/database/sqlcipher/SQLiteProgram;ILjava/lang/Object;)V

    .line 1659
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1673
    :cond_8
    const-string v2, "Database"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1674
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inserting row "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1675
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Linfo/guardianproject/database/sqlcipher/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 1679
    :catch_0
    move-exception v0

    .line 1680
    :try_start_2
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->onCorruption()V

    .line 1681
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1682
    :catchall_0
    move-exception v0

    .line 1683
    if-eqz v4, :cond_9

    .line 1684
    invoke-virtual {v4}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    .line 1686
    :cond_9
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1687
    throw v0
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public isDbLockedByOtherThreads()Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInCompiledSqlCache(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 2187
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2188
    :try_start_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 2187
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 1969
    iget v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mNativeHandle:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1962
    iget v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method native lastChangeCount()I
.end method

.method native lastInsertRow()J
.end method

.method lock()V
    .locals 2

    .prologue
    .line 422
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 424
    sget-boolean v0, Linfo/guardianproject/database/sqlcipher/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 427
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 428
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLockAcquiredThreadTime:J

    goto :goto_0
.end method

.method logTimeStat(Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1986
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 1987
    return-void
.end method

.method logTimeStat(Ljava/lang/String;JLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x40

    .line 1993
    iput-object p1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    .line 2000
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 2001
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string v2, "GETLOCK:"

    if-ne p4, v2, :cond_1

    .line 2033
    :cond_0
    :goto_0
    return-void

    .line 2006
    :cond_1
    sget v2, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->sQueryLogTimeInMillis:I

    if-nez v2, :cond_2

    .line 2007
    const/16 v2, 0x1f4

    sput v2, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->sQueryLogTimeInMillis:I

    .line 2009
    :cond_2
    sget v2, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    .line 2018
    :cond_3
    if-eqz p4, :cond_4

    .line 2019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2022
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    goto :goto_0

    .line 2012
    :cond_5
    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    sget v2, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 2013
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mRandom:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-lt v1, v0, :cond_3

    goto :goto_0
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1113
    const-string v0, "_id"

    invoke-direct {p0, p1, v0, p1, p2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    return-void
.end method

.method native native_execSQL(Ljava/lang/String;)V
.end method

.method native native_setLocale(Ljava/lang/String;I)V
.end method

.method public needUpgrade(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1973
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAllReferencesReleased()V
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    sget-boolean v0, Linfo/guardianproject/database/sqlcipher/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_0

    .line 366
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 368
    :cond_0
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->dbclose()V

    .line 370
    :cond_1
    return-void
.end method

.method onCorruption()V
    .locals 3

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removing corrupt database: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    :try_start_0
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v1, ":memory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 411
    :cond_0
    return-void

    .line 403
    :catchall_0
    move-exception v0

    .line 406
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v2, ":memory"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 408
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 410
    :cond_1
    throw v0
.end method

.method public purgeFromCompiledSqlCache(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 2197
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2198
    :try_start_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1352
    const/4 v1, 0x0

    .line 1353
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 1352
    invoke-virtual/range {v0 .. v10}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1398
    const/4 v1, 0x0

    .line 1399
    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 1398
    invoke-virtual/range {v0 .. v10}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 11
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
    .line 1390
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1345
    const/4 v1, 0x0

    .line 1346
    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p8

    .line 1345
    invoke-virtual/range {v0 .. v10}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 12
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
    .line 1263
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->queryWithFactory(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 8
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
    .line 1303
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1304
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 1306
    invoke-static/range {v0 .. v7}, Linfo/guardianproject/database/sqlcipher/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1310
    invoke-static {p3}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p6

    move/from16 v5, p11

    .line 1309
    invoke-virtual/range {v0 .. v5}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->rawQueryWithFactory(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1413
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->rawQueryWithFactory(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;II)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1507
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->rawQueryWithFactory(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Linfo/guardianproject/database/sqlcipher/SQLiteCursor;

    .line 1508
    invoke-virtual {v0, p3, p4}, Linfo/guardianproject/database/sqlcipher/SQLiteCursor;->setLoadStyle(II)V

    .line 1510
    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1417
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->rawQueryWithFactory(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQueryWithFactory(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1436
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1437
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1439
    :cond_0
    const-wide/16 v2, 0x0

    .line 1441
    iget v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mSlowQueryThreshold:I

    if-eq v0, v1, :cond_9

    .line 1442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v3, v2

    .line 1451
    :goto_0
    if-eqz p5, :cond_3

    .line 1452
    new-instance v0, Linfo/guardianproject/database/sqlcipher/SQLiteDirectCursorDriverInJava;

    invoke-direct {v0, p0, p2, p4}, Linfo/guardianproject/database/sqlcipher/SQLiteDirectCursorDriverInJava;-><init>(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    :goto_1
    const/4 v5, 0x0

    .line 1462
    if-eqz p1, :cond_4

    :goto_2
    :try_start_0
    invoke-interface {v0, p1, p3}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorDriver;->query(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1465
    iget v5, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mSlowQueryThreshold:I

    if-eq v5, v1, :cond_2

    .line 1469
    if-eqz v2, :cond_1

    .line 1470
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1473
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    .line 1475
    iget v5, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mSlowQueryThreshold:I

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    .line 1476
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "query ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", args are "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1478
    if-eqz p3, :cond_8

    .line 1479
    const-string v0, ","

    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1478
    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1480
    const-string v3, ", count is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1477
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1476
    :cond_2
    return-object v2

    .line 1454
    :cond_3
    new-instance v0, Linfo/guardianproject/database/sqlcipher/SQLiteDirectCursorDriver;

    invoke-direct {v0, p0, p2, p4}, Linfo/guardianproject/database/sqlcipher/SQLiteDirectCursorDriver;-><init>(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1462
    :cond_4
    :try_start_1
    iget-object p1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mFactory:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1464
    :catchall_0
    move-exception v2

    .line 1465
    iget v6, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mSlowQueryThreshold:I

    if-eq v6, v1, :cond_6

    .line 1469
    if-eqz v5, :cond_5

    .line 1470
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1473
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    .line 1475
    iget v5, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mSlowQueryThreshold:I

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-ltz v5, :cond_6

    .line 1476
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "query ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", args are "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1478
    if-eqz p3, :cond_7

    .line 1479
    const-string v0, ","

    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1478
    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1480
    const-string v3, ", count is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1477
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1476
    :cond_6
    throw v2

    .line 1480
    :cond_7
    const-string v0, "<null>"

    goto :goto_4

    :cond_8
    const-string v0, "<null>"

    goto :goto_3

    :cond_9
    move-wide v3, v2

    goto/16 :goto_0
.end method

.method removeSQLiteClosable(Linfo/guardianproject/database/sqlcipher/SQLiteClosable;)V
    .locals 1
    .parameter

    .prologue
    .line 354
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 356
    :try_start_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 360
    return-void

    .line 357
    :catchall_0
    move-exception v0

    .line 358
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 359
    throw v0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1565
    .line 1566
    const/4 v0, 0x5

    .line 1565
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Linfo/guardianproject/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1569
    :goto_0
    return-wide v0

    .line 1568
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error inserting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1569
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1587
    .line 1588
    const/4 v0, 0x5

    .line 1587
    invoke-virtual {p0, p1, p2, p3, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public resetCompiledSqlCache()V
    .locals 2

    .prologue
    .line 2207
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2208
    :try_start_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2207
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method rowUpdated(Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1172
    iget-object v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v1

    .line 1173
    :try_start_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$SyncUpdateInfo;

    .line 1172
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    if-eqz v0, :cond_0

    .line 1176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$SyncUpdateInfo;->masterTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1177
    const-string v2, " SET _sync_dirty=1 WHERE _id=(SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$SyncUpdateInfo;->foreignKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1178
    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE _id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1176
    invoke-virtual {p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1180
    :cond_0
    return-void

    .line 1172
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 2
    .parameter

    .prologue
    .line 2074
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 2076
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mFlags:I

    invoke-virtual {p0, v0, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->native_setLocale(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2078
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 2080
    return-void

    .line 2077
    :catchall_0
    move-exception v0

    .line 2078
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 2079
    throw v0
.end method

.method public setLockingEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-boolean p1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLockingEnabled:Z

    .line 389
    return-void
.end method

.method public declared-synchronized setMaxSqlCacheSize(I)V
    .locals 2
    .parameter

    .prologue
    .line 2236
    monitor-enter p0

    const/16 v0, 0xfa

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 2237
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "expected value between 0 and 250"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2238
    :cond_1
    :try_start_1
    iget v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-ge p1, v0, :cond_2

    .line 2239
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot set cacheSize to a value less than the value set with previous setMaxSqlCacheSize() call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2242
    :cond_2
    iput p1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mMaxSqlCacheSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2243
    monitor-exit p0

    return-void
.end method

.method public setMaximumSize(J)J
    .locals 9
    .parameter

    .prologue
    .line 1049
    const/4 v2, 0x0

    .line 1050
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 1051
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1052
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1055
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->getPageSize()J

    move-result-wide v5

    .line 1056
    div-long v0, p1, v5

    .line 1058
    rem-long v3, p1, v5

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-eqz v3, :cond_2

    .line 1059
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    move-wide v3, v0

    .line 1061
    :goto_0
    new-instance v1, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "PRAGMA max_page_count = "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1061
    invoke-direct {v1, p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;-><init>(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    :try_start_1
    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 1064
    mul-long/2addr v2, v5

    .line 1066
    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    .line 1067
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1064
    return-wide v2

    .line 1065
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 1066
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    .line 1067
    :cond_1
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1068
    throw v0

    .line 1065
    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_2
    move-wide v3, v0

    goto :goto_0
.end method

.method public setPageSize(J)V
    .locals 2
    .parameter

    .prologue
    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PRAGMA page_size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1102
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 2

    .prologue
    .line 662
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 666
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no transaction pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_1
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v0, :cond_2

    .line 669
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 670
    const-string v1, "setTransactionSuccessful may only be called once per call to beginTransaction"

    .line 669
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 673
    return-void
.end method

.method public setVersion(I)V
    .locals 2
    .parameter

    .prologue
    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PRAGMA user_version = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1017
    return-void
.end method

.method unlock()V
    .locals 2

    .prologue
    .line 458
    iget-boolean v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 459
    :cond_0
    sget-boolean v0, Linfo/guardianproject/database/sqlcipher/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 461
    invoke-direct {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->checkLockHoldTime()V

    .line 464
    :cond_1
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1740
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1756
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1757
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1760
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v0, 0x78

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1761
    const-string v0, "UPDATE "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    sget-object v0, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v0, v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1763
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1764
    const-string v0, " SET "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    .line 1767
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1769
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1778
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1779
    const-string v0, " WHERE "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    :cond_3
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lock()V

    .line 1784
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1785
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1770
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1771
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    const-string v0, "=?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1774
    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1787
    :cond_5
    const/4 v1, 0x0

    .line 1789
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Linfo/guardianproject/database/sqlcipher/SQLiteStatement;

    move-result-object v1

    .line 1792
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    .line 1793
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1794
    const/4 v3, 0x1

    move v4, v2

    .line 1795
    :goto_1
    if-lt v4, v6, :cond_9

    .line 1801
    if-eqz p4, :cond_6

    .line 1802
    array-length v4, p4

    move v0, v2

    move v2, v3

    .line 1803
    :goto_2
    if-lt v0, v4, :cond_a

    .line 1810
    :cond_6
    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->execute()V

    .line 1811
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->lastChangeCount()I

    move-result v0

    .line 1812
    const-string v2, "Database"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1813
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updated "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Linfo/guardianproject/database/sqlcipher/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Linfo/guardianproject/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1823
    :cond_7
    if-eqz v1, :cond_8

    .line 1824
    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    .line 1826
    :cond_8
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1815
    return v0

    .line 1796
    :cond_9
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1797
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v3, v0}, Linfo/guardianproject/database/DatabaseUtils;->bindObjectToProgram(Linfo/guardianproject/database/sqlcipher/SQLiteProgram;ILjava/lang/Object;)V

    .line 1798
    add-int/lit8 v3, v3, 0x1

    .line 1795
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 1804
    :cond_a
    aget-object v3, p4, v0

    invoke-virtual {v1, v2, v3}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Linfo/guardianproject/database/sqlcipher/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Linfo/guardianproject/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1805
    add-int/lit8 v2, v2, 0x1

    .line 1803
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1816
    :catch_0
    move-exception v0

    .line 1817
    :try_start_2
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->onCorruption()V

    .line 1818
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1822
    :catchall_0
    move-exception v0

    .line 1823
    if-eqz v1, :cond_b

    .line 1824
    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteStatement;->close()V

    .line 1826
    :cond_b
    invoke-virtual {p0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->unlock()V

    .line 1827
    throw v0

    .line 1819
    :catch_1
    move-exception v0

    .line 1820
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error updating "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1821
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public yieldIfContended()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 713
    const/4 v0, 0x0

    .line 714
    const-wide/16 v1, -0x1

    .line 713
    invoke-direct {p0, v0, v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely()Z
    .locals 3

    .prologue
    .line 726
    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1
    .parameter

    .prologue
    .line 741
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method
