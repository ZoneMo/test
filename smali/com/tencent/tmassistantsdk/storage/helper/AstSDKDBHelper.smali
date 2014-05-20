.class public Lcom/tencent/tmassistantsdk/storage/helper/AstSDKDBHelper;
.super Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;
.source "SourceFile"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "tmassistant_sdk.db"

.field private static final DB_VERSION:I = 0x1

.field private static final TABLESS:[Ljava/lang/Class;

.field private static mInstance:Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmassistantsdk/storage/helper/AstSDKDBHelper;->mInstance:Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/tencent/tmassistantsdk/storage/table/DownloadSettingTable;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/tencent/tmassistantsdk/storage/table/DownloadLogTable;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tmassistantsdk/storage/helper/AstSDKDBHelper;->TABLESS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    const-string v0, "tmassistant_sdk.db"

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;
    .locals 6

    .prologue
    .line 38
    const-class v1, Lcom/tencent/tmassistantsdk/storage/helper/AstSDKDBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmassistantsdk/storage/helper/AstSDKDBHelper;->mInstance:Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/tencent/tmassistantsdk/storage/helper/AstSDKDBHelper;

    invoke-static {}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantsdk/util/GlobalUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmassistantsdk/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tmassistant_sdk.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/tencent/tmassistantsdk/storage/helper/AstSDKDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcom/tencent/tmassistantsdk/storage/helper/AstSDKDBHelper;->mInstance:Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;

    .line 41
    :cond_0
    sget-object v0, Lcom/tencent/tmassistantsdk/storage/helper/AstSDKDBHelper;->mInstance:Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getDBVersion()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public getTables()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/tmassistantsdk/storage/helper/AstSDKDBHelper;->TABLESS:[Ljava/lang/Class;

    return-object v0
.end method
