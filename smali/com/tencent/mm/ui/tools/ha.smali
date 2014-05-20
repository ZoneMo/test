.class final Lcom/tencent/mm/ui/tools/ha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 2278
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/ha;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 2

    .prologue
    .line 2282
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "delay timer expired"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    const-string v0, "MicroMsg.WebViewUI"

    const-string v1, "edw, delay timer onTimerExpired"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ha;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->A(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    .line 2287
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ha;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->aNZ()V

    .line 2288
    const/4 v0, 0x0

    return v0
.end method
