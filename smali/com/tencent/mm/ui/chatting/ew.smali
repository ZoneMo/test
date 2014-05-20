.class final Lcom/tencent/mm/ui/chatting/ew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gNZ:Lcom/tencent/mm/ui/chatting/es;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/es;)V
    .locals 0
    .parameter

    .prologue
    .line 952
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ew;->gNZ:Lcom/tencent/mm/ui/chatting/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ew;->gNZ:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->notifyDataSetChanged()V

    .line 957
    return-void
.end method
