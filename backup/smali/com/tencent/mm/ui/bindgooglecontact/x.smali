.class public final enum Lcom/tencent/mm/ui/bindgooglecontact/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum gIb:Lcom/tencent/mm/ui/bindgooglecontact/x;

.field public static final enum gIc:Lcom/tencent/mm/ui/bindgooglecontact/x;

.field public static final enum gId:Lcom/tencent/mm/ui/bindgooglecontact/x;

.field public static final enum gIe:Lcom/tencent/mm/ui/bindgooglecontact/x;

.field private static final synthetic gIf:[Lcom/tencent/mm/ui/bindgooglecontact/x;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/tencent/mm/ui/bindgooglecontact/x;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/ui/bindgooglecontact/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/bindgooglecontact/x;->gIb:Lcom/tencent/mm/ui/bindgooglecontact/x;

    new-instance v0, Lcom/tencent/mm/ui/bindgooglecontact/x;

    const-string v1, "NO_CONTACT"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/ui/bindgooglecontact/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/bindgooglecontact/x;->gIc:Lcom/tencent/mm/ui/bindgooglecontact/x;

    new-instance v0, Lcom/tencent/mm/ui/bindgooglecontact/x;

    const-string v1, "ACCESS_DEDY"

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/ui/bindgooglecontact/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/bindgooglecontact/x;->gId:Lcom/tencent/mm/ui/bindgooglecontact/x;

    new-instance v0, Lcom/tencent/mm/ui/bindgooglecontact/x;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/tencent/mm/ui/bindgooglecontact/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/bindgooglecontact/x;->gIe:Lcom/tencent/mm/ui/bindgooglecontact/x;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/mm/ui/bindgooglecontact/x;

    sget-object v1, Lcom/tencent/mm/ui/bindgooglecontact/x;->gIb:Lcom/tencent/mm/ui/bindgooglecontact/x;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/ui/bindgooglecontact/x;->gIc:Lcom/tencent/mm/ui/bindgooglecontact/x;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mm/ui/bindgooglecontact/x;->gId:Lcom/tencent/mm/ui/bindgooglecontact/x;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/mm/ui/bindgooglecontact/x;->gIe:Lcom/tencent/mm/ui/bindgooglecontact/x;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/mm/ui/bindgooglecontact/x;->gIf:[Lcom/tencent/mm/ui/bindgooglecontact/x;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/ui/bindgooglecontact/x;
    .locals 1
    .parameter

    .prologue
    .line 76
    const-class v0, Lcom/tencent/mm/ui/bindgooglecontact/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bindgooglecontact/x;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/ui/bindgooglecontact/x;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/tencent/mm/ui/bindgooglecontact/x;->gIf:[Lcom/tencent/mm/ui/bindgooglecontact/x;

    invoke-virtual {v0}, [Lcom/tencent/mm/ui/bindgooglecontact/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/ui/bindgooglecontact/x;

    return-object v0
.end method
