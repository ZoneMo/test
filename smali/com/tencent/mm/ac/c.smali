.class public final enum Lcom/tencent/mm/ac/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum cww:Lcom/tencent/mm/ac/c;

.field public static final enum cwx:Lcom/tencent/mm/ac/c;

.field public static final enum cwy:Lcom/tencent/mm/ac/c;

.field private static final synthetic cwz:[Lcom/tencent/mm/ac/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    new-instance v0, Lcom/tencent/mm/ac/c;

    const-string v1, "ASSET"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/ac/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ac/c;->cww:Lcom/tencent/mm/ac/c;

    .line 141
    new-instance v0, Lcom/tencent/mm/ac/c;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/ac/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ac/c;->cwx:Lcom/tencent/mm/ac/c;

    .line 142
    new-instance v0, Lcom/tencent/mm/ac/c;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/ac/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ac/c;->cwy:Lcom/tencent/mm/ac/c;

    .line 139
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/mm/ac/c;

    sget-object v1, Lcom/tencent/mm/ac/c;->cww:Lcom/tencent/mm/ac/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/ac/c;->cwx:Lcom/tencent/mm/ac/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mm/ac/c;->cwy:Lcom/tencent/mm/ac/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/mm/ac/c;->cwz:[Lcom/tencent/mm/ac/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/ac/c;
    .locals 1
    .parameter

    .prologue
    .line 139
    const-class v0, Lcom/tencent/mm/ac/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ac/c;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/ac/c;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/tencent/mm/ac/c;->cwz:[Lcom/tencent/mm/ac/c;

    invoke-virtual {v0}, [Lcom/tencent/mm/ac/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/ac/c;

    return-object v0
.end method
