.class public final enum Lcom/tencent/mm/ui/base/dx;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum gEi:Lcom/tencent/mm/ui/base/dx;

.field public static final enum gEj:Lcom/tencent/mm/ui/base/dx;

.field public static final enum gEk:Lcom/tencent/mm/ui/base/dx;

.field private static final synthetic gEl:[Lcom/tencent/mm/ui/base/dx;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2573
    new-instance v0, Lcom/tencent/mm/ui/base/dx;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/ui/base/dx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/base/dx;->gEi:Lcom/tencent/mm/ui/base/dx;

    .line 2578
    new-instance v0, Lcom/tencent/mm/ui/base/dx;

    const-string v1, "SPANNABLE"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/ui/base/dx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/base/dx;->gEj:Lcom/tencent/mm/ui/base/dx;

    .line 2583
    new-instance v0, Lcom/tencent/mm/ui/base/dx;

    const-string v1, "EDITABLE"

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/ui/base/dx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/base/dx;->gEk:Lcom/tencent/mm/ui/base/dx;

    .line 2568
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/mm/ui/base/dx;

    sget-object v1, Lcom/tencent/mm/ui/base/dx;->gEi:Lcom/tencent/mm/ui/base/dx;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/ui/base/dx;->gEj:Lcom/tencent/mm/ui/base/dx;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mm/ui/base/dx;->gEk:Lcom/tencent/mm/ui/base/dx;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/mm/ui/base/dx;->gEl:[Lcom/tencent/mm/ui/base/dx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2568
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/ui/base/dx;
    .locals 1
    .parameter

    .prologue
    .line 2568
    const-class v0, Lcom/tencent/mm/ui/base/dx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/dx;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/ui/base/dx;
    .locals 1

    .prologue
    .line 2568
    sget-object v0, Lcom/tencent/mm/ui/base/dx;->gEl:[Lcom/tencent/mm/ui/base/dx;

    invoke-virtual {v0}, [Lcom/tencent/mm/ui/base/dx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/ui/base/dx;

    return-object v0
.end method
