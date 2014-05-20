.class public final enum Lcom/tencent/mm/p/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum cnR:Lcom/tencent/mm/p/n;

.field public static final enum cnS:Lcom/tencent/mm/p/n;

.field public static final enum cnT:Lcom/tencent/mm/p/n;

.field private static final synthetic cnU:[Lcom/tencent/mm/p/n;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/tencent/mm/p/n;

    const-string v1, "INSTERT"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/p/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/p/n;->cnR:Lcom/tencent/mm/p/n;

    .line 43
    new-instance v0, Lcom/tencent/mm/p/n;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/p/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/p/n;->cnS:Lcom/tencent/mm/p/n;

    .line 44
    new-instance v0, Lcom/tencent/mm/p/n;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/p/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/p/n;->cnT:Lcom/tencent/mm/p/n;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/mm/p/n;

    sget-object v1, Lcom/tencent/mm/p/n;->cnR:Lcom/tencent/mm/p/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/p/n;->cnS:Lcom/tencent/mm/p/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mm/p/n;->cnT:Lcom/tencent/mm/p/n;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/mm/p/n;->cnU:[Lcom/tencent/mm/p/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/p/n;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/tencent/mm/p/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/p/n;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/p/n;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/tencent/mm/p/n;->cnU:[Lcom/tencent/mm/p/n;

    invoke-virtual {v0}, [Lcom/tencent/mm/p/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/p/n;

    return-object v0
.end method
