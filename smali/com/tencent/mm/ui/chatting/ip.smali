.class final Lcom/tencent/mm/ui/chatting/ip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gQf:Lcom/tencent/mm/ui/chatting/io;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/io;)V
    .locals 0
    .parameter

    .prologue
    .line 3806
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ip;->gQf:Lcom/tencent/mm/ui/chatting/io;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 3810
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->release()V

    .line 3811
    return-void
.end method
