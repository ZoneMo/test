.class final Lcom/tencent/mm/ui/tools/hz;
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
    .line 3366
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/hz;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3366
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/hz;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    return-void
.end method


# virtual methods
.method public final aOe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3372
    const-string v0, "weixin://recommend_update/"

    return-object v0
.end method

.method public final xL(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 3377
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/hz;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->d(Lcom/tencent/mm/ui/tools/WebViewUI;I)V

    .line 3378
    const/4 v0, 0x1

    return v0
.end method
