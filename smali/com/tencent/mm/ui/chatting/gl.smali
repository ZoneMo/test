.class final Lcom/tencent/mm/ui/chatting/gl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gPI:Lcom/tencent/mm/ui/chatting/gk;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/gk;)V
    .locals 0
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/gl;->gPI:Lcom/tencent/mm/ui/chatting/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/gl;->gPI:Lcom/tencent/mm/ui/chatting/gk;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/gk;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJI()V

    .line 490
    return-void
.end method
