.class public final enum Lcom/tencent/mm/model/bt;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ciX:Lcom/tencent/mm/model/bt;

.field public static final enum ciY:Lcom/tencent/mm/model/bt;

.field public static final enum ciZ:Lcom/tencent/mm/model/bt;

.field public static final enum cja:Lcom/tencent/mm/model/bt;

.field private static final synthetic cjb:[Lcom/tencent/mm/model/bt;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 230
    new-instance v0, Lcom/tencent/mm/model/bt;

    const-string v1, "NO_INIT"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/model/bt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/model/bt;->ciX:Lcom/tencent/mm/model/bt;

    new-instance v0, Lcom/tencent/mm/model/bt;

    const-string v1, "SET_MOBILE"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/model/bt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/model/bt;->ciY:Lcom/tencent/mm/model/bt;

    new-instance v0, Lcom/tencent/mm/model/bt;

    const-string v1, "SUCC"

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/model/bt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/model/bt;->ciZ:Lcom/tencent/mm/model/bt;

    new-instance v0, Lcom/tencent/mm/model/bt;

    const-string v1, "SUCC_UNLOAD"

    invoke-direct {v0, v1, v5}, Lcom/tencent/mm/model/bt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/model/bt;->cja:Lcom/tencent/mm/model/bt;

    .line 229
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/mm/model/bt;

    sget-object v1, Lcom/tencent/mm/model/bt;->ciX:Lcom/tencent/mm/model/bt;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/model/bt;->ciY:Lcom/tencent/mm/model/bt;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mm/model/bt;->ciZ:Lcom/tencent/mm/model/bt;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/mm/model/bt;->cja:Lcom/tencent/mm/model/bt;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/mm/model/bt;->cjb:[Lcom/tencent/mm/model/bt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/model/bt;
    .locals 1
    .parameter

    .prologue
    .line 229
    const-class v0, Lcom/tencent/mm/model/bt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/bt;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/model/bt;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/tencent/mm/model/bt;->cjb:[Lcom/tencent/mm/model/bt;

    invoke-virtual {v0}, [Lcom/tencent/mm/model/bt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/model/bt;

    return-object v0
.end method
