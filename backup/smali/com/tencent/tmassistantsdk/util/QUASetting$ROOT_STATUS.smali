.class public final enum Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

.field public static final enum ROOTED:Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

.field public static final enum UNKNOWN:Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

.field public static final enum UNROOTED:Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;->UNKNOWN:Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

    new-instance v0, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

    const-string v1, "ROOTED"

    invoke-direct {v0, v1, v3}, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;->ROOTED:Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

    new-instance v0, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

    const-string v1, "UNROOTED"

    invoke-direct {v0, v1, v4}, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;->UNROOTED:Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

    sget-object v1, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;->UNKNOWN:Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;->ROOTED:Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;->UNROOTED:Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;->$VALUES:[Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;->$VALUES:[Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

    invoke-virtual {v0}, [Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tmassistantsdk/util/QUASetting$ROOT_STATUS;

    return-object v0
.end method
