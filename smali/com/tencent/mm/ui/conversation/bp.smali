.class final Lcom/tencent/mm/ui/conversation/bp;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic gZI:Lcom/tencent/mm/ui/conversation/MainUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/MainUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1935
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/bp;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1939
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/bp;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->x(Lcom/tencent/mm/ui/conversation/MainUI;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1940
    return v1
.end method
