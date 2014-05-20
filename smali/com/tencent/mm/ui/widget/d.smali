.class public final enum Lcom/tencent/mm/ui/widget/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic hvA:[Lcom/tencent/mm/ui/widget/d;

.field public static final enum hvr:Lcom/tencent/mm/ui/widget/d;

.field public static final enum hvs:Lcom/tencent/mm/ui/widget/d;

.field public static final enum hvt:Lcom/tencent/mm/ui/widget/d;

.field public static final enum hvu:Lcom/tencent/mm/ui/widget/d;

.field public static final enum hvv:Lcom/tencent/mm/ui/widget/d;

.field public static final enum hvw:Lcom/tencent/mm/ui/widget/d;

.field public static final enum hvx:Lcom/tencent/mm/ui/widget/d;

.field public static final enum hvy:Lcom/tencent/mm/ui/widget/d;


# instance fields
.field final hvz:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 441
    new-instance v0, Lcom/tencent/mm/ui/widget/d;

    const-string v1, "MATRIX"

    invoke-direct {v0, v1, v4, v4}, Lcom/tencent/mm/ui/widget/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/ui/widget/d;->hvr:Lcom/tencent/mm/ui/widget/d;

    .line 446
    new-instance v0, Lcom/tencent/mm/ui/widget/d;

    const-string v1, "FIT_XY"

    invoke-direct {v0, v1, v5, v5}, Lcom/tencent/mm/ui/widget/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/ui/widget/d;->hvs:Lcom/tencent/mm/ui/widget/d;

    .line 451
    new-instance v0, Lcom/tencent/mm/ui/widget/d;

    const-string v1, "FIT_START"

    invoke-direct {v0, v1, v6, v6}, Lcom/tencent/mm/ui/widget/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/ui/widget/d;->hvt:Lcom/tencent/mm/ui/widget/d;

    .line 456
    new-instance v0, Lcom/tencent/mm/ui/widget/d;

    const-string v1, "FIT_CENTER"

    invoke-direct {v0, v1, v7, v7}, Lcom/tencent/mm/ui/widget/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/ui/widget/d;->hvu:Lcom/tencent/mm/ui/widget/d;

    .line 461
    new-instance v0, Lcom/tencent/mm/ui/widget/d;

    const-string v1, "FIT_END"

    invoke-direct {v0, v1, v8, v8}, Lcom/tencent/mm/ui/widget/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/ui/widget/d;->hvv:Lcom/tencent/mm/ui/widget/d;

    .line 466
    new-instance v0, Lcom/tencent/mm/ui/widget/d;

    const-string v1, "CENTER"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/widget/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/ui/widget/d;->hvw:Lcom/tencent/mm/ui/widget/d;

    .line 474
    new-instance v0, Lcom/tencent/mm/ui/widget/d;

    const-string v1, "CENTER_CROP"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/widget/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/ui/widget/d;->hvx:Lcom/tencent/mm/ui/widget/d;

    .line 482
    new-instance v0, Lcom/tencent/mm/ui/widget/d;

    const-string v1, "CENTER_INSIDE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/ui/widget/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/ui/widget/d;->hvy:Lcom/tencent/mm/ui/widget/d;

    .line 435
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/tencent/mm/ui/widget/d;

    sget-object v1, Lcom/tencent/mm/ui/widget/d;->hvr:Lcom/tencent/mm/ui/widget/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/mm/ui/widget/d;->hvs:Lcom/tencent/mm/ui/widget/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/mm/ui/widget/d;->hvt:Lcom/tencent/mm/ui/widget/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/mm/ui/widget/d;->hvu:Lcom/tencent/mm/ui/widget/d;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/mm/ui/widget/d;->hvv:Lcom/tencent/mm/ui/widget/d;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/mm/ui/widget/d;->hvw:Lcom/tencent/mm/ui/widget/d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/mm/ui/widget/d;->hvx:Lcom/tencent/mm/ui/widget/d;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/mm/ui/widget/d;->hvy:Lcom/tencent/mm/ui/widget/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/ui/widget/d;->hvA:[Lcom/tencent/mm/ui/widget/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 484
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 485
    iput p3, p0, Lcom/tencent/mm/ui/widget/d;->hvz:I

    .line 486
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/ui/widget/d;
    .locals 1
    .parameter

    .prologue
    .line 435
    const-class v0, Lcom/tencent/mm/ui/widget/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/widget/d;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/ui/widget/d;
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lcom/tencent/mm/ui/widget/d;->hvA:[Lcom/tencent/mm/ui/widget/d;

    invoke-virtual {v0}, [Lcom/tencent/mm/ui/widget/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/ui/widget/d;

    return-object v0
.end method
