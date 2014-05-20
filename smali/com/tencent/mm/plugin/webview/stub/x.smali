.class final Lcom/tencent/mm/plugin/webview/stub/x;
.super Lcom/tencent/mm/sdk/platformtools/ce;
.source "SourceFile"


# instance fields
.field final synthetic feK:Lcom/tencent/mm/plugin/webview/stub/m;

.field final synthetic feL:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/webview/stub/m;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lcom/tencent/mm/plugin/webview/stub/x;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iput p2, p0, Lcom/tencent/mm/plugin/webview/stub/x;->feL:I

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ce;-><init>(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 712
    invoke-static {}, Lcom/tencent/mm/ag/a;->Dl()Lcom/tencent/mm/ag/d;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/webview/stub/x;->feL:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ag/d;->et(I)Lcom/tencent/mm/ag/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
