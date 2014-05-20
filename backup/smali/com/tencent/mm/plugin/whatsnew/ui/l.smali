.class final enum Lcom/tencent/mm/plugin/whatsnew/ui/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

.field public static final enum ffR:Lcom/tencent/mm/plugin/whatsnew/ui/l;

.field private static final synthetic ffS:[Lcom/tencent/mm/plugin/whatsnew/ui/l;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 803
    new-instance v0, Lcom/tencent/mm/plugin/whatsnew/ui/l;

    const-string v1, "TextEvent"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/plugin/whatsnew/ui/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    new-instance v0, Lcom/tencent/mm/plugin/whatsnew/ui/l;

    const-string v1, "AvatarEvent"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/plugin/whatsnew/ui/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffR:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    .line 802
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/mm/plugin/whatsnew/ui/l;

    sget-object v1, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffQ:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffR:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffS:[Lcom/tencent/mm/plugin/whatsnew/ui/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 802
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/plugin/whatsnew/ui/l;
    .locals 1
    .parameter

    .prologue
    .line 802
    const-class v0, Lcom/tencent/mm/plugin/whatsnew/ui/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/whatsnew/ui/l;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/plugin/whatsnew/ui/l;
    .locals 1

    .prologue
    .line 802
    sget-object v0, Lcom/tencent/mm/plugin/whatsnew/ui/l;->ffS:[Lcom/tencent/mm/plugin/whatsnew/ui/l;

    invoke-virtual {v0}, [Lcom/tencent/mm/plugin/whatsnew/ui/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/plugin/whatsnew/ui/l;

    return-object v0
.end method
