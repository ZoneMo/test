.class public final enum Lcom/tencent/mm/ui/account/ky;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum guq:Lcom/tencent/mm/ui/account/ky;

.field public static final enum gur:Lcom/tencent/mm/ui/account/ky;

.field public static final enum gus:Lcom/tencent/mm/ui/account/ky;

.field public static final enum gut:Lcom/tencent/mm/ui/account/ky;

.field private static final synthetic guu:[Lcom/tencent/mm/ui/account/ky;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/tencent/mm/ui/account/ky;

    const-string v1, "TwoPasswordsNotMatch"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/ui/account/ky;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/account/ky;->guq:Lcom/tencent/mm/ui/account/ky;

    .line 48
    new-instance v0, Lcom/tencent/mm/ui/account/ky;

    const-string v1, "BeyondMaximumLength"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/ui/account/ky;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/account/ky;->gur:Lcom/tencent/mm/ui/account/ky;

    .line 49
    new-instance v0, Lcom/tencent/mm/ui/account/ky;

    const-string v1, "NotReachMinimumLength"

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/ui/account/ky;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/account/ky;->gus:Lcom/tencent/mm/ui/account/ky;

    .line 50
    new-instance v0, Lcom/tencent/mm/ui/account/ky;

    const-string v1, "DisallowShortNumericPassword"

    invoke-direct {v0, v1, v5}, Lcom/tencent/mm/ui/account/ky;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/account/ky;->gut:Lcom/tencent/mm/ui/account/ky;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/mm/ui/account/ky;

    sget-object v1, Lcom/tencent/mm/ui/account/ky;->guq:Lcom/tencent/mm/ui/account/ky;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/ui/account/ky;->gur:Lcom/tencent/mm/ui/account/ky;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mm/ui/account/ky;->gus:Lcom/tencent/mm/ui/account/ky;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/mm/ui/account/ky;->gut:Lcom/tencent/mm/ui/account/ky;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/mm/ui/account/ky;->guu:[Lcom/tencent/mm/ui/account/ky;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/ui/account/ky;
    .locals 1
    .parameter

    .prologue
    .line 46
    const-class v0, Lcom/tencent/mm/ui/account/ky;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/account/ky;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/ui/account/ky;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/tencent/mm/ui/account/ky;->guu:[Lcom/tencent/mm/ui/account/ky;

    invoke-virtual {v0}, [Lcom/tencent/mm/ui/account/ky;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/ui/account/ky;

    return-object v0
.end method
