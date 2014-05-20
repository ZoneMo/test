.class public Lcom/tencent/tmassistantsdk/downloadservice/Downloads;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTENT_TYPE_APK:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final CONTENT_TYPE_APKDIFF:Ljava/lang/String; = "application/tm.android.apkdiff"

.field public static DOWNLOAD_ERR_CONNECT_TIMEOUT:I = 0x0

.field public static DOWNLOAD_ERR_HTTP_LOCATION_HEADER_IS_NULL:I = 0x0

.field public static DOWNLOAD_ERR_INTERRUPTED:I = 0x0

.field public static DOWNLOAD_ERR_IO_EXCEPTION:I = 0x0

.field public static DOWNLOAD_ERR_NONE:I = 0x0

.field public static DOWNLOAD_ERR_PARSER_CONTENT_FAILED:I = 0x0

.field public static DOWNLOAD_ERR_RANGE_NOT_MATCH:I = 0x0

.field public static DOWNLOAD_ERR_REDIRECT_TOO_MANY_TIMES:I = 0x0

.field public static DOWNLOAD_ERR_RESPONSE_IS_NULL:I = 0x0

.field public static DOWNLOAD_ERR_SET_RANGE_FAILED:I = 0x0

.field public static DOWNLOAD_ERR_SOCKET_EXCEPTION:I = 0x0

.field public static DOWNLOAD_ERR_SOCKET_TIMEOUT:I = 0x0

.field public static DOWNLOAD_ERR_TOTAL_SIZE_NOT_SAME:I = 0x0

.field public static DOWNLOAD_ERR_UNKNOWN_EXCEPTION:I = 0x0

.field public static DOWNLOAD_ERR_UNKNOWN_HOST:I = 0x0

.field public static DOWNLOAD_ERR_URL_HOOK:I = 0x0

.field public static DOWNLOAD_ERR_URL_INVALID:I = 0x0

.field public static DOWNLOAD_ERR_WRITE_FILE_FAILED:I = 0x0

.field public static DOWNLOAD_START_FAILED_BUSY:I = 0x0

.field public static DOWNLOAD_START_FAILED_EXISTED:I = 0x0

.field public static DOWNLOAD_START_FAILED_NETWORK_NOT_CONNECTED:I = 0x0

.field public static DOWNLOAD_START_FAILED_ONLY_FOR_WIFI:I = 0x0

.field public static DOWNLOAD_START_FAILED_PARAMETERS_INVALID:I = 0x0

.field public static DOWNLOAD_START_SUCCEED:I = 0x0

.field public static DOWNLOAD_STATUS_CANCELED:I = 0x0

.field public static DOWNLOAD_STATUS_DOWNLOADING:I = 0x0

.field public static DOWNLOAD_STATUS_FAILED:I = 0x0

.field public static DOWNLOAD_STATUS_INIT:I = 0x0

.field public static DOWNLOAD_STATUS_PAUSED:I = 0x0

.field public static DOWNLOAD_STATUS_SUCCEED:I = 0x0

.field public static DOWNLOAD_STATUS_WAITING:I = 0x0

.field public static final LOG_TYPE_DOWNLOAD:B = 0x0t

.field public static final MAX_REDIRESTS:I = 0x5

.field public static final MAX_RETIES:I = 0x5

.field public static final MAX_RETYR_AFTER:I = 0x5265c00

.field public static final MIN_RETYR_AFTER:I = 0x1388

.field public static final RECV_BUFFER_SIZE:I = 0x1000

.field public static final RESOURCE_TYPE_APK:B = 0x0t

.field public static final RESOURCE_TYPE_OPENSDK:B = 0x1t

.field public static SPLIT_RANGE_SIZE_NET:I

.field public static SPLIT_RANGE_SIZE_WAP:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11
    sput v1, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_STATUS_INIT:I

    .line 12
    sput v2, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_STATUS_WAITING:I

    .line 13
    sput v3, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_STATUS_DOWNLOADING:I

    .line 14
    sput v4, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_STATUS_PAUSED:I

    .line 15
    sput v5, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_STATUS_SUCCEED:I

    .line 16
    const/4 v0, 0x5

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_STATUS_FAILED:I

    .line 17
    const/4 v0, 0x6

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_STATUS_CANCELED:I

    .line 21
    const v0, 0x64000

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->SPLIT_RANGE_SIZE_WAP:I

    .line 22
    const v0, 0xe1000

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->SPLIT_RANGE_SIZE_NET:I

    .line 25
    sput v1, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_START_SUCCEED:I

    .line 26
    sput v2, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_START_FAILED_NETWORK_NOT_CONNECTED:I

    .line 27
    sput v3, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_START_FAILED_ONLY_FOR_WIFI:I

    .line 28
    sput v4, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_START_FAILED_PARAMETERS_INVALID:I

    .line 29
    sput v5, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_START_FAILED_EXISTED:I

    .line 30
    const/4 v0, 0x5

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_START_FAILED_BUSY:I

    .line 34
    sput v1, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_NONE:I

    .line 37
    const/16 v0, 0x258

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_INTERRUPTED:I

    .line 38
    const/16 v0, 0x259

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_CONNECT_TIMEOUT:I

    .line 39
    const/16 v0, 0x25a

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_SOCKET_TIMEOUT:I

    .line 40
    const/16 v0, 0x25b

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_UNKNOWN_HOST:I

    .line 41
    const/16 v0, 0x25c

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_UNKNOWN_EXCEPTION:I

    .line 42
    const/16 v0, 0x25d

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_SOCKET_EXCEPTION:I

    .line 43
    const/16 v0, 0x25d

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_IO_EXCEPTION:I

    .line 45
    const/16 v0, 0x2bc

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_URL_INVALID:I

    .line 46
    const/16 v0, 0x2bd

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_RESPONSE_IS_NULL:I

    .line 47
    const/16 v0, 0x2be

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_HTTP_LOCATION_HEADER_IS_NULL:I

    .line 48
    const/16 v0, 0x2bf

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_WRITE_FILE_FAILED:I

    .line 49
    const/16 v0, 0x2c0

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_PARSER_CONTENT_FAILED:I

    .line 50
    const/16 v0, 0x2c1

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_TOTAL_SIZE_NOT_SAME:I

    .line 51
    const/16 v0, 0x2c2

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_RANGE_NOT_MATCH:I

    .line 52
    const/16 v0, 0x2c3

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_SET_RANGE_FAILED:I

    .line 53
    const/16 v0, 0x2c4

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_URL_HOOK:I

    .line 54
    const/16 v0, 0x2c5

    sput v0, Lcom/tencent/tmassistantsdk/downloadservice/Downloads;->DOWNLOAD_ERR_REDIRECT_TOO_MANY_TIMES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
