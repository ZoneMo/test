.class public final enum Lcom/tencent/mm/ui/tools/jsapi/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum hoY:Lcom/tencent/mm/ui/tools/jsapi/i;

.field public static final enum hoZ:Lcom/tencent/mm/ui/tools/jsapi/i;

.field public static final enum hpa:Lcom/tencent/mm/ui/tools/jsapi/i;

.field public static final enum hpb:Lcom/tencent/mm/ui/tools/jsapi/i;

.field private static final synthetic hpc:[Lcom/tencent/mm/ui/tools/jsapi/i;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/tencent/mm/ui/tools/jsapi/i;

    const-string v1, "RET_INVALID"

    invoke-direct {v0, v1, v3, v3}, Lcom/tencent/mm/ui/tools/jsapi/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/ui/tools/jsapi/i;->hoY:Lcom/tencent/mm/ui/tools/jsapi/i;

    new-instance v0, Lcom/tencent/mm/ui/tools/jsapi/i;

    const-string v1, "RET_OK"

    invoke-direct {v0, v1, v4, v4}, Lcom/tencent/mm/ui/tools/jsapi/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/ui/tools/jsapi/i;->hoZ:Lcom/tencent/mm/ui/tools/jsapi/i;

    new-instance v0, Lcom/tencent/mm/ui/tools/jsapi/i;

    const-string v1, "RET_FAIL"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/mm/ui/tools/jsapi/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/ui/tools/jsapi/i;->hpa:Lcom/tencent/mm/ui/tools/jsapi/i;

    new-instance v0, Lcom/tencent/mm/ui/tools/jsapi/i;

    const-string v1, "RET_REJECT"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v6, v2}, Lcom/tencent/mm/ui/tools/jsapi/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/ui/tools/jsapi/i;->hpb:Lcom/tencent/mm/ui/tools/jsapi/i;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/mm/ui/tools/jsapi/i;

    sget-object v1, Lcom/tencent/mm/ui/tools/jsapi/i;->hoY:Lcom/tencent/mm/ui/tools/jsapi/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mm/ui/tools/jsapi/i;->hoZ:Lcom/tencent/mm/ui/tools/jsapi/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/mm/ui/tools/jsapi/i;->hpa:Lcom/tencent/mm/ui/tools/jsapi/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/mm/ui/tools/jsapi/i;->hpb:Lcom/tencent/mm/ui/tools/jsapi/i;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tencent/mm/ui/tools/jsapi/i;->hpc:[Lcom/tencent/mm/ui/tools/jsapi/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/tencent/mm/ui/tools/jsapi/i;->code:I

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/ui/tools/jsapi/i;
    .locals 1
    .parameter

    .prologue
    .line 34
    const-class v0, Lcom/tencent/mm/ui/tools/jsapi/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/jsapi/i;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mm/ui/tools/jsapi/i;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/i;->hpc:[Lcom/tencent/mm/ui/tools/jsapi/i;

    invoke-virtual {v0}, [Lcom/tencent/mm/ui/tools/jsapi/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/ui/tools/jsapi/i;

    return-object v0
.end method


# virtual methods
.method public final Hr()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/tencent/mm/ui/tools/jsapi/i;->code:I

    return v0
.end method
