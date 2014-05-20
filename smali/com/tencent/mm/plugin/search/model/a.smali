.class public final Lcom/tencent/mm/plugin/search/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final egA:Ljava/util/Map;

.field public static final egB:[I

.field public static final egC:[I

.field public static final egD:[I

.field public static final egE:[I

.field public static final egF:[I

.field public static final egG:Ljava/util/regex/Pattern;

.field public static final egH:Ljava/util/regex/Pattern;

.field public static final egI:Ljava/util/regex/Pattern;

.field public static final egJ:Ljava/util/regex/Pattern;

.field public static final egw:[I

.field public static final egx:[I

.field public static final egy:[I

.field public static final egz:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x5

    const/4 v1, 0x0

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v2, 0x1

    aput v2, v0, v1

    sput-object v0, Lcom/tencent/mm/plugin/search/model/a;->egw:[I

    .line 21
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/mm/plugin/search/model/a;->egx:[I

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/mm/plugin/search/model/a;->egy:[I

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/tencent/mm/plugin/search/model/a;->egz:[I

    .line 69
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/tencent/mm/plugin/search/model/a;->egB:[I

    .line 84
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/tencent/mm/plugin/search/model/a;->egD:[I

    .line 94
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/tencent/mm/plugin/search/model/a;->egE:[I

    .line 105
    new-array v0, v4, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/tencent/mm/plugin/search/model/a;->egF:[I

    .line 165
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/plugin/search/model/a;->egG:Ljava/util/regex/Pattern;

    .line 166
    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/plugin/search/model/a;->egH:Ljava/util/regex/Pattern;

    .line 167
    const-string v0, "\u200b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/plugin/search/model/a;->egI:Ljava/util/regex/Pattern;

    .line 168
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/plugin/search/model/a;->egJ:Ljava/util/regex/Pattern;

    .line 177
    new-array v2, v3, [I

    fill-array-data v2, :array_7

    .line 185
    const/16 v0, 0x17

    new-array v3, v0, [I

    fill-array-data v3, :array_8

    .line 214
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    .line 215
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 216
    aget v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/plugin/search/model/a;->egA:Ljava/util/Map;

    .line 220
    array-length v0, v3

    new-array v0, v0, [I

    sput-object v0, Lcom/tencent/mm/plugin/search/model/a;->egC:[I

    .line 221
    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 222
    sget-object v0, Lcom/tencent/mm/plugin/search/model/a;->egC:[I

    aget v2, v3, v1

    aput v1, v0, v2

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    :cond_1
    return-void

    .line 21
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x2t 0x0t
        0x1t 0x0t 0x2t 0x0t
        0x2t 0x0t 0x2t 0x0t
        0x3t 0x0t 0x2t 0x0t
        0x4t 0x0t 0x2t 0x0t
    .end array-data

    .line 28
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x2t 0x0t
        0x1t 0x0t 0x2t 0x0t
        0x2t 0x0t 0x2t 0x0t
    .end array-data

    .line 33
    :array_2
    .array-data 0x4
        0x3t 0x0t 0x2t 0x0t
        0x4t 0x0t 0x2t 0x0t
    .end array-data

    .line 69
    :array_3
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data

    .line 84
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 94
    :array_5
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data

    .line 105
    :array_6
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 177
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x2t 0x0t
        0x3t 0x0t 0x2t 0x0t
        0x4t 0x0t 0x2t 0x0t
        0x1t 0x0t 0x2t 0x0t
        0x2t 0x0t 0x2t 0x0t
    .end array-data

    .line 185
    :array_8
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
