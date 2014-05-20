.class final Lcom/tencent/mm/plugin/webview/stub/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic feK:Lcom/tencent/mm/plugin/webview/stub/m;

.field final synthetic feO:Lcom/tencent/mm/ag/c;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/webview/stub/m;Lcom/tencent/mm/ag/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/tencent/mm/plugin/webview/stub/z;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iput-object p2, p0, Lcom/tencent/mm/plugin/webview/stub/z;->feO:Lcom/tencent/mm/ag/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 735
    invoke-static {}, Lcom/tencent/mm/ag/a;->Dl()Lcom/tencent/mm/ag/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/webview/stub/z;->feO:Lcom/tencent/mm/ag/c;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ag/d;->a(Lcom/tencent/mm/sdk/e/ad;)Z

    .line 736
    return-void
.end method
