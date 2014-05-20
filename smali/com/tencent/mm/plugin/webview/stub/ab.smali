.class final Lcom/tencent/mm/plugin/webview/stub/ab;
.super Lcom/tencent/mm/sdk/platformtools/ce;
.source "SourceFile"


# instance fields
.field final synthetic ckt:Ljava/lang/String;

.field final synthetic feK:Lcom/tencent/mm/plugin/webview/stub/m;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/webview/stub/m;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/tencent/mm/plugin/webview/stub/ab;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iput-object p3, p0, Lcom/tencent/mm/plugin/webview/stub/ab;->ckt:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/mm/sdk/platformtools/ce;-><init>(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/ab;->ckt:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cw(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
