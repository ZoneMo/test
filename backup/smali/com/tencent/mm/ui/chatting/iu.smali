.class final Lcom/tencent/mm/ui/chatting/iu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 4130
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/iu;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 4134
    new-instance v0, Lcom/tencent/mm/c/a/hb;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/hb;-><init>()V

    .line 4135
    iget-object v1, v0, Lcom/tencent/mm/c/a/hb;->bQX:Lcom/tencent/mm/c/a/hc;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tencent/mm/c/a/hc;->bQZ:Z

    .line 4136
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 4137
    return-void
.end method
