.class final Lcom/tencent/mm/ui/chatting/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gMs:Lcom/tencent/mm/ui/chatting/bv;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/bz;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bz;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->k(Lcom/tencent/mm/ui/chatting/bv;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bz;->gMs:Lcom/tencent/mm/ui/chatting/bv;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bv;->k(Lcom/tencent/mm/ui/chatting/bv;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 294
    :cond_0
    return-void
.end method
