.class public final enum Lcom/tencent/mapapi/map/bs;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum XK:Lcom/tencent/mapapi/map/bs;

.field public static final enum XL:Lcom/tencent/mapapi/map/bs;

.field private static final synthetic XM:[Lcom/tencent/mapapi/map/bs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/tencent/mapapi/map/bs;

    const-string v1, "GOOGLE"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mapapi/map/bs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mapapi/map/bs;->XK:Lcom/tencent/mapapi/map/bs;

    .line 65
    new-instance v0, Lcom/tencent/mapapi/map/bs;

    const-string v1, "SOSO"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mapapi/map/bs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mapapi/map/bs;->XL:Lcom/tencent/mapapi/map/bs;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/mapapi/map/bs;

    sget-object v1, Lcom/tencent/mapapi/map/bs;->XK:Lcom/tencent/mapapi/map/bs;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mapapi/map/bs;->XL:Lcom/tencent/mapapi/map/bs;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/mapapi/map/bs;->XM:[Lcom/tencent/mapapi/map/bs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mapapi/map/bs;
    .locals 1
    .parameter

    .prologue
    .line 62
    const-class v0, Lcom/tencent/mapapi/map/bs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/bs;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mapapi/map/bs;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/tencent/mapapi/map/bs;->XM:[Lcom/tencent/mapapi/map/bs;

    invoke-virtual {v0}, [Lcom/tencent/mapapi/map/bs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mapapi/map/bs;

    return-object v0
.end method
