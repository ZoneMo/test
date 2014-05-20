.class final Lcom/tencent/mm/ui/chatting/jb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/bindqq/o;


# instance fields
.field final synthetic gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 4580
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/jb;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aIB()V
    .locals 0

    .prologue
    .line 4589
    return-void
.end method

.method public final j(IILjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4584
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/jb;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->i(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method
