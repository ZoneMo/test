.class final Lcom/tencent/mm/ui/conversation/bw;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic gZI:Lcom/tencent/mm/ui/conversation/MainUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/MainUI;)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/bw;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 501
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 503
    return-void
.end method
