.class public final enum Lcom/tencent/mm/ui/base/dv;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum gCP:Lcom/tencent/mm/ui/base/dv;

.field public static final enum gCQ:Lcom/tencent/mm/ui/base/dv;

.field public static final enum gCR:Lcom/tencent/mm/ui/base/dv;

.field public static final enum gCS:Lcom/tencent/mm/ui/base/dv;

.field public static final enum gCT:Lcom/tencent/mm/ui/base/dv;

.field private static final synthetic gCU:[Lcom/tencent/mm/ui/base/dv;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/tencent/mm/ui/base/dv;

    const-string v1, "SUBSCRIPT_DRAWABLE_DIRECTION_TOP_RIGHT"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/ui/base/dv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/base/dv;->gCP:Lcom/tencent/mm/ui/base/dv;

    .line 28
    new-instance v0, Lcom/tencent/mm/ui/base/dv;

    const-string v1, "SUBSCRIPT_DRAWABLE_DIRECTION_TOP_LEFT"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/ui/base/dv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/base/dv;->gCQ:Lcom/tencent/mm/ui/base/dv;

    .line 29
    new-instance v0, Lcom/tencent/mm/ui/base/dv;

    const-string v1, "SUBSCRIPT_DRAWABLE_DIRECTION_BOTTOM_RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/ui/base/dv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/base/dv;->gCR:Lcom/tencent/mm/ui/base/dv;

    .line 30
    new-instance v0, Lcom/tencent/mm/ui/base/dv;

    const-string v1, "SUBSCRIPT_DRAWABLE_DIRECTION_BOTTOM_LEFT"

    invoke-direct {v0, v1, v5}, Lcom/tencent/mm/ui/base/dv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/base/dv;->gCS:Lcom/tencent/mm/ui/base/dv;

    .line 31
    new-instance v0, Lcom/tencent/mm/ui/base/dv;

    const-string v1, "SUBSCRIPT_DRAWABLE_DIRECTION_ALL"

    invoke-direct {v0, v1, v6}, Lcom/tencent/mm/ui/base/dv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/base/dv;->gCT:Lcom/tencent/mm/ui/base/dv;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/tencent/mm/ui/base/dv;

    sget-object v1, Lcom/tencent/mm/ui/base/dv;->gCP:Lcom/tencent/mm/ui/base/dv;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/ui/base/dv;->gCQ:Lcom/tencent/mm/ui/base/dv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mm/ui/base/dv;->gCR:Lcom/tencent/mm/ui/base/dv;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/mm/ui/base/dv;->gCS:Lcom/tencent/mm/ui/base/dv;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/mm/ui/base/dv;->gCT:Lcom/tencent/mm/ui/base/dv;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tencent/mm/ui/base/dv;->gCU:[Lcom/tencent/mm/ui/base/dv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/ui/base/dv;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/tencent/mm/ui/base/dv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/dv;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/ui/base/dv;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/tencent/mm/ui/base/dv;->gCU:[Lcom/tencent/mm/ui/base/dv;

    invoke-virtual {v0}, [Lcom/tencent/mm/ui/base/dv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/ui/base/dv;

    return-object v0
.end method
