.class public final enum Lcom/tencent/mm/modelfriend/aa;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum cra:Lcom/tencent/mm/modelfriend/aa;

.field public static final enum crb:Lcom/tencent/mm/modelfriend/aa;

.field public static final enum crc:Lcom/tencent/mm/modelfriend/aa;

.field public static final enum crd:Lcom/tencent/mm/modelfriend/aa;

.field private static final synthetic cre:[Lcom/tencent/mm/modelfriend/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/tencent/mm/modelfriend/aa;

    const-string v1, "NO_INIT"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelfriend/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/modelfriend/aa;->cra:Lcom/tencent/mm/modelfriend/aa;

    new-instance v0, Lcom/tencent/mm/modelfriend/aa;

    const-string v1, "SET_MOBILE"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/modelfriend/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/modelfriend/aa;->crb:Lcom/tencent/mm/modelfriend/aa;

    new-instance v0, Lcom/tencent/mm/modelfriend/aa;

    const-string v1, "SUCC"

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/modelfriend/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/modelfriend/aa;->crc:Lcom/tencent/mm/modelfriend/aa;

    new-instance v0, Lcom/tencent/mm/modelfriend/aa;

    const-string v1, "SUCC_UNLOAD"

    invoke-direct {v0, v1, v5}, Lcom/tencent/mm/modelfriend/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/modelfriend/aa;->crd:Lcom/tencent/mm/modelfriend/aa;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/mm/modelfriend/aa;

    sget-object v1, Lcom/tencent/mm/modelfriend/aa;->cra:Lcom/tencent/mm/modelfriend/aa;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/modelfriend/aa;->crb:Lcom/tencent/mm/modelfriend/aa;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mm/modelfriend/aa;->crc:Lcom/tencent/mm/modelfriend/aa;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/mm/modelfriend/aa;->crd:Lcom/tencent/mm/modelfriend/aa;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/mm/modelfriend/aa;->cre:[Lcom/tencent/mm/modelfriend/aa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/modelfriend/aa;
    .locals 1
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/tencent/mm/modelfriend/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelfriend/aa;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/modelfriend/aa;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/tencent/mm/modelfriend/aa;->cre:[Lcom/tencent/mm/modelfriend/aa;

    invoke-virtual {v0}, [Lcom/tencent/mm/modelfriend/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/modelfriend/aa;

    return-object v0
.end method
