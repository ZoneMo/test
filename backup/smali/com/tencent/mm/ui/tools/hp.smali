.class final Lcom/tencent/mm/ui/tools/hp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/tools/ib;


# instance fields
.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 3326
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/hp;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3326
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/hp;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    return-void
.end method


# virtual methods
.method public final aOe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3332
    const-string v0, "weixin://critical_update/"

    return-object v0
.end method

.method public final xL(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 3337
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/hp;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->d(Lcom/tencent/mm/ui/tools/WebViewUI;I)V

    .line 3338
    return v1
.end method
