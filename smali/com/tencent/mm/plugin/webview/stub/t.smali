.class final Lcom/tencent/mm/plugin/webview/stub/t;
.super Lcom/tencent/mm/sdk/platformtools/ce;
.source "SourceFile"


# instance fields
.field final synthetic feK:Lcom/tencent/mm/plugin/webview/stub/m;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/webview/stub/m;)V
    .locals 3
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/tencent/mm/plugin/webview/stub/t;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ce;-><init>(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 499
    invoke-static {}, Lcom/tencent/mm/ag/a;->Dj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
