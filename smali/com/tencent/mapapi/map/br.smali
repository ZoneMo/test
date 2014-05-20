.class public final enum Lcom/tencent/mapapi/map/br;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum XG:Lcom/tencent/mapapi/map/br;

.field public static final enum XH:Lcom/tencent/mapapi/map/br;

.field public static final enum XI:Lcom/tencent/mapapi/map/br;

.field private static final synthetic XJ:[Lcom/tencent/mapapi/map/br;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/tencent/mapapi/map/br;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mapapi/map/br;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mapapi/map/br;->XG:Lcom/tencent/mapapi/map/br;

    .line 82
    new-instance v0, Lcom/tencent/mapapi/map/br;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mapapi/map/br;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mapapi/map/br;->XH:Lcom/tencent/mapapi/map/br;

    .line 86
    new-instance v0, Lcom/tencent/mapapi/map/br;

    const-string v1, "TRYING"

    invoke-direct {v0, v1, v4}, Lcom/tencent/mapapi/map/br;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mapapi/map/br;->XI:Lcom/tencent/mapapi/map/br;

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/mapapi/map/br;

    sget-object v1, Lcom/tencent/mapapi/map/br;->XG:Lcom/tencent/mapapi/map/br;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mapapi/map/br;->XH:Lcom/tencent/mapapi/map/br;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mapapi/map/br;->XI:Lcom/tencent/mapapi/map/br;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/mapapi/map/br;->XJ:[Lcom/tencent/mapapi/map/br;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mapapi/map/br;
    .locals 1
    .parameter

    .prologue
    .line 73
    const-class v0, Lcom/tencent/mapapi/map/br;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/br;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mapapi/map/br;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/tencent/mapapi/map/br;->XJ:[Lcom/tencent/mapapi/map/br;

    invoke-virtual {v0}, [Lcom/tencent/mapapi/map/br;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mapapi/map/br;

    return-object v0
.end method
