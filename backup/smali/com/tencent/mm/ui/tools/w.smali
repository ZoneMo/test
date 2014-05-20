.class public final enum Lcom/tencent/mm/ui/tools/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum hhA:Lcom/tencent/mm/ui/tools/w;

.field public static final enum hhB:Lcom/tencent/mm/ui/tools/w;

.field public static final enum hhC:Lcom/tencent/mm/ui/tools/w;

.field private static final synthetic hhD:[Lcom/tencent/mm/ui/tools/w;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 623
    new-instance v0, Lcom/tencent/mm/ui/tools/w;

    const-string v1, "UNINSTALL"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/ui/tools/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/tools/w;->hhA:Lcom/tencent/mm/ui/tools/w;

    new-instance v0, Lcom/tencent/mm/ui/tools/w;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/ui/tools/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/tools/w;->hhB:Lcom/tencent/mm/ui/tools/w;

    new-instance v0, Lcom/tencent/mm/ui/tools/w;

    const-string v1, "DOWNLOADED"

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/ui/tools/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/tools/w;->hhC:Lcom/tencent/mm/ui/tools/w;

    .line 622
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/mm/ui/tools/w;

    sget-object v1, Lcom/tencent/mm/ui/tools/w;->hhA:Lcom/tencent/mm/ui/tools/w;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/ui/tools/w;->hhB:Lcom/tencent/mm/ui/tools/w;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mm/ui/tools/w;->hhC:Lcom/tencent/mm/ui/tools/w;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/mm/ui/tools/w;->hhD:[Lcom/tencent/mm/ui/tools/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 622
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/ui/tools/w;
    .locals 1
    .parameter

    .prologue
    .line 622
    const-class v0, Lcom/tencent/mm/ui/tools/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/w;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/ui/tools/w;
    .locals 1

    .prologue
    .line 622
    sget-object v0, Lcom/tencent/mm/ui/tools/w;->hhD:[Lcom/tencent/mm/ui/tools/w;

    invoke-virtual {v0}, [Lcom/tencent/mm/ui/tools/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/ui/tools/w;

    return-object v0
.end method
