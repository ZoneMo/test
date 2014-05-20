.class public final enum Lcom/tencent/mm/ui/c/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum hsh:Lcom/tencent/mm/ui/c/g;

.field public static final enum hsi:Lcom/tencent/mm/ui/c/g;

.field public static final enum hsj:Lcom/tencent/mm/ui/c/g;

.field private static final synthetic hsk:[Lcom/tencent/mm/ui/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/tencent/mm/ui/c/g;

    const-string v1, "Finished"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/ui/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/c/g;->hsh:Lcom/tencent/mm/ui/c/g;

    new-instance v0, Lcom/tencent/mm/ui/c/g;

    const-string v1, "Failed"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/ui/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/c/g;->hsi:Lcom/tencent/mm/ui/c/g;

    new-instance v0, Lcom/tencent/mm/ui/c/g;

    const-string v1, "Canceled"

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/ui/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/c/g;->hsj:Lcom/tencent/mm/ui/c/g;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/mm/ui/c/g;

    sget-object v1, Lcom/tencent/mm/ui/c/g;->hsh:Lcom/tencent/mm/ui/c/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/ui/c/g;->hsi:Lcom/tencent/mm/ui/c/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mm/ui/c/g;->hsj:Lcom/tencent/mm/ui/c/g;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/mm/ui/c/g;->hsk:[Lcom/tencent/mm/ui/c/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/ui/c/g;
    .locals 1
    .parameter

    .prologue
    .line 38
    const-class v0, Lcom/tencent/mm/ui/c/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/c/g;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/ui/c/g;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/tencent/mm/ui/c/g;->hsk:[Lcom/tencent/mm/ui/c/g;

    invoke-virtual {v0}, [Lcom/tencent/mm/ui/c/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/ui/c/g;

    return-object v0
.end method
