.class public final enum Lcom/tencent/mm/ui/friend/cx;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum hcs:Lcom/tencent/mm/ui/friend/cx;

.field public static final enum hct:Lcom/tencent/mm/ui/friend/cx;

.field public static final enum hcu:Lcom/tencent/mm/ui/friend/cx;

.field private static final synthetic hcv:[Lcom/tencent/mm/ui/friend/cx;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/tencent/mm/ui/friend/cx;

    const-string v1, "REGISTERBYMOBILE"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/ui/friend/cx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/friend/cx;->hcs:Lcom/tencent/mm/ui/friend/cx;

    new-instance v0, Lcom/tencent/mm/ui/friend/cx;

    const-string v1, "BINDMOBILE"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/ui/friend/cx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/friend/cx;->hct:Lcom/tencent/mm/ui/friend/cx;

    new-instance v0, Lcom/tencent/mm/ui/friend/cx;

    const-string v1, "CHANGEMOBILE"

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/ui/friend/cx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/ui/friend/cx;->hcu:Lcom/tencent/mm/ui/friend/cx;

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/mm/ui/friend/cx;

    sget-object v1, Lcom/tencent/mm/ui/friend/cx;->hcs:Lcom/tencent/mm/ui/friend/cx;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/ui/friend/cx;->hct:Lcom/tencent/mm/ui/friend/cx;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mm/ui/friend/cx;->hcu:Lcom/tencent/mm/ui/friend/cx;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/mm/ui/friend/cx;->hcv:[Lcom/tencent/mm/ui/friend/cx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/ui/friend/cx;
    .locals 1
    .parameter

    .prologue
    .line 80
    const-class v0, Lcom/tencent/mm/ui/friend/cx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/friend/cx;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/ui/friend/cx;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/tencent/mm/ui/friend/cx;->hcv:[Lcom/tencent/mm/ui/friend/cx;

    invoke-virtual {v0}, [Lcom/tencent/mm/ui/friend/cx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/ui/friend/cx;

    return-object v0
.end method
