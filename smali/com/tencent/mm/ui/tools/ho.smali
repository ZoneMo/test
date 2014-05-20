.class final Lcom/tencent/mm/ui/tools/ho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/tools/ib;


# instance fields
.field private final hnA:Ljava/lang/String;

.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 1
    .parameter

    .prologue
    .line 3605
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/ho;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3607
    const-string v0, "weixin://webview/copy/"

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ho;->hnA:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3605
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/ho;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    return-void
.end method


# virtual methods
.method public final aOe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3611
    const-string v0, "weixin://webview/copy/"

    return-object v0
.end method

.method public final xL(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 3616
    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3617
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ho;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v1, v0, v0}, Lcom/tencent/mm/pluginsdk/e/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 3618
    const/4 v0, 0x1

    return v0
.end method
