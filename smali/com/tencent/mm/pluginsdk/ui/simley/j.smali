.class public final enum Lcom/tencent/mm/pluginsdk/ui/simley/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ftt:Lcom/tencent/mm/pluginsdk/ui/simley/j;

.field public static final enum ftu:Lcom/tencent/mm/pluginsdk/ui/simley/j;

.field public static final enum ftv:Lcom/tencent/mm/pluginsdk/ui/simley/j;

.field public static final enum ftw:Lcom/tencent/mm/pluginsdk/ui/simley/j;

.field private static final synthetic ftx:[Lcom/tencent/mm/pluginsdk/ui/simley/j;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/simley/j;

    const-string v1, "default_qq"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/ui/simley/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/j;->ftt:Lcom/tencent/mm/pluginsdk/ui/simley/j;

    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/simley/j;

    const-string v1, "system"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/pluginsdk/ui/simley/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/j;->ftu:Lcom/tencent/mm/pluginsdk/ui/simley/j;

    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/simley/j;

    const-string v1, "custom"

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/pluginsdk/ui/simley/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/j;->ftv:Lcom/tencent/mm/pluginsdk/ui/simley/j;

    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/simley/j;

    const-string v1, "others"

    invoke-direct {v0, v1, v5}, Lcom/tencent/mm/pluginsdk/ui/simley/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/j;->ftw:Lcom/tencent/mm/pluginsdk/ui/simley/j;

    .line 106
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/mm/pluginsdk/ui/simley/j;

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/simley/j;->ftt:Lcom/tencent/mm/pluginsdk/ui/simley/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/simley/j;->ftu:Lcom/tencent/mm/pluginsdk/ui/simley/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/simley/j;->ftv:Lcom/tencent/mm/pluginsdk/ui/simley/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/mm/pluginsdk/ui/simley/j;->ftw:Lcom/tencent/mm/pluginsdk/ui/simley/j;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/j;->ftx:[Lcom/tencent/mm/pluginsdk/ui/simley/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/ui/simley/j;
    .locals 1
    .parameter

    .prologue
    .line 106
    const-class v0, Lcom/tencent/mm/pluginsdk/ui/simley/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/simley/j;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/pluginsdk/ui/simley/j;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/tencent/mm/pluginsdk/ui/simley/j;->ftx:[Lcom/tencent/mm/pluginsdk/ui/simley/j;

    invoke-virtual {v0}, [Lcom/tencent/mm/pluginsdk/ui/simley/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/pluginsdk/ui/simley/j;

    return-object v0
.end method
