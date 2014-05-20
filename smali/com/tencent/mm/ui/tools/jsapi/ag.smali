.class final synthetic Lcom/tencent/mm/ui/tools/jsapi/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic hpJ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1555
    invoke-static {}, Lcom/tencent/mm/ui/tools/jsapi/i;->values()[Lcom/tencent/mm/ui/tools/jsapi/i;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tencent/mm/ui/tools/jsapi/ag;->hpJ:[I

    :try_start_0
    sget-object v0, Lcom/tencent/mm/ui/tools/jsapi/ag;->hpJ:[I

    sget-object v1, Lcom/tencent/mm/ui/tools/jsapi/i;->hoZ:Lcom/tencent/mm/ui/tools/jsapi/i;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/jsapi/i;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
