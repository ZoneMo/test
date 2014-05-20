.class final Lcom/tencent/mm/plugin/ext/provider/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/tencent/mm/plugin/ext/provider/ExtControlProviderSNS;->vc()Z

    .line 59
    const/4 v0, 0x0

    return v0
.end method
