.class final Lcom/tencent/mm/ui/tools/gf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hnw:Lcom/tencent/mm/plugin/webview/stub/d;

.field final synthetic hnx:Lcom/tencent/mm/ui/tools/ge;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/ge;Lcom/tencent/mm/plugin/webview/stub/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/gf;->hnx:Lcom/tencent/mm/ui/tools/ge;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/gf;->hnw:Lcom/tencent/mm/plugin/webview/stub/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gf;->hnx:Lcom/tencent/mm/ui/tools/ge;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gf;->hnw:Lcom/tencent/mm/plugin/webview/stub/d;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/plugin/webview/stub/d;)V

    .line 262
    return-void
.end method
