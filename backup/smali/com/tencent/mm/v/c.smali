.class public final enum Lcom/tencent/mm/v/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum csJ:Lcom/tencent/mm/v/c;

.field public static final enum csK:Lcom/tencent/mm/v/c;

.field private static final synthetic csL:[Lcom/tencent/mm/v/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/tencent/mm/v/c;

    const-string v1, "MM_BIND_GCONTACT_OPCODE_BIND"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/v/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/v/c;->csJ:Lcom/tencent/mm/v/c;

    new-instance v0, Lcom/tencent/mm/v/c;

    const-string v1, "MM_BIND_GCONTACT_OPCODE_UNBIND"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/v/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/v/c;->csK:Lcom/tencent/mm/v/c;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/mm/v/c;

    sget-object v1, Lcom/tencent/mm/v/c;->csJ:Lcom/tencent/mm/v/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/v/c;->csK:Lcom/tencent/mm/v/c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/mm/v/c;->csL:[Lcom/tencent/mm/v/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/v/c;
    .locals 1
    .parameter

    .prologue
    .line 18
    const-class v0, Lcom/tencent/mm/v/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/v/c;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/v/c;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/tencent/mm/v/c;->csL:[Lcom/tencent/mm/v/c;

    invoke-virtual {v0}, [Lcom/tencent/mm/v/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/v/c;

    return-object v0
.end method
